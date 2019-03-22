<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>华为商城</title>
    <link rel="stylesheet" href="../css/userManager-css/shoppingCar.css">
    <script src="../js/jquery-1.8.3.js"></script>
</head>

<body>
<div id="app">
    <div class="sc">
        <div class="shortcut">
            <div class="layout">
                <div class="s-sub">
                    <ul>
                        <li><a href="<%=path%>/huawei">首页</a></li>
                        <li><a href="#" target="_blank">商城官网1</a></li>
                        <li><a href="#" target="_blank">商城官网2</a></li>
                        <li><a href="#" target="_blank">企业购</a></li>
                        <li class="s-hwep hide" id="li-enterprise-preferential"></li>
                        <li><a href="#">Select Region</a></li>
                    </ul>
                </div>

                <div class="s-main s-main-no-minicart">
                    <ul>
                        <li>
                            <div class="header-toolbar">
                                <div class="s-dropdown">
                                    <div class="h">
                                        <c:if test="${not empty sessionScope.userLogin}" var="user">
                                            <a href="../login1.jsp">${userLogin.screenName}</a>
                                        </c:if>
                                        <c:if test="${!user}">
                                            <a href="../login1.jsp">请登录</a>
                                            <a href="../register.jsp">&nbsp;&nbsp;注册</a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <c:if test="${not empty sessionScope.userLogin}">
                            <li><a href="<%=path%>/userManager/queryOrder?opr=order" timeType="timestamp">我的订单</a></li>
                        </c:if>
                    </ul>
                </div>
            </div> <!----></div>
        <div class="header order-header">
            <div class="layout">
                <div class="left">
                    <div class="logo logo-word">
                        <a href="../index.jsp" title="商城">
                            <img src="../images/userManager-imager/20170703105852645577.png" alt="商城">
                        </a>
                        <span>我的购物车</span>
                    </div>
                </div>
                <div class="right">
                    <div class="progress-area progress-area-3">
                        <div id="progress-cart" class="progress-sc-area">我的购物车</div>
                    </div>
                </div>
            </div>
        </div>
        <!--全选模块-->
        <div class="layout ">
            <div class="hr-20"></div><%--${fn:length(shoppingCarts)}--%>
            <c:if test="${fn:length(shoppingCarts)>0}">
                <div class="sc-list">
                    <div class="sc-pro-title clearfix">
                        <label class="checkbox">
                            <input readonly="readonly" name="checkAll" class="checked">全选
                        </label>
                        <ul class="clearfix">
                            <li>商品</li>
                            <li>单价</li>
                            <li>数量</li>
                            <li>小计</li>
                            <li>操作</li>
                        </ul>
                    </div>
                    <%--购物车脚本--%>
                    <script >
                        $(document).ready(function() {
                            var carId;
                            $("input[readonly='readonly']").click(function () {
                                var $class = $(this).attr("class")
                                var value = $(this).attr("name");
                                if ($class == 'checked') {
                                    if(value == 'checkAll'){
                                        //全选按钮
                                        $(".checked").attr("class","vam");//不全部选中总价格清0
                                        var taltaoManey = $(".sc-total-price").find("span").html();
                                        var fuhao = taltaoManey.substring(0, 7);//截取符号
                                        var maney = fuhao + "0";
                                        $(".sc-total-price").find("span").html(maney);
                                    }else{
                                        //不是全选按钮
                                        //不选这个商品，价格也要减
                                        $("input[name='checkAll']").attr("class","vam");
                                        $(this).attr("class","vam");
                                        var productPrice = $(this).next().val();//获取价格
                                        var number = $(this).next().next().val();//获取数量
                                        var taltaoManey = $(".sc-total-price").find("span").html();
                                        var fuhao = taltaoManey.substring(0, 7);//截取符号
                                        var subtotal = taltaoManey.substring(7, taltaoManey.length);//截取小计
                                        var maney = fuhao + (parseFloat(subtotal) - (productPrice * number));
                                        $(".sc-total-price").find("span").html(maney);
                                        var index=$(".total-choose").find("em").html();
                                        index--;
                                        $(".total-choose").find("em").html(index);
                                    }

                                } else if($class == 'vam') {
                                    if (value == 'checkAll') {
                                        //全选按钮
                                        $(".vam").attr("class","checked");//全部选中总价格累加
                                        price();
                                    } else {

                                        //选中这个商品，价格需要增加
                                        $(this).attr("class", "checked");
                                        /*全选*/
                                        var $radio=document.getElementsByName("radio");
                                        var con=true;
                                        for(var i=0;i<$radio.length;i++){
                                            var $class=$radio[i].getAttribute("class");
                                            if($class=="vam"){
                                                con=false;
                                            }
                                        }
                                        if(con){
                                            $("input[name='checkAll']").attr("class","checked");
                                        }
                                        /*全选*/
                                        var productPrice = $(this).next().val();//获取价格
                                        var number = $(this).next().next().val();//获取数量
                                        var taltaoManey = $(".sc-total-price").find("span").html();//获取总额
                                        var fuhao = taltaoManey.substring(0, 7);//截取符号
                                        var subtotal = taltaoManey.substring(7, taltaoManey.length);//截取总额
                                        var maney = fuhao + (productPrice * number + parseFloat(subtotal));
                                        $(".sc-total-price").find("span").html(maney);
                                        var index = $(".total-choose").find("em").html();
                                        index++;
                                        $(".total-choose").find("em").html(index);
                                    }
                                }
                            });
                            price();
                            function price() {
                                var taotalManey = 0;
                                var productPrice = document.getElementsByName("productPrice");
                                var number = document.getElementsByName("number");
                                var index=0;
                                for (var i = 0; i < productPrice.length; i++) {
                                    var maney = productPrice[i].value;
                                    var num = number[i].value;
                                    taotalManey += maney * num;
                                    index++;
                                }
                                var taltao = $(".sc-total-price").find("span").html();
                                var fuhao = taltao.substring(0, 7);
                                $(".sc-total-price").find("span").html(fuhao + taotalManey);
                                $(".total-choose").find("em").html(index);
                            }
                            /*添加商品数量*/
                            $(".plus").click(function(){
                                var productPrice=$(this).attr("productPrice");
                                var number=$(this).parent().prev().val();
                                if(number == 5){
                                    $(this).attr("class","plus disabled");
                                }else{
                                    number++;
                                    $(this).parent().prev().val(number);
                                    $(this).parents(".sc-pro-area").prev().find("input[name='number']").val(number);
                                    var subtotal=$(this).parent().parent().parent().parent().next().html();
                                    var fuhao = subtotal.substring(0, 7);
                                    var maney=subtotal.substring(7,subtotal.length);
                                    $(this).parent().parent().parent().parent().next().html(fuhao+(parseFloat(maney)+parseFloat(productPrice)));
                                    var $class=$(this).parents(".sc-pro-area").prev().find("input[readonly='readonly']").attr("class");
                                    if($class == 'checked'){
                                        var taltaoManey = $(".sc-total-price").find("span").html();//获取总额
                                        var taltaoPrice = taltaoManey.substring(7, taltaoManey.length);//截取总额
                                        $(".sc-total-price").find("span").html(fuhao+(parseFloat(taltaoPrice)+parseFloat(productPrice)));
                                    }
                                    $(this).next().attr("class","minus");
                                }
                            });
                            /*减少商品数量*/
                            $(".minus").click(function(){
                                var productPrice=$(this).attr("productPrice");
                                var number=$(this).parent().prev().val();
                                if(number == 1){
                                    $(this).attr("class","minus disabled");
                                }else{
                                    number--;
                                    $(this).parent().prev().val(number);
                                    $(this).parents(".sc-pro-area").prev().find("input[name='number']").val(number);
                                    var subtotal=$(this).parent().parent().parent().parent().next().html();
                                    var fuhao = subtotal.substring(0, 7);
                                    var maney=subtotal.substring(7,subtotal.length);
                                    $(this).parent().parent().parent().parent().next().html(fuhao+(parseFloat(maney)-productPrice));
                                    var $class=$(this).parents(".sc-pro-area").prev().find("input[readonly='readonly']").attr("class");
                                    if($class == 'checked') {
                                        var taltaoManey = $(".sc-total-price").find("span").html();//获取总额
                                        var taltaoPrice = taltaoManey.substring(7, taltaoManey.length);//截取总额
                                        $(".sc-total-price").find("span").html(fuhao + (parseFloat(taltaoPrice) - parseFloat(productPrice)));
                                    }
                                    $(this).prev().attr("class","plus");
                                }
                            });
                            /*保存页面数量数据的方法*/
                            function addnumber(){
                                var shoppingCartId=[];
                                var productNumber=[];
                                var number=document.getElementsByName("number");
                                for(var i=0;i<number.length;i++){
                                    shoppingCartId[i]=number[i].getAttribute("cartId");
                                    productNumber[i]=number[i].value;
                                }
                                $.getJSON("/userManager/addNumber",{"id":shoppingCartId.toString(),"number":productNumber.toString()},function(data){
                                    for (var key in data) {
                                        if(key == 'y'){
                                            window.location.href="/userManager/queryAllCart";
                                        }
                                    }
                                });
                            }
                            /*删除事件*/
                            $(".p-del").click(function(){
                                var top=$(this).offset().top;
                                var newTop=parseInt(top)-132;
                                var left=$(this).offset().left;
                                var newLeft=parseInt(left)-160;
                                cartId=$(this).attr("cartId");
                                $("#popup-area").attr("style","position: absolute; top: "+newTop+"px; left: "+newLeft+"px;display: block");
                            });
                            /*删除确认事件*/
                            $(".button-action-yes").click(function(){
                                $.getJSON("/userManager/deleteCart",{"cartId":cartId},function(date){
                                    addnumber();
                                })
                            });
                            /*取消删除事件*/
                            $(".button-action-no").click(function(){
                                $("#popup-area").attr("style","display: none");
                            });
                        })
                    </script>
                    <div class="sc-pro">
                        <c:forEach items="${shoppingCarts}" var="cart">
                            <div>
                            <div class="sc-pro-list clearfix">
                                <label class="checkbox" id="shoppingCart">
                                    <input readonly="readonly" name="radio" class="checked" cartId="${cart.shoppingCartId}" />
                                    <input type="hidden" name="productPrice" value="${cart.productPrice}">
                                    <input type="hidden" name="number" cartId="${cart.shoppingCartId}" value="${cart.productNumber}">
                                </label>
                                <div class="sc-pro-area">
                                    <div class="sc-pro-main clearfix">
                                        <a href="#" target="_blank" class="p-img">
                                            <img src="<%=path%>/hw/${cart.productInfo.logo}">
                                        </a>
                                        <ul>
                                            <li><a href="#" target="_blank" class="p-name">
                                                <!--disabled-->
                                                    ${cart.productInfo.productName}&nbsp;&nbsp;&nbsp;&nbsp;${cart.proVersions.proVersionsName}&nbsp;&nbsp;&nbsp;&nbsp;${cart.productColor.productColorName}</a></li>
                                            <li>
                                                <div class="p-price">
                                                    <span>¥&nbsp;${cart.productPrice}</span>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="p-stock">
                                                    <div class="p-stock-area">
                                                        <input type="number" class="p-stock-text" value="${cart.productNumber}">
                                                        <p class="p-stock-btn">
                                                            <a class="plus" productPrice="${cart.productPrice}">+</a>
                                                            <a class="minus" productPrice="${cart.productPrice}">−</a>
                                                        </p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="p-price-total">¥&nbsp;${cart.productPrice*cart.productNumber}
                                                </li>
                                            <li><a  seed="cart-item-del" class="p-del" cartId="${cart.shoppingCartId}">删除</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>

                </div>
                <div id="total_tool"></div>
                <div class="">
                    <div class="sc-total-tool layout clearfix ">
                        <div class="sc-total-control">
                            <label class="checkbox">
                                <input readonly="readonly" name="checkAll" class="checked">全选
                            </label>
                        </div>
                        <div class="sc-total-btn">
                            <a href="javascript:;">立即结算</a>
                            <script>
                                $(document).ready(function(){
                                    $(".sc-total-btn").click(function(){
                                        var shoppingCartId=[];
                                        var productNumber=[];
                                        var number=document.getElementsByName("number");
                                        var carts=[];
                                        var cart=document.getElementsByClassName("checked");
                                        for(var i=0;i<cart.length;i++){
                                            var name=cart[i].getAttribute("name");
                                            if(name == 'radio'){
                                                carts[i]=cart[i].getAttribute("cartId");
                                            }
                                        }
                                        for(var i=0;i<number.length;i++){
                                            shoppingCartId[i]=number[i].getAttribute("cartId");
                                            productNumber[i]=number[i].value;
                                        }
                                        if(carts.length>0) {
                                            $.getJSON("/userManager/toShoppingCarts", {
                                                "id": shoppingCartId.toString(),
                                                "number": productNumber.toString(),
                                            }, function (data) {
                                                for (var key in data) {
                                                    if (key == 'n'){
                                                        alert("数据异常");
                                                    }else if(key == 'y'){
                                                        window.location.href="/userManager/queryListCart?carts="+carts.toString();
                                                    }
                                                }
                                            });
                                        }
                                    });
                                });
                            </script>
                        </div>
                        <div class="sc-total-price"><p>
                            <label>总计：</label>
                            <span>¥&nbsp;</span>
                            <em><b>不含运费</b></em>
                        </p>
                            <div class="total-choose">已选择
                                <em></em>件商品
                            </div>
                        </div>
                    </div>
                </div>
            </c:if>
                <c:if test="${fn:length(shoppingCarts) eq 0}">
                    <div class="sc-empty">
                        <span class="icon-minicart"></span>
                        <p>您的购物车里什么也没有哦~</p>
                        <a href="/huawei">去逛逛</a>
                    </div>
                </c:if>
        </div>
        <div data-v-584d7e88="">
            <div data-v-584d7e88="" class="slogan-container">
                <div data-v-584d7e88="" class="slogan">
                    <ul data-v-584d7e88="">
                        <li data-v-584d7e88="" class="s1"><a data-v-584d7e88="" target="_blank"
                                                             href="#"
                                                             rel="nofollow"><i data-v-584d7e88=""></i>百强企业&nbsp;品质保证</a>
                        </li>
                        <li data-v-584d7e88="" class="s2"><a data-v-584d7e88="" target="_blank"
                                                             href="#"
                                                             rel="nofollow"><i
                                data-v-584d7e88=""></i>7天退货&nbsp;15天换货</a></li>
                        <li data-v-584d7e88="" class="s3"><a data-v-584d7e88="" target="_blank"
                                                             href="#"
                                                             rel="nofollow"><i data-v-584d7e88=""></i> <span
                                data-v-584d7e88="">48元起免运费</span></a></li>
                        <li data-v-584d7e88="" class="s4"><a data-v-584d7e88="" target="_blank"
                                                             href="#"
                                                             rel="nofollow"><i data-v-584d7e88=""></i>1000家维修网点&nbsp;全国联保</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div data-v-584d7e88="" class="service-container">
                <div data-v-584d7e88="" class="service">
                    <div data-v-584d7e88="" class="service-l fl">
                        <dl data-v-584d7e88="" class="s1">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">购物相关</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">购物指南</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">配送方式</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">支付方式</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">常见问题</a></li>
                                </ol>
                            </dd>
                        </dl>
                        <dl data-v-584d7e88="" class="s2">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">保修与退换货</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">保修政策</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">退换货政策</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">退换货流程</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">保修状态查询</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">配件防伪查询</a></li>
                                </ol>
                            </dd>
                        </dl>
                        <dl data-v-584d7e88="" class="s3">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">维修与技术支持</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">售后网点</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">预约维修</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">手机寄修</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">备件价格查询</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">上门服务</a></li>
                                </ol>
                            </dd>
                        </dl>
                        <dl data-v-584d7e88="" class="s4">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">关于我们</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">公司介绍</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">商城简介</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">线下门店</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" target="_blank"
                                                              href="#"
                                                              rel="nofollow">诚征英才</a></li>
                                </ol>
                            </dd>
                        </dl>

                        <dl data-v-584d7e88="" class="s5">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">关注我们</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88="">
                                        <a data-v-584d7e88="" rel="nofollow" href="#" target="_blank" class="sina">新浪微博</a>
                                    </li>
                                    <li data-v-584d7e88="">
                                        <a data-v-584d7e88="" rel="nofollow" href="#" target="_blank" class="qq">腾讯微博</a>
                                    </li>
                                    <li data-v-584d7e88="">
                                        <a data-v-584d7e88="" href="#" target="_blank" class="huafen">花粉俱乐部</a>
                                    </li>
                                </ol>
                            </dd>
                        </dl>

                        <dl data-v-584d7e88="" id="footerS6Swiper" class="s6 swiper-container">
                            <dt data-v-584d7e88="" class="relative"><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">友情链接</p>
                            <dd data-v-584d7e88="" class="swiper-wrapper service-list clearfix" style="height: 120px; width: 1415.92px;">
                                <ol data-v-584d7e88="" class="swiper-slide swiper-slide-visible swiper-slide-active"
                                    style="width: 157.325px; height: 120px;">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" href="#">商城集团</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" href="#" target="_blank">商城官网1</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="">商城官网2</a></li>
                                    <li data-v-584d7e88=""><a data-v-584d7e88="" textvalue="网站地图">网站地图</a></li>
                                </ol>
                            </dd>
                        </dl>
                    </div>
                    <div data-v-584d7e88="" class="service-r fl">
                        <dl data-v-584d7e88="" class="s7">
                            <dt data-v-584d7e88=""><p data-v-584d7e88="" class="line"></p>
                                <p data-v-584d7e88="" class="title">177-7710-4038</p></dt>
                            <dd data-v-584d7e88="">
                                <ol data-v-584d7e88="">
                                    <li data-v-584d7e88=""><a data-v-584d7e88="">24小时客服热线（不存在的）</a></li>
                                </ol>
                            </dd>
                            <dd data-v-584d7e88="">
                                <a data-v-584d7e88="" rel="nofollow" href="customer_service.jsp" target="_blank" class="service-btn btn-line-primary">
                                    <i data-v-584d7e88=""></i> 在线客服</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div data-v-584d7e88="" class="hungBar"><!---->
                <div data-v-584d7e88="" class="hungBar-content fr relative ">
                    <a data-v-584d7e88="" href="help.jsp" title="帮助中心" target="_blank" class="hungBar-for-help">
                        <i data-v-584d7e88="">帮助中心</i>
                    </a>
                    <a data-v-584d7e88="" href="#" title="意见反馈" class="hungBar-feedback" style="display: block;">
                        <i
                                data-v-584d7e88="">意见反馈</i></a>
                    <a data-v-584d7e88="" href="customer_service.jsp" title="在线客服" target="_blank" class="hungBar-olcs-web" style="display: block;">
                        <i data-v-584d7e88="">在线客服</i></a>
                </div>
            </div>

            <div data-v-584d7e88="" class="footer-container">
                <div data-v-584d7e88="" class="footer">
                    <div data-v-584d7e88="" class="footer-warrant-area clearfix">
                        <p data-v-584d7e88="" class="footer-warrant-logo fl">
                            <a data-v-584d7e88="" href="../index.jsp">
                                <img data-v-584d7e88="" src="../images/userManager-imager/flogo.png"></a></p>
                        <p data-v-584d7e88="" class="fl">
                            <a data-v-584d7e88="" href="#" target="_blank" title="隐私政策" rel="nofollow">隐私政策</a>
                            <a data-v-584d7e88="" href="#" target="_blank" title="服务协议" rel="nofollow"> 服务协议</a>
                            <a data-v-584d7e88="" href="#" target="_blank" title="COOKIES" rel="nofollow">
                                COOKIES</a>
                            Copyright © 2012-2017 阿里巴巴与四个大盗软件技术有限公司 版权所有 保留一切权利<br data-v-584d7e88="">公安备案
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow">湘公网安备32011402010009号</a>
                            <em data-v-584d7e88=""> | </em>
                            <a data-v-584d7e88="" target="_blank" href="#" rel="nofollow">湘ICP备17040376号-6</a>
                            <em data-v-584d7e88=""> | </em> 增值电信业务经营许可证：湘B2-20130048号
                            <em data-v-584d7e88="">| </em><br data-v-584d7e88="">网络文化经营许可证：
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow">湘网文[2015] 1599-026号</a>
                        </p>
                        <p data-v-584d7e88="" class="fr footer-warrant-img">
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow" class="fl">
                                <img data-v-584d7e88="" src="../images/userManager-imager/20180522101715775.jpg" alt="TRUSTe隐私认证" title="TRUSTe隐私认证"></a>
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow" class="fl">
                                <img data-v-584d7e88="" src="../images/userManager-imager/20160226162415360.png" alt="电子营业执照" title="电子营业执照"></a>
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow" class="fl">
                                <img data-v-584d7e88="" src="../images/userManager-imager/20160226162521265.png" alt="可信网站" title="可信网站"></a>
                            <a data-v-584d7e88="" href="#" target="_blank" rel="nofollow" class="fl">
                                <img data-v-584d7e88="" src="../images/userManager-imager/20180626164548324.png" alt="网络文化经营许可证" title="网络文化经营许可证"></a>
                        </p></div>
                </div>
            </div> <!----></div>
        <div data-v-2d1cd6c9="" style="display: none;">
            <div data-v-2d1cd6c9="" class="ol_box_mask"
                 style="visibility: visible; width: 100%; height: 100%; z-index: 500;"></div>
            <div data-v-2d1cd6c9="" class="ol_box_4"
                 style="visibility: visible; position: fixed; top: 50%; margin-top: -250px; left: 50%; margin-left: -350px; z-index: 500; width: 700px;">
                <div data-v-2d1cd6c9="" class="box-ct">
                    <div data-v-2d1cd6c9="" class="box-header"><a data-v-2d1cd6c9="" title="关闭" class="box-close"></a>
                        <!--<span data-v-2d1cd6c9="" class="box-title">- 领取优惠券 -</span>-->
                    </div>
                    <div data-v-2d1cd6c9="" class="box-content">
                        <div data-v-2d1cd6c9="" class="product-roll">
                            <div data-v-2d1cd6c9="" class="product-roll-list">
                                <ul data-v-2d1cd6c9="" class="clearfix"></ul>
                            </div>
                            <p data-v-2d1cd6c9="" class=""><span data-v-2d1cd6c9=""></span> <!----> <!----> <!---->
                                <!----></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div>
</div>
<div id="popup-area" class="popup-area popup-define-area" style="position: absolute; top: 0px; left: 0px;display:none">
    <div class="b"><p>您确认要删除该商品吗？ </p>
        <div class="popup-button-area">
            <a class="button-action-yes">
                <input type="hidden" name="cartId"/>
                <span>是</span>
            </a>
            <a class="button-action-no">
                <span>否</span>
            </a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>
</body>
</html>