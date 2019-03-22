<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% String path=request.getContextPath(); %>
<html>
<head>
    <meta content="text/html; charset=UTF-8">
    <title>确认订单华为商城</title>
    <link rel="stylesheet" href="../css/userManager-css/order1.css">
    <link rel="stylesheet" href="../css/userManager-css/order2.css">
    <script src="../js/jquery-1.8.3.js"></script>
</head>

<body class="wide order">
<div class="top-banner" id="top-banner-block"></div>

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
            <img src="../images/userManager-imager/bg71.png" class="hide">
            <ul>
                <li id="unlogin_status" style="display: none;">
                    <div id="top_unlogin" class="header-toolbar hide">
                        <div class="header-toolbar-item">
                            <div class="i-login">
                                <div class="h">
                                    <div class="">
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
                        </div>
                    </div>
                </li>

                <c:if test="${not empty sessionScope.userLogin}">
                    <li><a href="<%=path%>/userManager/queryOrder?opr=order" timeType="timestamp">我的订单</a></li>
                </c:if>

                <li>
                    <div class="s-dropdown s-dropdown-link">
                        <div class="h">
                            <a class="icon-dropdown">客户服务</a>
                        </div>
                        <div class="b">
                            <div class="dropdown-more">
                                <dl>
                                    <dt><a href="help.jsp" target="_blank">帮助中心</a></dt>
                                    <dt><a href="customer_service.jsp" target="_blank">联系客服</a></dt>
                                </dl>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="s-dropdown">
                        <div class="h">
                            <a href="#" target="_blank" class="icon-dropdown">网站导航</a>
                        </div>
                        <div class="b">
                            <div class="dropdown-navs clearfix">
                                <p><a href="../index.jsp"></a></p>
                                <div class="dropdown-navs-icon"><a href="../index.jsp">商城首页</a></div>
                                <p><br></p>
                                <dl>
                                    <dt>频道</dt>
                                    <dd>
                                        <div class="item"><a href="#" target="_blank">商城专区1</a></div>
                                        <div class="item"><a href="#" target="_blank">商城专区2</a></div>
                                        <div class="item"><a href="#" target="_blank">企业购</a></div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>产品</dt>
                                    <dd>
                                        <div class="item"><a href="#" target="_blank">手机</a></div>
                                        <div class="item"><a href="#" target="_blank">智能家居</a></div>
                                        <div class="item"><a href="#" target="_blank">平板&amp;笔记本</a></div>
                                        <div class="item"><a href="#" target="_blank">通用配件</a></div>
                                        <div class="item"><a href="#" target="_blank">智能穿戴</a></div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>增值服务</dt>
                                    <dd>
                                        <div class="item"><a href="#" target="_blank">以旧换新</a></div>
                                        <div class="item"><a href="#" target="_blank">礼品包装</a></div>
                                        <div class="item"><a href="#" target="_blank">补购保障</a></div>
                                        <div class="item"><a href="#" target="_blank">99元换电池</a></div>
                                    </dd>
                                </dl>
                                <dl>
                                    <dt>会员</dt>
                                    <dd>
                                        <div class="item"><a href="#" target="_blank">会员频道</a></div>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<script type="text/javascript" id="miniCartToken"></script>

<div class="header order-header">
    <div class="layout">
        <div class="left">
            <!-- 2017-06-19-logo-文字-start -->
            <div class="logo logo-word">
                <a href="../index.jsp" title="商城">
                    <img src="../images/userManager-imager/WTDdguIWgNsNWtK0Q1Z3.png" alt="华为商城"></a>
                <span>确认订单</span>
            </div>
        </div>
        <div class="right">
            <div class="progress-area progress-area-3">
                <!--我的购物车 -->
                <div id="progress-cart" class="progress-sc-area hide">我的购物车</div>
                <!--核对订单 -->
                <div id="progress-confirm" class="progress-co-area hide" style="display: block;">填写核对订单信息</div>
                <!--成功提交订单 -->
                <div id="progress-submit" class="progress-sso-area hide">成功提交订单</div>
            </div>
            <!-- </div>
        </div> -->
        </div>
    </div>
</div>
<div class="layout order">
    <!--订单-表单 -->
    <div>
        <!--20170717-全局提示-start -->
        <!--20170717-全局提示-end -->

        <div class="hr-20" id="order-address-hr"></div>

        <!-- 20170717-订单表单-地址-start -->
        <div class="order-detail-area order-address" id="order-address-mod">
            <div class="h">
                收货地址
                <a id="upAddAddressButton" href="javascript:;" class="address-add-btn" style="display: none;">新增收货地址</a>
            </div>
            <div class="order-address-list" id="order-address-list">
                <ul class="clearfix">
                    <c:forEach items="${userAddresses}" var="address">
                        <li id="myAddress-59830668"  index="59830668"
                            <c:if test="${address.isDefault  eq '1'}" var="isDefault">class="myAddress current"</c:if>
                                <c:if test="${!isDefault}">
                                    class="myAddress"
                                </c:if>
                        address="${address.addressId}">
                        <div class="address-supplement hide">
                            <a href="javascript:;" class="address-add-btn">请完善街道信息</a>
                        </div>
                            <c:if test="${address.isDefault  eq '1'}">
                                <span id="defaultAddress-59830668" class="address-status">默认地址</span>
                            </c:if>
                        <div class="address-main">
                            <p class="clearfix">
                                <b id="consignee-name-59830668">${address.consignee}</b>
                                <span id="consignee-tel-59830668">${address.phone}</span>
                            </p>
                            <div class="address-detail" id="address-detail-59830668">
                                ${address.province}&nbsp;${address.city}&nbsp;${address.district}&nbsp;${address.address}
                            </div>
                        </div>
                        <div class="address-sub">
                            <a class="address-edit" id="compile">编辑</a>
                            <a class="address-del" id="delete">删除</a>
                        </div>
                    </li>
                    </c:forEach>
                    <li id="address-empty">
                        <div class="address-empty">
                            <a class="address-add-btn">新增收货地址</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!--20170717-订单表单-地址-end -->
        <div class="hr-10"></div>
        <div class="order-detail-area">
            <!--展示代销商品 start-->
            <c:forEach items="${shoppingCarts}" var="carts">
            <div class="order-detail clearfix">
                <div class="order-list">
                    <div class="order-list-detail">
                        <div class="order-main clearfix ">
                            <a style="cursor:default" ahref="#" class="p-img" target="_blank">
                                <img src="<%=path%>/hw/${carts.productInfo.logo}">
                            </a>
                            <ul class="">
                                <li>
                                    <a style="cursor:default" href="#"
                                       id="3102030002" class="p-name 3102030002001"
                                       title="" target="_blank" seed="item-name">${carts.productInfo.productName}/${carts.proVersions.proVersionsName}（${carts.productColor.productColorName}）</a>
                                </li>
                                <li>x${carts.productNumber}
                                    <input type="hidden" value="${carts.productNumber}" name="productNumber">
                                </li>
                                <li class="p-price">¥&nbsp;${carts.productPrice}
                                    <input type="hidden" value="${carts.productPrice}" name="productPrice">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="order-total">
                    <div class="order-total-price">
                        <ul>
                           <%-- <li><strong>商品总金额：</strong>
                                <span>¥<em id="order-cost-area"></em>
                       </span>
                            </li>
                            <li><strong>运费：</strong>
                                <span>
                               ¥<em id="order-deliveryChargeVMALL_GZGCMY">0.00</em>
                        </span>
                            </li>
                            <li><strong>优惠金额：</strong>
                                <span>
                            -¥<em>0.00</em>
                        </span>
                            </li>--%>
                            <li>
                                <strong>结算金额：</strong>
                                <span><b>¥</b><b id="order-price-VMALL_GZGCMY" ></b></span>
                            </li>
                        </ul>
                    </div>
                </div><!--20170718-订单结算-end-->
            </div>
            </c:forEach>
        </div>
        <script>
            $(document).ready(function() {
                //算出价格
                price();
                function price() {
                    var taotalMoney = 0;
                    var number = document.getElementsByName("productNumber");
                    for (var i = 0; i < number.length; i++) {
                        var $number = $(number[i]);
                        var num = $number.val();
                        var price = $number.parent().next().find("input").val();
                        var total = num * price;
                        taotalMoney += total;
                        $number.parents(".order-list").next().find("#order-price-VMALL_GZGCMY").text(total);
                    }
                    $("#payableTotal").text(taotalMoney);
                    var jifen=($("#jifen").text())/10;
                    if(taotalMoney>jifen){
                        $("#payable").text(taotalMoney-jifen);
                        var canHavePoint=Math.ceil(taotalMoney/10);//每10园是1积分
                        $("#canHavePoint").text(canHavePoint);
                    }else{
                        $("#payable").text(0);
                        var canHavePoint=Math.ceil(taotalMoney/10);//每10园是1积分
                        $("#canHavePoint").text(canHavePoint);
                    }

                }
                $(".myAddress").click(function(){
                    $(this).addClass("current");
                    $(this).siblings().removeClass("current");
                });
            })
        </script>
        <div class="hr-10"></div>
        <div class="order-detail-area clearfix">
            <div class="order-submit">
                <!-- 20170718-订单提交-start -->
                <div class="order-submit-info">
                    <div class="order-submit-price">总额：<b style="font-size: 20px;">¥<span id="payableTotal" style="font-size: 20px;"></span></b></div>
                    <div class="order-submit-price">应付总额：<b>¥<span id="payable"></span></b></div>
                    <div class="order-submit-integral">
                        <span ><em>可用积分：<em id="jifen">${userLogin.userInfo.userPoint}</em></em></span>
                    </div>
                    <div class="order-submit-integral">
                        <span id="isHidePoint"><em>可获得积分：<em id="canHavePoint"></em></em></span>
                    </div>
                </div>

                <div class="clearfix">
                    <a href="javascript:;" id="checkoutSubmit" class="order-submit-btn"
                       seed="checkout-submit"><span>提交订单</span></a>
                </div>
                <script>
                    $(document).ready(function(){
                        $("#checkoutSubmit").click(function(){
                            var addressId=$(".current").attr("address");
                            var taotalMoney=$("#payable").text();
                            if(addressId != null){
                                window.location.href="/userManager/addOrder?addressId="+addressId+"&taotalMoney="+taotalMoney;
                            }else{
                                alert("请选择地址");
                            }
                        });
                    });
                </script>
            </div><!-- 20170718-订单提交-end -->
        </div>
    </div>

    <div class="hr-45"></div>

    <!--口号-20121025 -->
    <div class="slogan-container">
        <div class="slogan">
            <ul>
                <li class="s1"><a target="_blank" href="#"><i></i>百强企业&nbsp;品质保证</a></li>
                <li class="s2"><a target="_blank" href="#"><i></i>7天退货&nbsp;15天换货</a></li>
                <li class="s3"><a target="_blank" href="#"><i></i><span>48元起免运费</span></a></li>
                <li class="s4"><a target="_blank" href="#" rel="nofollow"><i></i>1000家维修网点&nbsp;全国联保</a></li>
            </ul>
        </div>
    </div>
    <!--口号-end -->

    <!-- 2017-02-15-服务-start -->
    <div class="service-container">
        <div class="service">
            <div class="service-l fl">
                <dl class="s1">
                    <dt>
                        <p class="title">购物相关</p>
                    </dt>
                    <dd>
                        <ol>
                            <li><a target="_blank" href="#" rel="nofollow">购物指南</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">配送方式</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">支付方式</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">常见问题</a></li>
                        </ol>
                    </dd>
                </dl>
                <dl class="s2">
                    <dt>
                        <p class="title">保修与退换货</p>
                    </dt>
                    <dd>
                        <ol>
                            <li><a target="_blank" href="#" rel="nofollow">保修政策</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">退换货政策</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">退换货流程</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">保修状态查询</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">配件防伪查询</a></li>
                        </ol>
                    </dd>
                </dl>
                <dl class="s3">
                    <dt>
                        <p class="title">维修与技术支持</p></dt>
                    <dd>
                        <ol>
                            <li><a target="_blank" href="#" rel="nofollow">售后网点</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">预约维修</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">手机寄修</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">备件价格查询</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">上门服务</a></li>
                        </ol>
                    </dd>
                </dl>
                <dl class="s4">
                    <dt>
                        <p class="title">特色服务</p></dt>
                    <dd>
                        <ol>
                            <li><a target="_blank" href="#" rel="nofollow">防伪查询</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">补购保障</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">以旧换新</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">礼品包装</a></li>
                        </ol>
                    </dd>
                </dl>
                <dl class="s5">
                    <dt>
                        <p class="title">关于我们</p></dt>
                    <dd>
                        <ol>
                            <li><a target="_blank" href="#" rel="nofollow">公司介绍</a></li>
                            <li><a target="_blank" href="#">商城简介</a></li>
                            <li><a target="_blank" href="#">线下门店</a></li>
                            <li><a target="_blank" href="#" rel="nofollow">诚征英才</a></li>
                            <li><a href="#" title="意见反馈">意见反馈</a></li>
                        </ol>
                    </dd>
                </dl>

                <dl class="s6" id="serverlink">
                    <dt class="relative">
                        <p class="title">友情链接</p>
                    </dt>
                    <dd class="">
                        <div class="service-list clearfix">
                            <ol>
                                <li><a href="#">商城集团</a></li>
                                <li><a href="#" target="_blank" textvalue="商城官网">商城官网1</a></li>
                                <li><a href="#">商城官网2</a></li>
                                <li><a href="#" target="_blank">网站地图</a><br/></li>
                            </ol>
                        </div>
                        <%--<script>
                            jump_link = function (url) {
                                var win = window.open(url, "_blank");
                                win.opener = null;
                            };
                            if ((typeof  ec.product.productshopName) != 'undefined') {


                                ec.product.getFeature = function (skuId) {
                                    //后台已经带过来的skudetail 则不再调接口获取
                                    if (ec.product.getSkuForFeature(skuId) != undefined || $("#pro-detail-content-" + skuId).length > 0) {
                                        $("#pro-tab-parameter").removeClass("selected");
                                        $("#pro-tab-feature").addClass("selected").show();
                                        $("#pro-detail-contents").show();
                                        $('#pro-detail-content-' + (ec.product.setSkuId || skuId)).show().siblings().hide();
                                        if (playerDetailVideo) {
                                            playerDetailVideo.dispose();
                                        }
                                        ec.product.payVideo();
                                        return;
                                    }
                                    // 请求商品详情
                                    new ec.ajax().get({
                                        url: "/product/querySkuDetailFeature/" + ec.product.getSku() + ".json",
                                        /*data : {
                                             skuId : ec.product.getSku()
                                        },*/
                                        timeout: 10000,
                                        timeoutFunction: function () {
                                            $("#pro-detail-contents > div:first-child").html("正在加载...");
                                        },
                                        successFunction: function (json) {
                                            if (!json.success) {
                                                $("#pro-tab-feature").removeClass("selected").hide();
                                                $("#pro-tab-parameter").addClass("selected");
                                                $("#pro-detail-contents").hide();
                                                return;
                                            }
                                            if (json.length == 0) {
                                                $("#pro-tab-feature").removeClass("selected").hide();
                                                $("#pro-tab-parameter").addClass("selected");
                                                $("#pro-tab-feature").hide();
                                                $("#pro-detail-contents").hide();
                                                return;
                                            }
                                            $("#pro-tab-parameter").removeClass("selected");
                                            $("#pro-tab-feature").addClass("selected");
                                            $("#pro-tab-feature").show();
                                            $("#pro-detail-contents").show();
                                            ec.product.setSkuForFeature(skuId);
                                            var content = [];
                                            content.push('<div id="pro-detail-content-' + json.id + '" class="pro-detail-see">');

                                            content.push('<div id="kindPicture-' + json.id + '">');
                                            content.push(json.detail);
                                            content.push('</div>');

                                            content.push('<div id="detail-content-button-' + json.id + '" class="product-shade hide"><p>');
                                            content.push('<a id="pro-detail-down-btn-' + json.id + '" class="product-detail-btn">');
                                            content.push('查看全部产品详情</a></p></div>');
                                            content.push('<a href="javascript:;" id="pro-detail-up-btn-' + json.id + '" class="product-detail-btnup hide">收起全部产品详情</a>');
                                            content.push('</div>');
                                            var feature = $("#pro-tab-feature-content > div:first-child");
                                            feature.prepend(content.join(''));


                                            //<video id="player-container-id" preload="auto" width="1920" height="1080" playsinline webkit-playinline x5-playinline src=""></video>//处理视频播放
                                            if (playerDetailVideo) {
                                                setTimeout(function () {
                                                    playerDetailVideo.dispose();
                                                }, 300)
                                            }
//          $("#video-box").remove();
                                            ec.product.payVideo();

                                            $('#pro-detail-content-' + (ec.product.setSkuId || skuId)).show().siblings().hide();
                                            var imgHeight = 0;
                                            $('#pro-detail-content-' + (ec.product.setSkuId || skuId) + ' img').each(function (index) {
                                                $(this).load(function () {
                                                    imgHeight = imgHeight + $(this).height();
                                                    if (imgHeight >= 2000) {
                                                        $('#pro-detail-content-' + json.id).height('2000');
                                                        $('#detail-content-button-' + json.id).show();
                                                        $("#pro-detail-down-btn-" + json.id).click(function () {
                                                            $('#pro-detail-content-' + json.id).height($('#kindPicture-' + json.id).height() + $('#pro-detail-up-btn-' + json.id).height() + 40);
                                                            $('#detail-content-button-' + json.id).hide();
                                                            $("#pro-detail-up-btn-" + json.id).css("display", "block");
                                                            upDownButton = "true";
                                                        });

                                                        $("#pro-detail-up-btn-" + json.id).click(function () {
                                                            $('#pro-detail-content-' + json.id).height('2000');
                                                            $('#detail-content-button-' + json.id).show();
                                                            $("#pro-detail-up-btn-" + json.id).css("display", "none");
                                                            upDownButton = "false";
                                                            $("body,html").animate({
                                                                scrollTop: tit1 + 1575
                                                            }, 0);
                                                        });
                                                        return false
                                                    }
                                                });
                                            });
                                            if (imgHeight < 2000) {
                                                $('#detail-content-button-' + json.id).hide();
                                            }
                                        },
                                        errorFunction: function () {
                                            $("#pro-tab-feature").removeClass("selected").hide();
                                            $("#pro-tab-parameter").addClass("selected");
                                            $("#pro-detail-contents").hide();
                                        },
                                        timeoutFunction: function () {
                                            $("#pro-tab-feature").removeClass("selected").hide();
                                            $("#pro-tab-parameter").addClass("selected");
                                            $("#pro-detail-contents").hide();
                                        }
                                    });

                                };
//视频播放器实例
                                var playerDetailVideo;
                                ec.product.payVideo = function () {
//	$("#video-box").remove();
                                    var skuId = ec.product.getSku();
                                    //处理视频播放
                                    var video = $("#pro-detail-content-" + skuId).find(".J_videoTrigger");
                                    $("#player-container-id").remove();
                                    if (video) {
                                        //video标签是否存在
                                        if (!$("#pro-detail-content-" + skuId).find("video") || $("#pro-detail-content-" + skuId).find("video").length == 0) {
                                            var videoUrl = video.attr("data-video");
                                            var videoPic = video.attr("data-video-poster");
                                            if (videoUrl && videoUrl != "") {
                                                video.append("<span class='video-btn'></span>");
                                                var playerContainerId = "player-container-id-" + skuId;
                                                //video.prepend('<video id="' + playerContainerId + '" preload="auto" width="'+ width +'" height="' + height + '" playsinline webkit-playinline x5-playinline src="'+ videoUrl +'"></video>');


                                                video.click(function () {
                                                    videoUrl = $(this).attr("data-video");
                                                    var videoHtml = '<video id="' + playerContainerId + '" preload="auto"  playsinline webkit-playinline x5-playinline src="' + videoUrl + '"></video>';
                                                    var videoBox = new ec.box(videoHtml, {
                                                        boxid: "video-box",
                                                        boxclass: 'ol_box_4 video-detail',
                                                        width: 800,
                                                        height: 450,
                                                        draggable: false,
                                                        showButton: false,
                                                        zIndex: 700,
                                                        onclose: function (dom) {
                                                            playerDetailVideo.dispose();
//	                    	$("#video-box").remove();
                                                        }
                                                    }).open();
                                                    playerDetailVideo = TCPlayer(playerContainerId, {
                                                        autoplay: true
                                                    });
                                                });
                                            }
                                        }
                                    }
                                }
                            }
                            ;
                        </script>
                        <script type="text/javascript">
                            jump_link = function (url) {
                                var win = window.open(url, "_blank");
                                win.opener = null;
                            }
                            $(document).ready(function () {
// 在这里写你的代码...
                                var easebuyurl = window.location.href;
                                if (easebuyurl.indexOf("easebuy") > 0) {
                                    ec.code.addService({
                                        showService: true,
                                        showTools: true,
                                        live800Url4Web: "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af"
                                    });
                                    $("#tools-nav-service-robotim-button").attr("href", "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall商城电脑端&enterurl=" + encodeURIComponent(window.location.href) + "&k=1&remark=").css("display", "block");
                                }
                            });
                        </script>--%>
                    </dd>
                </dl>
            </div>

            <div class="service-r fl">
                <dl class="s7">
                    <dt>
                        <p class="title">177-7710-4038</p></dt>
                    <dd>
                        <ol>
                            <li><a>7x24小时客服热线（不存在的）</a></li>
                        </ol>
                    </dd>
                    <dd>
                        <a id="tools-nav-service-robotim-button" rel="nofollow" class="service-btn btn-line-primary"
                           href="customer_service.jsp" target="_blank">
                            <i class=""></i> 在线客服</a>
                    </dd>
                </dl>
                <div class="service-code clearfix">
                    <h2>关注我们：</h2>
                    <ul class="clearfix">
                        <li class="service-code-wechat">
                            <div class="service-code-img">
                                <img src="../images/userManager-imager/myQR-code.png"></div>
                        </li>
                        <li class="service-code-toutiao">
                            <a target="_blank" href="#"
                               rel="nofollow" style="display:block; width:20px; height:20px;"></a></li>
                        <li class="service-code-sina"><a target="_blank" href="#" rel="nofollow"
                                                         style="display:block; width:20px; height:20px;"></a></li>
                        <li class="service-code-vmall"><a target="_blank" href="#" rel="nofollow"
                                                          style="display:block; width:20px; height:20px;"></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 2017-02-15-底部-start -->
    <div class="footer-container">
        <div class="footer">
            <div class="footer-warrant-area clearfix"><p class="footer-warrant-logo fl">
                <a href="../index.jsp">
                    <img src="../images/userManager-imager/HBHfAUYHLA0u5qMS8Nkr.png" title="vmall.png" style="float:none;"/></a>
            </p>
                <div class="fl">
                    <ul class="footer-warrant-link">
                        <li><a href="#">商城集团</a></li>
                        <li><a href="#">商城官网1</a></li>
                        <li><a href="#">商城官网2</a></li>
                        <li><a href="#">商城应用市场</a></li>
                        <li><a href="#">商城终端云空间</a></li>
                        <li><a href="#">开发者联盟</a></li>
                        <li><a href="#">网站地图</a></li>
                    </ul>
                    <a href="#" target="_blank" title="隐私声明" rel="nofollow">隐私声明</a>
                    <a href="#" target="_blank" title="服务协议" rel="nofollow"> 服务协议</a>
                    <a href="#" target="_blank" title="COOKIES" rel="nofollow"> COOKIES</a>
                    Copyright © 2012-2019 阿里巴巴与四个大盗软件技术有限公司 版权所有 保留一切权利
                    <br/>
                    公安备案
                    <a href="#" target="_blank" rel="nofollow">湘公网安备32011402010009号</a><em> | </em>
                    <a target="_blank" href="#" rel="nofollow">湘ICP备17040376号-6</a>
                    <br/>
                    增值电信业务经营许可证：湘B2-20130048号<em>| </em>
                    <a href="#" target="_blank">网络文化经营许可证：湘网文[2015] 1599-026号</a>
                    <br/>
                </div>
                <p class="fr footer-warrant-img">
                    <a class="fl" href="#" target="_blank" rel="nofollow">
                        <img src="../images/userManager-imager/20180522101715775.jpg" alt="TRUSTe隐私认证" title="TRUSTe隐私认证"/></a>
                    <a class="fl" href="../images/userManager-imager/business-license.jpg" target="_blank" rel="nofollow">
                        <img src="../images/userManager-imager/20160226162415360.png" alt="电子营业执照" title="电子营业执照"/></a>
                    <br/>
                </p>
                <p><br/></p>
            </div>
            <%--<script type="text/javascript">
                $(function () {
                    $("title").html($("title").text());
                });
                ec.code.addAnalytics({dmp: true});
            </script>--%>
        </div>
    </div>
    <!-- 2017-02-15-底部-end -->

    <!--蒙版层-->
    <div class="ol_box_mask" style="visibility: visible;width: 1518px;height: 1655px;z-index: 5000;display: none"></div>
    <!--添加地址提示框-->
    <div id="myAddress-edit-new-box" class="ol_box_4" style="visibility: visible; position: fixed; top: 0px; left: 390.5px; z-index: 5000; width: 800px; height: 430px;display: none">
        <div class="box-ct">
            <div class="box-header">
                <div class="box-tl"></div>
                <div class="box-tc">
                    <div class="box-tc1"></div>
                    <div class="box-tc2">
                        <a href="javascript:;" title="关闭" class="box-close"></a><span class="box-title">修改地址</span></div>
                </div>
                <div class="box-tr"></div>
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;background:#fff;">
                <tbody>
                <tr>
                    <td class="box-cl"></td>
                    <td class="box-cc">
                        <div class="box-content" style="height: auto;">
                            <div id="order-address-edit-area">
                                <form id="myAddress-form" action="" autocomplete="off" method="post" onsubmit="return false;">
                                    <div class="form-edit-panels">
                                        <div class="form-edit-area">
                                            <div class="form-edit-table form-edit-table-address">
                                                <table cellspacing="0" cellpadding="0" border="0">
                                                    <tbody>
                                                    <tr>
                                                        <th><span class="required">*</span>
                                                            <label>收货人：</label>
                                                        </th>
                                                        <td>
                                                            <input type="text" class="text vam span-574" name="consignee" value="">
                                                            <span class="vam" id="consignee-msg"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >手机号码：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >省：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >市：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >区县：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="vat" rowspan="2"><span
                                                                class="required">*</span><label for="">收货地址：</label>
                                                        </th>
                                                        <td class="relative">
                                                            <label id="myAddress-msg"></label>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr-rel">
                                                        <td><label
                                                                style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);"
                                                                class="textarea span-574" for="input_label_3">如选择不到您的地区，请在此处详细描述</label><textarea
                                                                name="address" class="textarea span-574"
                                                                validator="validator81546657204033" id="input_label_3"
                                                                style="z-index: 1;"></textarea><span class="vat"
                                                                                                     id="address-msg"></span>
                                                        </td>
                                                    </tr>
                                                    </tbody>

                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-button">
                                        <a class="box-cancel" id="modifyCancel"><span>取消</span></a>
                                        <a class="box-ok" id="modifySave"><span>保存并使用</span></a>
                                    </div>
                                    <div class="box-form-tips"><span class=""></span></div>
                                </form>
                            </div>
                        </div>
                    </td>
                    <td class="box-cr"></td>
                </tr>
                </tbody>
            </table>
            <div class="box-bottom" style="">
                <div class="box-bl"></div>
                <div class="box-bc"></div>
                <div class="box-br"></div>
            </div>
        </div>
    </div>
    <!--添加地址弹框-->
    <div id="myAddress-add-new-box" class="ol_box_4" style="visibility: visible; position: fixed; top: 0px; left: 333px; z-index: 5000; width: 800px; height: 368px;display: none">
        <div class="box-ct">
            <div class="box-header">
                <div class="box-tl"></div>
                <div class="box-tc">
                    <div class="box-tc1"></div>
                    <div class="box-tc2"><a href="javascript:;" onclick="return false;" title="关闭"
                                            class="box-close"></a><span class="box-title">添加地址</span></div>
                </div>
                <div class="box-tr"></div>
            </div>
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;background:#fff;">
                <tbody>
                <tr>
                    <td class="box-cl"></td>
                    <td class="box-cc">
                        <div class="box-content" style="height: auto;">
                            <div id="order-address-add-area">
                                <form id="myAddress-form" action="" autocomplete="off" method="post"
                                      onsubmit="return false;" data-type="add">
                                    <div class="form-edit-panels">
                                        <div class="form-edit-area">
                                            <div class="form-edit-table form-edit-table-address">
                                                <table cellspacing="0" cellpadding="0" border="0">
                                                    <tbody>
                                                    <tr>
                                                        <th><span class="required">*</span>
                                                            <label>收货人：</label>
                                                        </th>
                                                        <td>
                                                            <input type="text" class="text vam span-574" name="consignee" value="">
                                                            <span class="vam" id="consignee-msg"></span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >手机号码：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >省：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >市：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th>
                                                            <span class="required">*</span><label >区县：</label>
                                                        </th>
                                                        <td>
                                                            <div class="vam inline-block">
                                                                <label style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);" for="input_label_5"></label>
                                                                <input type="text" maxlength="20" class="text  span-229 ime-disabled" name="mobile" id="input_label_5" style="z-index: 1;"></div>
                                                            <div><span class="vam" id="phone-msg"></span></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="vat" rowspan="2"><span
                                                                class="required">*</span><label for="">收货地址：</label>
                                                        </th>
                                                        <td class="relative">
                                                            <label id="myAddress-msg"></label>
                                                        </td>
                                                    </tr>
                                                    <tr class="tr-rel">
                                                        <td><label
                                                                style="display: block; position: absolute; cursor: text; float: left; z-index: 2; color: rgb(153, 153, 153);"
                                                                class="textarea span-574" for="input_label_3">如选择不到您的地区，请在此处详细描述</label><textarea
                                                                name="address" class="textarea span-574"
                                                                validator="validator81546657204033" id="input_label_3"
                                                                style="z-index: 1;"></textarea><span class="vat"
                                                                                                     id="address-msg"></span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-button">
                                        <a class="box-cancel" id="addCancel"><span>取消</span></a>
                                        <a class="box-ok" id="addSave"><span>保存并使用</span></a>
                                    </div>
                                    <div class="box-form-tips"><span class=""></span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </td>
                    <td class="box-cr"></td>
                </tr>
                </tbody>
            </table>
            <div class="box-bottom" style="">
                <div class="box-bl"></div>
                <div class="box-bc"></div>
                <div class="box-br"></div>
            </div>
        </div>
    </div>
    <!--删除地址栏提示-->
    <div id="ec_ui_confirm" class="popup-area popup-define-area hide" style="top: 70px; left: 200px; position: absolute; display: none; z-index: 5000;">
        <div class="b">
            <p id="ec_ui_confirm_msg">您确认要删除该地址吗？</p>
            <div class="popup-button-area">
                <a id="ec_ui_confirm_yes" class="button-action-yes">
                    <span>是</span>
                </a>
                <a id="ec_ui_confirm_no"  class="button-action-no">
                    <span>否</span>
                </a>
            </div>
        </div>
        <div class="f"><s class="icon-arrow-down"></s></div>
    </div>
    <script>
        $(document).ready(function(){
            /*删除事件*/
            $("#delete").click(function(){
                $("#ec_ui_confirm").fadeIn();
                $(".ol_box_mask").fadeIn();
            });
            $("#ec_ui_confirm_no").click(function () {
                $("#ec_ui_confirm").fadeOut();
                $(".ol_box_mask").fadeOut();
            });

            /*添加地址事件*/
            $(".address-add-btn").click(function(){
                $("#myAddress-add-new-box").fadeIn();
                $(".ol_box_mask").fadeIn();
            });
            $("#addSave").click(function(){
                $("#myAddress-add-new-box").fadeOut();
                $(".ol_box_mask").fadeOut();
            });
            $("#addCancel").click(function(){
                $("#myAddress-add-new-box").fadeOut();
                $(".ol_box_mask").fadeOut();
            });
            /*修改地址事件*/
            $("#compile").click(function(){
                $("#myAddress-edit-new-box").fadeIn();
                $(".ol_box_mask").fadeIn();
            });
            //弹出：确认按钮
            $("#modifySave").click(function(){
                $("#myAddress-edit-new-box").fadeOut();
                $(".ol_box_mask").fadeOut();
            });
            $("#modifyCancel").click(function(){
                $("#myAddress-edit-new-box").fadeOut();
                $(".ol_box_mask").fadeOut();
            });
        });
    </script>
</div>
</body>
</html>