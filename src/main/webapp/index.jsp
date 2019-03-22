<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta content="text/html; charset=utf-8"/>
    <script>
        var domainYY = '//yy.vmall.com';
        var domainRush = '//buy.vmall.com';
        var domainEdit = 'https://customization.vmall.com';
        var domainMain = 'https://www.vmall.com';
        var domainWap = 'https://m.vmall.com';
        var domainCart = '//cart.vmall.com';
        var domainRemark = '//remark.vmall.com';
        var domainRms = 'https://rms.vmall.com';
        var domainShoppingConfig = '//addr.vmall.com';
        var imagePath = 'https://res.vmallres.com/20181222/images';
        var domainAccount = '//www.vmall.com';
        var isUseAccount = 'false';
        var upBindPhoneAddr = 'https://hwid1.vmall.com/oauth2/userCenter/bindAccount/bindMobileAccount_1.jsp?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
        var dominWapRecycle = 'https://coop.aihuishou.com/huawei?app=false';
        var domainCds = 'https://cds.vmall.com';
        var domainIps = 'https://cashier.vmall.com/cashier/voucher';
        var scriptPath = 'http://localhost:8080/js';
        var domainAms = 'https://act.vmall.com';
        var domainUc = 'https://member.vmall.com';
        var openApiDomain = 'https://openapi.vmall.com';
        var addressFrontRegex = '[A-Za-z0-9０-９ａ-ｚＡ-Ｚ一-龥.?!,。？！，、；：＇＂（）［］｛｝;:&#039;&#034;()\\[\\]{}──·····．《》〈〉＜＞.《》〈〉&lt;&gt;·—＿＿＿＿＊____*□=／\/▲●～~……→＠＃@#￥％＆＊%&amp;*\\\\——－＝＼　 -]{1,}';
        var easeBuyDomain = 'https://easy.vmall.com';
        var scriptPaths = 'https://res10.vmallres.com/20181222/js';
        var dapDomain = 'https://dap.vmall.com';
        var pmsHttpDomain = '//product.vmall.com/';
    </script>
    <script>
        (function () {
            try {
                cookieGet = function (a) {
                    var f = null;
                    if (document.cookie && document.cookie != "") {
                        var d = document.cookie.split(";");
                        for (var c = 0; c < d.length; c++) {
                            var b = (d[c] || "").replace(/^(\s|\u00A0)+|(\s|\u00A0)+$/g, "");
                            if (b.substring(0, a.length + 1) == (a + "=")) {
                                var e = function (i) {
                                    i = i.replace(/\+/g, " ");
                                    var h = '()<>@,;:\\"/[]?={}';
                                    for (var g = 0; g < h.length; g++) {
                                        if (i.indexOf(h.charAt(g)) != -1) {
                                            if (i.startWith('"')) {
                                                i = i.substring(1)
                                            }
                                            if (i.endWith('"')) {
                                                i = i.substring(0, i.length - 1)
                                            }
                                            break
                                        }
                                    }
                                    return decodeURIComponent(i)
                                };
                                f = e(b.substring(a.length + 1));
                                break
                            }
                        }
                    }
                    return f
                };
                var uri = location.href;
                var prodReg = /\/\d+\.html/;
                var isProDetail = prodReg.test(uri);
                var isHonor = uri.indexOf(".com/honor") > 0;
                var isHuawei = uri.indexOf(".com/huawei") > 0;
                var isRecyle = uri.indexOf(".com/recycle") > 0;
                var isNotice = uri.indexOf(".com/notice") > 0;
                var isList = uri.indexOf(".com/list") > 0;
                if (uri == domainMain || uri == (domainMain + "/index.html")
                    || uri == (domainMain + "/") || isProDetail || isHonor || isHuawei || isRecyle || isNotice || isList) {
                    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i
                        .test(navigator.userAgent)) {
                        var redirectWap = cookieGet("redirectWap");
                        if (!redirectWap == "1" && !isProDetail) {
                            if (isHonor) {
                                window.location.href = domainWap + "/honor";
                            } else if (isHuawei) {
                                window.location.href = domainWap + "/huawei";
                            } else if (isRecyle) {
                                window.location.href = dominWapRecycle;
                            } else if (isNotice) {
                                var wapUri = domainWap
                                    + uri.substring(uri.indexOf("/notice"));
                                window.location.href = wapUri;
                            } else if (isList) {
                                var wapUri = domainWap + "/category/detail"
                                    + uri.substring(uri.indexOf("/list") + 5)
                                    + uri.substring(uri.indexOf("/list") + 5);
                                window.location.href = wapUri;
                            } else {
                                window.location.href = domainWap;
                            }
                        } else if (!redirectWap == "1" && isProDetail) {
                            var wapUri = domainWap + '/product/' + uri.match(/\/(\d+)\.html/)[1] + '.html';
                            window.location.href = wapUri;
                        }
                    }
                }
            } catch (err) {
            }
        })();
    </script>

    <title>商城首页</title>

    <link href="css/userManager-css/ec.core.base.min.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/index.min.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/index1.css" rel="stylesheet" type="text/css">

    <script src="js/public-reception/index-swiper.min.js" namespace="ec"></script>
</head>

<body class="wide">
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

        <div class="s-main ">
            <img src="images/userManager-imager/bg71.png" class="hide">
            <ul>
                <li id="unlogin_status">
                    <div id="top_unlogin" class="header-toolbar">
                        <!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
                        <div class="header-toolbar-item">
                            <div class="i-login">
                                <div class="h">
                                    <div class="">
                                        <c:if test="${not empty sessionScope.userLogin}" var="user">
                                            <a href="<%=path%>/userManager/details">${userLogin.screenName}</a>
                                        </c:if>
                                        <c:if test="${!user}">
                                            <a href="login1.jsp">请登录</a>
                                            <a href="register.jsp">&nbsp;&nbsp;注册</a>
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
                                    <dt><a href="userManager/help.jsp" target="_blank">帮助中心</a></dt>
                                    <dt><a href="userManager/customer_service.jsp" target="_blank">联系客服</a></dt>
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
                                <style> .shortcut .dropdown-navs .dropdown-navs-icon:hover {
                                    color: #cb242b;
                                }</style>
                                <p><a href="index.jsp"></a></p>
                                <div class="dropdown-navs-icon">
                                    <a href="index.jsp">商城首页</a></div>
                                <p><br/></p>
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

                <li>
                    <div class="s-dropdown s-dropdown-minicart">
                        <div class="h h-wide" id="header-toolbar-minicart">
                            <c:if test="${not empty sessionScope.userLogin}" var="user">
                                <a href="/userManager/queryAllCart" class="icon-minicart">
                                    <span>购物车(<span id="header-cart-total">${fn:length(shoppingCarts)}</span>)</span>
                                </a>
                            </c:if>
                            <c:if test="${!user}">
                                <a href="/login1.jsp" class="icon-minicart">
                                    <span>购物车(<span id="header-cart-total">${fn:length(shoppingCarts)}</span>)</span>
                                </a>
                            </c:if>
                        </div>
                        <div class="b" id="header-toolbar-minicart-content">
                            <!-- 2017-06-19-迷你购物车-start -->
                            <%--购物车的脚本--%>
                            <script >
                                $(document).ready(function() {
                                    $("i[name='shoppingCat']").click(function () {
                                        var lin = $(this).attr("class")
                                        if (lin == 'icon-choose') {
                                            //不选这个商品，价格也要减
                                            $(this).attr("class", "icon-choose-normal");
                                            var productPrice = $(this).next().val();//获取价格
                                            var number = $(this).next().next().val();//获取数量
                                            var taltaoManey = $("#micro-cart-totalPrice").html();
                                            var fuhao = taltaoManey.substring(0, 7);//截取符号
                                            var subtotal = taltaoManey.substring(7, taltaoManey.length);//截取小计
                                            var maney = fuhao + (parseFloat(subtotal) - (productPrice * number));
                                            $("#micro-cart-totalPrice").html(maney);
                                        } else {
                                            //选中这个商品，价格需要增加
                                            $(this).attr("class", "icon-choose");
                                            var productPrice = $(this).next().val();//获取价格
                                            var number = $(this).next().next().val();//获取数量
                                            var taltaoManey = $("#micro-cart-totalPrice").html();
                                            var fuhao = taltaoManey.substring(0, 7);//截取符号
                                            var subtotal = taltaoManey.substring(7, taltaoManey.length);//截取小计
                                            var maney = fuhao + (productPrice * number + parseFloat(subtotal));
                                            $("#micro-cart-totalPrice").html(maney);
                                        }
                                    });
                                    $(".button-minicart").click(function(){
                                        var shoppingCarts=[];
                                        var shoppingCartIds=document.getElementsByClassName("icon-choose");
                                        for(var i=0;i<shoppingCartIds.length;i++){
                                            var shoppingCartId=shoppingCartIds[i].getAttribute("shoppingCartId");
                                            shoppingCarts[i]=shoppingCartId;
                                        }
                                        if(shoppingCarts.length == 0){
                                            alert("请选择商品");
                                        }else{
                                            window.location.href="/userManager/queryListCart?carts="+shoppingCarts.toString();
                                        }
                                    });
                                    mmpriceyyyy();
                                    function mmpriceyyyy() {
                                        var taotalManey = 0;
                                        var productPrice = document.getElementsByName("productPrice");
                                        var number = document.getElementsByName("number");
                                        for (var i = 0; i < productPrice.length; i++) {
                                            var maney = productPrice[i].value;
                                            var num = number[i].value;
                                            taotalManey += maney * num;
                                        }
                                        var taltao = $("#micro-cart-totalPrice").text();
                                        var fuhao = taltao.substring(0, 7);
                                        $("#micro-cart-totalPrice").text(fuhao + taotalManey);
                                    }
                                })
                            </script>
                            <div class="dropdown-minicart">
                                <%--去数据库查询所有的订单，没查询到订单就显示购物车--%>
                                <c:if test="${fn:length(shoppingCarts) == 0}" var="cart">
                                    <div class="minicart-pro-empty minicart-pro-empty-index" id="minicart-pro-empty">
                                        <p><span class="icon-minicart"></span></p>
                                        <p id="cartInfo">您的购物车是空的，赶紧选购吧~</p>
                                    </div>
                                </c:if>
                                <%--有查到购物车有商品就显示商品--%>
                                <c:if test="${!cart}">

                                    <div class="minicart-pro-list minicart-pro-list-scroll hide" id="minicart-pro-list-block" style="display: block">
                                        <ul class="minicart-pro-list" id="minicart-goods-list">
                                            <c:forEach items="${shoppingCarts}" var="cart">
                                                <li class="minicart-pro-item ">
                                                    <div class="pro-info clearfix">
                                                        <div class="p-choose">
                                                            <i class="icon-choose" name="shoppingCat" shoppingCartId="${cart.shoppingCartId}"  ></i>
                                                            <input type="hidden" name="productPrice" value="${cart.productPrice}">
                                                            <input type="hidden" name="number" value="${cart.productNumber}">
                                                        </div>
                                                        <div class="p-img"><a href="">
                                                            <img src="<%=path%>/hw/${cart.productInfo.logo}"
                                                                 alt=""> </a>
                                                        </div>
                                                        <div class="p-name">
                                                            <a href="" title="">${cart.productInfo.productName}&nbsp;&nbsp;&nbsp;&nbsp;${cart.proVersions.proVersionsName}&nbsp;&nbsp;&nbsp;&nbsp;${cart.productColor.productColorName}</a>
                                                        </div>
                                                        <div class="p-dec"><span
                                                                class="p-slogan"></span>
                                                        </div>
                                                        <div class="p-status">
                                                            <input type="checkbox" name="giftId" class="hide" value="3102010000702">
                                                            <div class="p-price"><s></s>&nbsp;&nbsp; <b>¥&nbsp;${cart.productPrice}</b><strong><em>x</em><span>${cart.productNumber}</span></strong>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <div class="minicart-pro-settleup" id="minicart-pro-settleup">
                                            <p>
                                                <span>总计：</span>
                                                <span><b id="micro-cart-totalPrice">&yen;&nbsp;</b></span>
                                            </p>
                                            <a class="button-minicart" id="button-minicart-go2confirm">结算</a>
                                        </div>
                                    </div>
                                    </a>
                                </c:if>
                            </div>
                            <!-- 2017-06-19-迷你购物车-end -->
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- 2017-06-19-捷径栏-end -->

<script type="text/javascript">

    function pushLoginMsg(name, subName) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "subName": subName,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000201", "link", value]);
    }

    function pushLoginMsgInfoPerson(name, subName) {
        ec.account.afterLogin(function () {
        });
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "subName": subName,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000201", "link", value]);
    }

    function pushHeaderMsgPriority(name, url) {
        ec.account.afterLogin(function () {
            window.location.href = "https://www.vmall.com/priority";
        });
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1",
                }
        };
        ec.account.dapPushMsg("300000101", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000101", "link", value]);
    }

    function pushHeaderMsg(name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1",
                }
        };
        ec.account.dapPushMsg("300000101", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000101", "link", value]);
    }

    $('.shortcut .s-main .s-dropdown').each(function () {
        var catname = $(this).find('.icon-dropdown').text();
        var mdap = function (name, url, category) {
            var value = {
                "UID": ec.util.cookie.get("uid"),
                "TID": getPtid(),
                "TIME": getTime(),
                "CONTENT": {
                    "name": name,
                    "URL": url,
                    "click": "1",
                    "category": category
                }
            };
            ec.account.dapPushMsg("300000101", value, "click");
            ec.code.addAnalytics({
                hicloud: true
            });
            _paq.push(["trackLink", "300000101", "link", value]);
        };
        if ('客户服务' === catname) {
            $(this).find('dt a').bind('click', function () {
                mdap($(this).text(), $(this).attr('href'), catname);
            });
        }
        if ('网站导航' === catname) {
            $(this).find('dd a').bind('click', function () {
                mdap($(this).text(), $(this).attr('href'), catname);
            });
        }
    });

    checkIEVersion();
    ec.mediaPath = "https://res.vmallres.com/pimages/";
    //document.write('<script src="/account/status?'+(new Date()).getTime()+'"></s' + 'cript>');
</script>

<script type="text/javascript" id="miniCartToken"></script>

<!-- 2017-02-15-头部-start -->
<div class="header">
    <div class="layout">
        <div class="left">
            <!-- 2017-02-15-logo-start -->
            <div class="logo">
                <a href="index.jsp" title="Vmall.com - 商城"
                   onclick="pushLogoClickMsg('images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png','#')">
                    <img src="images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png"
                         alt="Vmall.com - 商城"/></a>
            </div>
        </div>

        <div class="right">
            <!-- 2017-02-15-搜索条-焦点为search-form增加className:hover -start -->
            <div class="search-bar relative" id="searchBar-area">
                <div class="search-bar-form" id="search-bar-form">
                    <form method="get" action="/queryLikeproduct">
                        <input type="text" class="text" id="search-kw" name="seek"/>
                        <input type="submit" class="button" value="搜索"/>
                    </form>
                </div>
            </div>
            <!-- 2017-02-15-搜索条-end -->
        </div>
    </div>
</div>
<!-- 2017-02-15-头部-end -->
<div id="searchHotWordList" style="display:none;">[{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:216,&quot;
    inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-2,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,
    &quot;word&quot;:&quot;nova4&quot;},{&quot;id&quot;:226,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-3,&quot;
    saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,&quot;word&quot;:&quot;HUAWEI
    Mate 20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:250,&quot;inSearchBox&quot;:0,&quot;
    isActivityWords&quot;:0,&quot;priority&quot;:-11,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;
    荣耀V20&quot;},{&quot;id&quot;:47,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-12,&quot;saleChannel&quot;:1,&quot;
    tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;荣耀Magic2&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,
    &quot;id&quot;:254,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-25,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;
    type&quot;:1,&quot;word&quot;:&quot;荣耀V20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,&quot;id&quot;:258,&quot;
    inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-26,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:1,&quot;word&quot;
    :&quot;nova4&quot;}]
</div>

<script type="text/javascript">
    ec.load("ec.slider", {
        loadType: "lazy",
        callback: function () {
            $("#ec-erweima").slider({
                width: 91, //必须
                height: 96, //必须
                style: 1, //1显示分页，2只显示左右箭头,3两者都显示
                pause: 120000, //间隔时间
                auto: true
            });
        }
    });

    function searchFunc(word) {
        window.open("/search?keyword=" + encodeURIComponent(word));
    }

    ec.ready(function () {
        ec.search.searchArr = JSON.parse($("#searchHotWordList").text());
        $("#search-kw").val('');
        if (typeof (topSearchKeyword) != "undefined") {
            var keyword = topSearchKeyword;
            if (keyword != null && keyword != "") {
                $("#search-kw").val(ec.freemarkerDecode(keyword));
                $("#search-bar-key").css("display", "none");
            }
        }
        $('#search-history').bind({
            mouseover: function () {
                $("#search-history").show();
            },
            mousedown: function (e) {
                $("#search-kw").blur();
                $("#search-bar-key").hide();
                $("#search-history").show();
                if ($(e.target)[0].nodeName == 'A') {
                    $("#search-kw").val(decodeURIComponent($(e.target).attr('data-value')));
                    //如果是IE浏览器，则需要重新执行跳转
                    if (ec.checkBrowerIE()) {
                        window.location.href = $(e.target).attr('href');
                    }
                } else if ($(e.target)[0].nodeName == 'SPAN') {
                    ec.search.deleteSearchHistory();
                    $("#search-history").hide();
                }
            }

        });

        function fixSearchBarFormStyle() {
            if ($("#search-history").is(':visible') || $(".autocomplete").is(':visible')) {
                $("#search-bar-form").addClass("hover")
            } else {
                $("#search-bar-form").removeClass("hover")
            }
        }

        $("#search-kw").bind({
            focus: function () {
                if ($("#search-kw").val().trim() == '') {
                    $("#search-bar-key").hide();
                    //隐藏搜索历史
                    $("#search-history").hide();
                    //查询用户搜索历史
                    ec.search.querySearchHistory();
                }
                fixSearchBarFormStyle();
            },
            blur: function () {
                if ($("#search-kw").val().trim() == '') {
                    $("#search-bar-key").show();
                } else {
                    $("#search-bar-key").hide();
                }
                //隐藏搜索历史
                $("#search-history").hide();
                fixSearchBarFormStyle();
            },
            keydown: function () {
                //隐藏搜索历史
                if ($("#search-kw").val().trim() == '') {
                    $("#search-history").hide();
                }
                fixSearchBarFormStyle();
            },
            keyup: function () {
                if ($("#search-kw").val().trim() == '') {
                    ec.search.querySearchHistory();
                } else {
                    //隐藏搜索历史
                    $("#search-history").hide();
                }
                fixSearchBarFormStyle();
            }
        });

        ec.ui.hover("#searchBar-area", {captureInput: true});

    });
    ec.code.addService({
        showService: true,
        showTools: true,
        live800Url4Web: "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af"
    });

    function pushIndexLogoClickMsg(adid, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": adid,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010201", "link", value]);
    }

    $(".naver .clearfix").find("li").find("a").click(function () {
        var url = $(this).attr("href");
        var name = $(this).find("span").html();
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010301", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010301", "link", value]);
    });
</script>
<!-- 导航 -->
<div class="naver-main">
    <div class="layout">

        <!-- 20130909-导航-start -->
        <!-- 20130909-导航-end -->
        <!-- 20140823-分类-start -->
        <div class="category category-index" id="category-block">
            <!-- 20170223-分类-start -->
            <div class="b">
                <ol class="category-list">
                    <!-- 鼠标悬停增加ClassName： hover -->
                    <li id="zxnav_0" class="category-item ">
                        <div class="category-item-bg">
                            <div class="category-info">

                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="queryOCproduct?oneCategoryId=1" target="_blank">
                                            <span>手机</span>
                                        </a>
                                    </div>
                                    <a target="_blank" href="queryTCproduct?twoCategoryId=1">
                                        <span>荣耀</span>
                                    </a>
                                    <a target="_blank" href="queryTCproduct?twoCategoryId=2">
                                        <span>HUAWEI P系列</span>
                                    </a>
                                    <i class=""></i>
                                </div>

                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=1" target="_blank">
                                        <img src="images/indexImage/qzix1hjR1Gu04VZEM3MV.png">
                                        <span>荣耀</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=2" target="_blank">
                                        <img src="images/indexImage/wvyCBUM6yXIUejmJsUkv.png">
                                        <span>HUAWEI P系列</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=3" target="_blank">
                                        <img src="images/indexImage/rPzFyIRhovqmj0xTAHRJ.png">
                                        <span>荣耀畅玩系列</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=4" target="_blank">
                                        <img src="images/indexImage/1jCsRl3lu5mrqD4Oy37d.png">
                                        <span>HUAWEI Mate系列</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=5" target="_blank">
                                        <img src="images/indexImage/ala3VfBaDRfg3W9lc9rb.png">
                                        <span>HUAWEI nova系列</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=6" target="_blank">
                                        <img src="images/indexImage/UzzOHEwr5zds7unUk9IF.png">
                                        <span>华为畅享系列</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=7" target="_blank">
                                        <img src="images/indexImage/usfhLiCRcgRXM4azHFxx.png">
                                        <span>HUAWEI 麦芒系列</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=8" target="_blank">
                                        <img src="images/indexImage/KJrjsCp9tWK5cb69sqPZ.png">
                                        <span>移动4G+专区</span>
                                    </a>
                                </li>
                                <li class="subcate-btn">
                                    <a href="queryOCproduct?oneCategoryId=1" target="_blank">查看全部</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li id="zxnav_1" class="category-item odd">
                        <div class="category-item-bg">
                            <div class="category-info">
                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="queryOCproduct?oneCategoryId=2" target="_blank">
                                            <span>笔记本 &amp; 平板</span>
                                        </a>
                                    </div>
                                    <a href="queryTCproduct?twoCategoryId=9" target="_blank">
                                        <span>平板电脑</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=10" target="_blank">
                                        <span>笔记本电脑</span>
                                    </a>
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=9" target="_blank">
                                        <img src="images/indexImage/ESW1L4dO6BQE4Ce7qOku.png">
                                        <span>平板电脑</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=10" target="_blank">
                                        <img src="images/indexImage/2mZe24dH8YEGadCyvgsL.png">
                                        <span>笔记本电脑</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=11" target="_blank">
                                        <img src="images/indexImage/zJrzC3PB3eRxHgMa4gZp.png">
                                        <span>笔记本配件</span>

                                    </a>
                                </li>
                                <li class="subcate-btn">
                                    <a href="queryOCproduct?oneCategoryId=2" target="_blank">查看全部</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li id="zxnav_2" class="category-item ">
                        <div class="category-item-bg">
                            <div class="category-info">
                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="queryOCproduct?oneCategoryId=3" target="_blank">
                                            <span>智能穿戴</span>
                                        </a>
                                    </div>
                                    <a href="queryTCproduct?twoCategoryId=12" target="_blank">
                                        <span>手环</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=13" target="_blank">
                                        <span>手表</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=14" target="_blank">
                                        <span>VR</span>
                                    </a>
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=12" target="_blank">
                                        <img src="images/indexImage/mdCqMsUUZa0ffupVTN1Z.png">
                                        <span>手环</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=13" target="_blank">
                                        <img src="images/indexImage/CHyatDGJmppogAYJT8IL.png">
                                        <span>手表</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=14" target="_blank">
                                        <img src="images/indexImage/16dyKlLvXNE0uyrhQnRF.png">
                                        <span>VR</span>
                                    </a>
                                </li>
                                <li class="subcate-btn">
                                    <a href="#" target="_blank">查看全部</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li id="zxnav_3" class="category-item odd">
                        <div class="category-item-bg">
                            <div class="category-info">
                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="queryOCproduct?oneCategoryId=4" target="_blank">
                                            <span>智能家居</span>
                                        </a>
                                    </div>
                                    <a href="queryTCproduct?twoCategoryId=15" target="_blank">
                                        <span>路由器</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=16" target="_blank">
                                        <span>电视盒子</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=17" target="_blank">
                                        <span>照明</span>
                                    </a>
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=15" target="_blank">
                                        <img src="images/indexImage/gB9fmcvyptXFOkUsKW0P.png">
                                        <span>路由器</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=16" target="_blank">
                                        <img src="images/indexImage/lnlE6GEuuWly2PHxKKeW.png">
                                        <span>电视盒子</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=17" target="_blank">
                                        <img src="images/indexImage/0fiZED1M3bzCZCtrmVuv.png">
                                        <span>照明</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=18" target="_blank">
                                        <img src="images/indexImage/IFVtkj665KI49A3ym523.png">
                                        <span>清洁</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=19" target="_blank">
                                        <img src="images/indexImage/0lCP0qxeMaoDPOLACYbR.png">
                                        <span>子母/分布式路由</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=20" target="_blank">
                                        <img src="images/indexImage/dW5bJU5lzj5OxkwNdP87.png">
                                        <span>电力猫/wifi放大器</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=21" target="_blank">
                                        <img src="images/indexImage/6NWUlhuUNSw22yRAjOcD.png">
                                        <span>随行wifi</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=22" target="_blank">
                                        <img src="images/indexImage/KJJ6kGK6eRUvhZhTjjDn.png">
                                        <span>节能</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=23" target="_blank">
                                        <img src="images/indexImage/EhmOYEJxAkrdpZsolbI9.png">
                                        <span>环境</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=24" target="_blank">
                                        <img src="images/indexImage/y7vaoWpus2AfktoTN0wy.png">
                                        <span>安防</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=25" target="_blank">
                                        <img src="images/indexImage/1CGfUr0UDawHCUV4D7mG.png">
                                        <span>健康</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=26" target="_blank">
                                        <img src="images/indexImage/iIvPFWcacZA7NW3MwDVM.png">
                                        <span>厨电</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=27" target="_blank">
                                        <img src="images/indexImage/5KAnARU4uIjSgYk4OVgS.png">
                                        <span>影音</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=28" target="_blank">
                                        <img src="images/indexImage/Ujkz0pZIr2gbwEWFH99w.png">
                                        <span>卫浴</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=29" target="_blank">
                                        <img src="images/indexImage/Tkcmu4245ICZHW7DWTYA.png">
                                        <span>其他</span>

                                    </a>
                                </li>
                                <li class="subcate-btn">
                                    <a href="queryOCproduct?oneCategoryId=4" target="_blank">查看全部</a>
                                </li>
                            </ul>


                        </div>
                    </li>
                    <li id="zxnav_4" class="category-item ">
                        <div class="category-item-bg">
                            <div class="category-info">
                                <div class="category-info-detail">
                                    <div class="category-title">
                                        <a href="queryOCproduct?oneCategoryId=5" target="_blank">
                                            <span>通用配件</span>
                                        </a>
                                    </div>
                                    <a href="queryTCproduct?twoCategoryId=30" target="_blank">
                                        <span>移动电源</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=31" target="_blank">
                                        <span>耳机</span>
                                    </a>
                                    <a href="queryTCproduct?twoCategoryId=32" target="_blank">
                                        <span>音箱</span>
                                    </a>
                                    <i class=""></i>
                                </div>
                            </div>
                        </div>
                        <div class="category-panels">
                            <ul class="subcate-list clearfix">
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=30" target="_blank">
                                        <img src="images/indexImage/pUaXujHFI3qn2GJbf9Kw.png">
                                        <span>移动电源</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=31" target="_blank">
                                        <img src="images/indexImage/DNzsmlZ7WcB99QjnLQZW.png">
                                        <span>耳机</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=32" target="_blank">
                                        <img src="images/indexImage/UGrisKHjRR96OOHrm6OC.png">
                                        <span>音箱</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=33" target="_blank">
                                        <img src="images/indexImage/v3FdBs1CVsEMnhsWcXh2.png">
                                        <span>自拍杆/支架</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=34" target="_blank">
                                        <img src="images/indexImage/4JwK2I1Eqty0bakRT9YY.png">
                                        <span>充电器/线材</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=35" target="_blank">
                                        <img src="images/indexImage/yXKgwCBDFLvIPYpEtAlq.png">
                                        <span>U盘/存储卡</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=36" target="_blank">
                                        <img src="images/indexImage/GMpfFA5G7UIbwRRClwvI.png">
                                        <span>摄像机/镜头</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=37" target="_blank">
                                        <img src="images/indexImage/71puISALSy0Bepi1nSQl.png">
                                        <span>智能硬件</span>

                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=38" target="_blank">
                                        <img src="images/indexImage/B7R6qLbvn8J6DbwODyWS.png">
                                        <span>生活周边</span>
                                    </a>
                                </li>
                                <li class="subcate-item">
                                    <a href="queryTCproduct?twoCategoryId=39" target="_blank">
                                        <img src="images/indexImage/jEEgZoQihzMSDmPE3csL.png">
                                        <span>取卡针</span>
                                    </a>
                                </li>
                                <li class="subcate-btn">
                                    <a href="queryOCproduct?oneCategoryId=5" target="_blank">查看全部</a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ol>
            </div>
            <!-- 20170223-分类-end -->
            <!-- 20140823-分类-end -->
        </div>
    </div>
</div>

<script>
    (function () {
        // 重置首页导航为纵向排列
        $('.category-panels').each(function () {
            var panel = $(this);
            var olis = panel.find('ul.subcate-list li');
            var cols = Math.ceil(olis.length / 4);
            panel.children().remove();
            panel.addClass('category-panels-' + cols);
            for (var i = 0; i < cols; i++) {
                var newUl = $('<ul class="subcate-list clearfix"></ul>');
                var j = i * 4;
                var max = j + 4;
                if (max > olis.length) {
                    max = olis.length;
                }
                for (j; j < max; j++) {
                    newUl.append($(olis[j]));
                }
                panel.append(newUl);
            }
        });

        //获取二级菜单元素
        var $panels = $(".category-panels");
        //判断鼠标是否进入二级菜单
        var mouseInPanels = false;
        //用于存储鼠标移动过程中,开始位置和结束位置的数组
        var mouseTrach = [];
        var activeRow,  //选中的一级菜单
            activeMenu, //对应的右侧二级菜单
            timer;      //延时器

        $panels.live("mouseenter", function () {
            mouseInPanels = true;
        }).live("mouseleave", function () {
            mouseInPanels = false;
        });

        var moveHandler = function (e) {
            mouseTrach.push({
                x: e.pageX,
                y: e.pageY
            });
            if (mouseTrach.length > 2) {
                mouseTrach.shift();
            }
        };
        $('.category-item').each(function () {
            $(this).find('.category-panels').addClass('none');
        })
        $('.category-list').live('mouseenter', function () {
            $(document).bind("mousemove", moveHandler);
        }).live('mouseleave', function () {
            if (activeRow) {
                activeRow.removeClass("active");
                activeRow.parent().removeClass("active");
                activeRow = null;
            }
            if (activeMenu) {
                activeMenu.addClass("none");
                activeMenu = null;
            }
            $(document).unbind("mousemove", moveHandler);
        });
        //鼠标进入每个li
        $('.category-item ').live('mouseenter', function (e) {
            if (!activeRow) {
                activeRow = $(this).addClass("active");
                $(this).parent().addClass("active");
                activeMenu = $(this).find('.category-panels');
                activeMenu.removeClass("none");
            }
            if (timer) {
                clearTimeout(timer);
            }
            //当前鼠标位置坐标
            var curMouse = mouseTrach[mouseTrach.length - 1];
            //前面鼠标位置坐标
            var prevMouse = mouseTrach[mouseTrach.length - 2];
            var delay = needDelay($('.category-list'), curMouse, prevMouse);
            if (delay) {
                var $this = $(this);
                timer = setTimeout(function () {
                    if (mouseInPanels) {
                        return
                    }
                    if (activeRow && activeRow.hasClass('active')) {
                        activeRow.removeClass("active");
                        activeRow.parent().removeClass("active");
                    }
                    if (activeMenu) {
                        activeMenu.addClass("none");
                    }
                    activeRow = $this;
                    activeRow.addClass("active");
                    activeRow.parent().addClass("active");
                    activeMenu = $this.find('.category-panels');
                    activeMenu.removeClass("none");
                    timer = null;
                }, 500);
            } else {
                var prevActiveRow = activeRow;
                var prevActiveMenu = activeMenu;
                activeRow = $(this);
                activeMenu = $(this).find('.category-panels');
                prevActiveRow.removeClass("active");
                prevActiveRow.parent().removeClass("active");
                prevActiveMenu.addClass("none");
                activeRow.addClass("active");
                activeRow.parent().addClass("active");
                activeMenu.removeClass("none");
            }
        });

        //所有分类显示隐藏控制
        var isIndex = true,
            categoryBlock = gid('category-block');

        if (isIndex) return;

        $("#category-block").hover(function () {
            $(this).addClass("category-hover");
        }, function () {
            $(this).removeClass("category-hover");
        });
    }());

    function vector(a, b) {
        return {
            x: b.x - a.x,
            y: b.y - a.y
        }
    }

    function vectorPro(v1, v2) {
        return v1.x * v2.y - v1.y * v2.x;
    }

    /**
     *功能:判断两个值是否同正负
     *入参:两个number类型的值
     *出参:布尔值,同正负返回true,反之false
     */
    function sameSign(a, b) {
        return (a ^ b) >= 0;
    }

    /**
     *功能:判断p是否在三角形abc内
     *入参:p, a, b, c;p是需要判断的点，a,b,c是三角形的三个点，如果p在三角形内部，那么pa,pb,pc两个向量之间的差乘应该符号相同。（同正负）
     *出参:布尔值。如果p在a,b,c构成的三角形内,返回true,反之false
     */

    function isPoint(p, a, b, c) {
        var pa = vector(p, a);
        var pb = vector(p, b);
        var pc = vector(p, c);

        var t1 = vectorPro(pa, pb);
        var t2 = vectorPro(pb, pc);
        var t3 = vectorPro(pc, pa);

        return sameSign(t1, t2) && sameSign(t2, t3);
    }

    /**
     *功能:判断是正常切换一级菜单，还是需要延时
     *入参:鼠标滑入的DOM元素
     *出参:布尔值。需要延时返回true,正常切换一级菜单返回false
     */
    function needDelay(ele, curMouse, prevMouse) {
        if (!curMouse || !prevMouse) {
            return
        }
        var offset = ele.offset();
        var topleft = {
            x: offset.left + 240,
            y: offset.top
        };
        var leftbottom = {
            x: offset.left + 240,
            y: offset.top + ele.height()
        };
        return isPoint(curMouse, prevMouse, topleft, leftbottom);
    }


    //定位当前推荐商品
    function fixCurrent(obj) {
        $(obj).addClass('current');
    }

    //离开当前推荐商品
    function leaveCurrent(obj) {
        $(obj).removeClass('current');
    }

    //去重
    function removeDuplicatedItem(ar) {
        var ret = [];
        for (var i = 0, j = ar.length; i < j; i++) {
            if (ret.indexOf(ar[i]) === -1) {
                ret.push(ar[i]);
            }
        }
        return ret;
    }

    //商品分类纵向导航数据上报
    function pushNavIndexProMsg(name, url, type, location) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "type": type,
                    "location": location,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010501", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010501", "link", value]);
    }

    //商品分类纵向导航数据上报(图片)
    function pushNavIndexProImgMsg(skuId, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuId,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010601", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010601", "link", value]);
    }

    $('.category-list .category-item').each(function (location) {
        location += 1;
        var name = '', url = '', type = 0;
        $(this).find('.category-info a').bind('click', function () {
            name = $(this).find('span').text();
            url = $(this).attr('href');
            type = 0;
            pushNavIndexProMsg(name, url, type, location);
        });
        $(this).find('.category-panels a').bind('click', function () {
            name = $(this).find('span').text() || $(this).text();
            url = $(this).attr('href');
            type = 1;
            pushNavIndexProMsg(name, url, type, location);
        });
    });
</script>

<!-- 20130904-热门板-start -->
<link href="css/public-reception/test.css" rel="stylesheet" type="text/css">
<script src="js/public-reception/test1.js"></script>

<div class="hot-board hot-board-index">
    <!--ads start-->
    <div class="ec-slider" id="index_slider">
        <div id="igs" style="width: 1519px;height: 550px">
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/28DQQG7SM2DrzXBFyUeCc.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/Aq4JHbueF1MQcKTaHpxh.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/49J5g817oMQefEG7HWff.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/o2IvktwwULHEwcCQv8hW.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/lfRiScLa0ESBp28ggfW4.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/IE9bYXvcVEPvjEhVdvbg.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/uGayVqdIqxtyuikcpMaW.jpg"/></a>
            <a class="ig" href="#">
                <img style="width: 100%" src="images/public-reception/FZ7oqIsQitxKX5GmeM52.jpg"/></a>

            <div class="btn btn1"><</div>
            <div class="btn btn2">></div>
        </div>
    </div>
    <ul></ul>
    <ul></ul>
    <div class="mask"><span></span></div>
    <!--ads end-->
</div>
<!-- 20130904-热门板-end -->

<!--//20161123 弹出框-->

<!-- 2017-02-15-菜单栏-start -->
<div class="home-channel-menu">
    <div class="layout relative">
        <div class="channel-floor-0 relative">
            <div class="h">
                <div class="home-channel-main">
                    <ul class="home-channel-list clearfix home-channel-img6">
                        <li class="fl s1">
                            <div id="gg_unlogin" class="i-mall-prompt clearfix">
                                <div class="relative fl w-name">

                                    <c:if test="${not empty sessionScope.userLogin}" var="user">
                                        <a href ="">
                                            <img src="<%=path%>/hw/${sessionScope.userLogin.loginIcon}">
                                        </a>
                                    </c:if>
                                    <c:if test="${!user}">
                                        <a href="">
                                            <img src="images/public-reception/img_not_logged_in.png">
                                        </a>
                                    </c:if>

                                </div>
                                <div class="fl">
                                    <div id="gg_login_url" class="w-reg">

                                        <c:if test="${not empty sessionScope.userLogin}" var="user">
                                            您好！${userLogin.screenName}
                                        </c:if>
                                        <c:if test="${!user}">
                                            您好！请
                                            <a href="login1.jsp">登录</a>
                                            <a href="register.jsp">&nbsp;&nbsp;注册</a>
                                        </c:if>
                                    </div>
                                    <div class="w-btn">
                                        <a class="new" href="#" target="_blank" onclick="pushMemberMsg('新人没福利','#')">右边的活动</a>
                                        <a class="" href="#" target="_blank" onclick="pushMemberMsg('老人没福利','#')">都是假的</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="fl s2">
                            <ul class="clearfix">
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img0"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="企业购特惠">
                                        </div>
                                        <div class="p-dec">第一个活动</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img1"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="以旧换新">
                                        </div>
                                        <div class="p-dec">第二个活动</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img2"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="积分兑现">
                                        </div>
                                        <div class="p-dec">第三个活动</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img3"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="明星同款">
                                        </div>
                                        <div class="p-dec">第四个活动</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img4"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png"
                                                 alt="畅享9新品">
                                        </div>
                                        <div class="p-dec">第五个活动</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">
                                        <div class="p-img">
                                            <img class="img5"
                                                 src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="优享购">
                                        </div>
                                        <div class="p-dec">第六个活动</div>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <%-- 公告 --%>
                        <li class="fl s3">
                            <div class="p-notice clearfix">
                                <div class="icon-notice fl">
                                    <a href="#" title="商城公告" onclick="pushMsgNotice('2')"><span>公告</span></a>
                                </div>
                                <div class="p-notice-content" id="notice">
                                    <ul class="p-notice-list fl">
                                        <li><a href="#" target="_blank">活动中奖名单公布</a></li>
                                        <li><a href="#" target="_blank">圣诞、周年庆活动中奖名单公布</a></li>
                                        <li><a href="#" target="_blank">智选生态产品新品上市购机中奖名单</a></li>
                                        <li><a href="#" target="_blank">购新机赢“手机红”万元大礼包</a></li>
                                        <li><a href="#" target="_blank">晒好评、提建议赢大礼！</a></li>
                                        <li><a href="#" target="_blank">炸了炸了！</a></li>
                                    </ul>
                                </div>
                            </div>

                            <%-- 公告下方三个图 --%>
                            <div class="p-info">
                                <ul class="clearfix">
                                    <li>
                                        <a href="#" target="_blank" rel="nofollow">
                                            <span>
                                                <img class="img0" src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="优购码">
                                            </span>优购码
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" rel="nofollow">
                                            <span>
                                                <img class="img1" src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="实名认证">
                                            </span>实名认证
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" target="_blank" rel="nofollow">
                                            <span>
                                                <img class="img2" src="images/public-reception/8313727ad4dbf6400f8dcc4465ef539a.png" alt="补购保障">
                                            </span>补购保障
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="b">
                <!--20170222 限时特惠 start-->
                <!--20170222 限时特惠 end-->
            </div>
            <div class="b">
                <!--20170222 热销单品 start-->
                <div class="home-recommend-goods home-hot-goods index-channel-floor">
                    <div class="h">
                        <h2 class="title change-title">热销单品</h2>
                    </div>
                    <div class="b clearfix">
                        <%-- 热销单品长图 --%>
                        <div class="span-232 fl">
                            <ul class="grid-promo-list clearfix">
                                <input type="hidden" id="contengID" value="0-6">
                                <li class="grid-items grid-items-sm">
                                    <a class="thumb">
                                        <img src="images/public-reception/xOwRTaQXVmzL2bdrU7hV.jpg" alt=""/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="span-968 fl">
                            <ul class="grid-list clearfix">
                                <!--通过添加current 来实现 hover效果-->
                                <c:forEach items="${sellPhone}" var="product">
                                    <li class="grid-items">
                                        <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                            <div class="grid-info">
                                                <p class="grid-img">
                                                    <img src="<%=path%>/hw/${product.logo}"
                                                         alt="${product.productName}"/>
                                                </p>
                                            </div>
                                            <div class="grid-title">${product.productName}</div>
                                            <p class="grid-desc"></p>
                                            <p class="grid-price">${product.productPrice}</p>
                                            <c:if test="${product.pattern != '精品'}">
                                                <p class="grid-tips">
                                                    <em class="thumb"><span class="color01"
                                                                            style="background-color:#FF6A6E">${product.pattern}</span></em>
                                                </p>
                                            </c:if>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
                <!--20170222 热销单品 end -->
                <script>
                    function pushHomeHotGoodsAdvertMsg(adid, url) {
                        var value = {
                            "UID": ec.util.cookie.get("uid"),
                            "TID": getPtid(),
                            "TIME": getTime(),
                            "CONTENT":
                                {
                                    "ADID": adid,
                                    "URL": url,
                                    "location": "1",
                                    "click": "1"
                                }
                        };
                        ec.account.dapPushMsg("300011301", value, "click");
                        ec.code.addAnalytics({hicloud: true});
                        _paq.push(["trackLink", "300011301", "link", value]);
                    }

                    function pushHomeHotGoodsMsg(obj, location, skuId) {
                        var row;
                        var column;
                        if (location < 6) {
                            row = "1";
                            column = location;
                        }
                        else if (location < 10) {
                            row = "2";
                            column = location - 4;
                        }
                        var url = obj.href;
                        var value = {
                            "UID": ec.util.cookie.get("uid"),
                            "TID": getPtid(),
                            "TIME": getTime(),
                            "CONTENT":
                                {
                                    "SKUID": skuId,
                                    "URL": url,
                                    "location": location,
                                    "row": row,
                                    "column ": "" + column,
                                    "click": "1"
                                }
                        };
                        ec.account.dapPushMsg("300011401", value, "click");
                        ec.code.addAnalytics({hicloud: true});
                        _paq.push(["trackLink", "300011401", "link", value]);
                    }
                </script>
                <!--20170222 热销单品 end-->
            </div>
            <div class="b">
                <!--20170223 精品推荐 start-->
                <!-- 20170223-首页-精品推荐-start -->
                <div class="home-recommend-goods index-channel-floor">
                    <div class="h">
                        <h2 class="title-1">精品推荐</h2>
                    </div>
                    <div class="b">
                        <div id="goodsRecommend-recommend" class="goods-rolling swiper-container relative">
                            <ul id="" class="grid-list swiper-wrapper clearfix">
                                <!--通过添加current 来实现 hover效果-->
                                <c:forEach items="${boutiquePhone}" var="product">
                                    <li class="grid-items swiper-slide">
                                        <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" target="_blank">
                                            <div class="grid-info">
                                                <p class="grid-img">
                                                    <img src="<%=path%>/hw/${product.logo}"
                                                         alt="${product.productName}"/>
                                                </p>
                                            </div>
                                            <div class="grid-title">${product.productName}</div>
                                            <p class="grid-desc"></p>
                                            <p class="grid-price">${product.productPrice}</p>
                                            <c:if test="${product.pattern != '精品'}">
                                                <p class="grid-tips">
                                                    <em class="thumb"><span class="color01"
                                                                            style="background-color:#FF6A6E">${product.pattern}</span></em>
                                                </p>
                                            </c:if>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                            <div class="grid-btn swiper-button-prev btn-prev disabled"><span></span></div>
                            <div class="grid-btn swiper-button-next btn-next"><span></span></div>
                        </div>
                    </div>
                </div>
                <!-- 20170223-首页-精品推荐-end -->
                <script>
                    function pushGoodsRecommendMsg(skuid, obj, location) {
                        var value = {
                            "UID": ec.util.cookie.get("uid"),
                            "TID": getPtid(),
                            "TIME": getTime(),
                            "CONTENT":
                                {
                                    "SKUID": skuid,
                                    "URL": obj.href,
                                    "location": location,
                                    "click": "1"
                                }
                        };
                        ec.account.dapPushMsg("300011501", value, "click");
                        ec.code.addAnalytics({hicloud: true});
                        _paq.push(["trackLink", "300011501", "link", value]);
                    }
                </script>
                <!--20170223 精品推荐 end-->
            </div>
            <div></div>
        </div>
    </div>
</div>
<!-- 2017-02-15-菜单栏-end -->

<!-- 20160812 首页轮播图下方 end -->

<div class="channel-floor index-channel-floor">
    <div class="layout">
        <!-- 2017-02-15-banner-1200*110-start -->
        <div class="home-banner">
            <!-- 2017-02-15-banner-图片轮换-start -->
            <div class="home-banner-slideshow">
                <!-- 20130903-ad-图片轮换-start -->
                <div class="banner-slideshow">
                    <div class="hr-27"></div>
                    <div id="m-banner" class="ec-slider">
                        <ul class="ec-slider-list">
                            <li class="ec-slider-item">
                                <div class="ec-slider-item-img">
                                    <a target="_blank">
                                        <img src="images/public-reception/R4OnKKLuxCKi82wYOfoE.png"/></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="hr-13"></div>
                    <script>
                        ec.load("ec.slider", {
                            loadType: "lazy",
                            callback: function () {
                                $("#m-banner").slider({
                                    width: 1200, //　必须
                                    height: 120, //　必须
                                    style: 1, //　1显示分页，2只显示左右箭头,3两者都显示
                                    pause: 5000, 	//间隔时间
                                    auto: true
                                });
                            }
                        });

                    </script>
                </div>
            </div><!-- 2017-02-15-banner-图片轮换-end -->
        </div><!-- 2017-02-15-banner-1200*110-end -->
    </div>
</div>

<div class="event-float-layout index-channel-floor">
    <!--添加 fixed  position: fixed !important;top: 20px;z-index: 500;-->
    <div class="event-float">
        <div>
            <ul class="hover-list">
            </ul>
        </div>
    </div>
</div>

<!-- 2017-05-12-HOME right side navigation -start -->
<!-- 2017-05-12-HOME right side navigation -end -->

<!-- 2017-02-15-HOME GOOGLIST-start -->
<div class="home-channel-container relative index-channel-floor ">

    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 排除非4倍数的商品 -->
    <!-- 非对称式 asym_array -->
    <%--手机--%>
    <div class="layout" id="lc_654296">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">${oneCategoryList.toArray()[0].oneCategoryName}</h2>
                <ul class="channel-nav fl">
                    <c:forEach items="${oneCategoryList}" var="one" begin="0" end="1">
                        <c:forEach items="${one.twoCategories}" var="two">
                            <li><a href="<%=path%>/queryTCproduct?twoCategoryId=${two.twoCategoryId}" target="_blank">${two.twoCategoryName}</a></li>
                        </c:forEach>
                    </c:forEach>
                </ul>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <c:forEach items="${phone}" var="product">
                            <li class="grid-items">
                                <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                    <div class="grid-info">
                                        <p class="grid-img">
                                            <img src="<%=path%>/hw/${product.logo}"
                                                 alt="${product.productName}"/>
                                        </p>
                                    </div>
                                    <div class="grid-title">${product.productName}</div>
                                    <p class="grid-desc"></p>
                                    <p class="grid-price">${product.productPrice}</p>
                                    <c:if test="${product.pattern != '精品'}">
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01"
                                                                    style="background-color:#FF6A6E">${product.pattern}</span></em>
                                        </p>
                                    </c:if>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 非对称式 asym_array -->

    <%--电脑--%>
    <div class="layout" id="lc_654304">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">${oneCategoryList.toArray()[1].oneCategoryName}</h2>
                <ul class="channel-nav fl">
                    <c:forEach items="${oneCategoryList.toArray()[1].twoCategories}" var="two">
                        <li><a href="<%=path%>/queryTCproduct?twoCategoryId=${two.twoCategoryId}" target="_blank">${two.twoCategoryName}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <c:forEach items="${computer}" var="product">
                            <li class="grid-items">
                                <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                    <div class="grid-info">
                                        <p class="grid-img">
                                            <img src="<%=path%>/hw/${product.logo}"
                                                 alt="${product.productName}"/>
                                        </p>
                                    </div>
                                    <div class="grid-title">${product.productName}</div>
                                    <p class="grid-desc"></p>
                                    <p class="grid-price">${product.productPrice}</p>
                                    <c:if test="${product.pattern != '精品'}">
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01"
                                                                    style="background-color:#FF6A6E">${product.pattern}</span></em>
                                        </p>
                                    </c:if>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 商品是否为4的倍数 -->
    <!-- 优先填充第一行数据 -->
    <!-- 非对称式 asym_array -->


    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <%--智能穿戴--%>
    <div class="layout" id="lc_654292">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">${oneCategoryList.toArray()[2].oneCategoryName}</h2>
                <ul class="channel-nav fl">
                    <c:forEach items="${oneCategoryList.toArray()[2].twoCategories}" var="two">
                        <li><a href="<%=path%>/queryTCproduct?twoCategoryId=${two.twoCategoryId}" target="_blank">${two.twoCategoryName}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <c:forEach items="${wrish}" var="product">
                            <li class="grid-items">
                                <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                    <div class="grid-info">
                                        <p class="grid-img">
                                            <img src="<%=path%>/hw/${product.logo}"
                                                 alt="${product.productName}"/>
                                        </p>
                                    </div>
                                    <div class="grid-title">${product.productName}</div>
                                    <p class="grid-desc"></p>
                                    <p class="grid-price">${product.productPrice}</p>
                                    <c:if test="${product.pattern != '精品'}">
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01"
                                                                    style="background-color:#FF6A6E">${product.pattern}</span></em>
                                        </p>
                                    </c:if>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <%--智能家居--%>
    <div class="layout" id="lc_654298">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">${oneCategoryList.toArray()[3].oneCategoryName}</h2>
                <ul class="channel-nav fl">
                    <c:forEach items="${oneCategoryList.toArray()[3].twoCategories}" var="two">
                        <li><a href="<%=path%>/queryTCproduct?twoCategoryId=${two.twoCategoryId}" target="_blank">${two.twoCategoryName}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <c:forEach items="${home}" var="product">
                            <li class="grid-items">
                                <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                    <div class="grid-info">
                                        <p class="grid-img">
                                            <img src="<%=path%>/hw/${product.logo}"
                                                 alt="${product.productName}"/>
                                        </p>
                                    </div>
                                    <div class="grid-title">${product.productName}</div>
                                    <p class="grid-desc"></p>
                                    <p class="grid-price">${product.productPrice}</p>
                                    <c:if test="${product.pattern != '精品'}">
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01"
                                                                    style="background-color:#FF6A6E">${product.pattern}</span></em>
                                        </p>
                                    </c:if>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <!--20170222 中通 start-->
    <div class="hr-27"></div>
    <div class="channel-floor index-channel-floor">
        <div class="layout">
            <!-- 2017-02-15-banner-1200*110-start -->
            <div class="home-banner">
                <!-- 2017-02-15-banner-图片轮换-start -->
                <div class="home-banner-slideshow">
                    <!-- 20130903-ad-图片轮换-start -->
                    <div class="banner-slideshow">
                        <div id="web_index_ads_floor5" class="ec-slider">
                            <ul class="ec-slider-list">
                                <li class="ec-slider-item" style="background:;">
                                    <div class="ec-slider-item-img">
                                        <a href="#" target="_blank">
                                            <img src="images/public-reception/l9AMuQg1ooXC9SB9LND3.jpg"/></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div><!-- 2017-02-15-banner-图片轮换-end -->
            </div><!-- 2017-02-15-banner-1200*110-end -->
        </div>
    </div>
    <div class="hr-13"></div>
    <!--20170222 中通 end-->


    <!-- 初始值 -->
    <!-- 分列式 march-past 计算显示商品数量-->
    <!-- 非对称式 asym_array -->

    <%--热销配件--%>
    <div class="layout" id="lc_654294">
        <div class="home-channel-floor">
            <div class="h">
                <h2 class="channel-title fl">${oneCategoryList.toArray()[4].oneCategoryName}</h2>
                <ul class="channel-nav fl">
                    <c:forEach items="${oneCategoryList.toArray()[4].twoCategories}" var="two">
                        <li><a href="<%=path%>/queryTCproduct?twoCategoryId=${two.twoCategoryId}" target="_blank">${two.twoCategoryName}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="b">
                <div class="goods-list">
                    <ul class="grid-list clearfix">
                        <!--通过添加current 来实现 hover效果-->
                        <c:forEach items="${parts}" var="product">
                            <li class="grid-items">
                                <a class="thumb" href="<%=path%>/queryByIdProduct?productId=${product.productId}" >
                                    <div class="grid-info">
                                        <p class="grid-img">
                                            <img src="<%=path%>/hw/${product.logo}"
                                                 alt="${product.productName}"/>
                                        </p>
                                    </div>
                                    <div class="grid-title">${product.productName}</div>
                                    <p class="grid-desc"></p>
                                    <p class="grid-price">${product.productPrice}</p>
                                    <c:if test="${product.pattern != '精品'}">
                                        <p class="grid-tips">
                                            <em class="thumb"><span class="color01"
                                                                    style="background-color:#FF6A6E">${product.pattern}</span></em>
                                        </p>
                                    </c:if>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="hr-20"></div>
</div>
<!-- 2017-02-15-HOME GOOGLIST-end -->

<div class="channel-floor index-channel-floor">
    <div class="layout">
        <!-- 20130903-ad-762*132-start -->
        <div class="ad fl"><a target="_blank" href="#">
            <img src="images/public-reception/2018091216573212.jpg" title="新人频道" style="float:none;"/></a>
        </div>
        <!-- 20130903-ad-762*132-end -->
    </div>
    <div class="hr-60"></div>
</div>

<!-- 2017-02-15-top-banner-start -->
<textarea id="top-banner" class="hide">
	<!-- 顶部banner -->
	<div class="top-banner-max hide" id="top-banner-max">
		<div class="top-banner-img">

			<a title="折叠" href="javascript:;" class="button-top-banner-min" id="top-banner-max-toggle">-</a>
		</div>
	</div>
	<div class="top-banner-min hide" id="top-banner-min">
		<div class="top-banner-img">
			<p style="font-size:0;">
			<a style="display:block;position:relative;width:1920px;text-align:center;left:50%;background-color:;margin-left:-960px;"
               title="华为" target="_blank" href="#">
                <img src="images/public-reception/nEGwrxXiNdCahijE3oUr.jpg" title="华为"/></a>
            </p>
			<a title="展开" href="javascript:;" class="button-top-banner-max hide" id="top-banner-min-toggle">+</a>
			<a class="button-top-banner-close" href="javascript:;" title="关闭" id="top-banner-min-close">关闭</a>
		</div>
	</div>
    <!-- 顶部banner end -->
</textarea>
<!-- 2017-02-15-top-banner-end -->

<!-- 2017-09-21-bottom-banner-start -->

<!-- 2017-09-21-bottom-banner-end -->

<script>
    ec.load("ajax");
    ec.pkg("ec.index");
    ec.index.clickHref = function (a) {
        window.open(a)
    };
    ec.index.sales = function (e) {
    };
    ec.index.salesStatus = [];
    ec.index.salesCallBack = function (h, k) {
        var f,
            d = [],
            b = new Date();
        b.setTime(ec.index.now.parseDate("yyyy-MM-dd HH:mm:ss"));
        var a = function (i, o) {
            var n = $(o),
                l = n.attr("data-skutype"),
                m = $(".channel-button", n);
            switch (parseInt(i, 10)) {
                case 0:
                    m.html("\u9a6c\u4e0a\u5f00\u59cb").attr("title", "\u9a6c\u4e0a\u5f00\u59cb");
                    if (l == 3 || l == 4) {
                        m.attr("class", "channel-button-begin")
                    }
                    break;
                case 1:
                    if (l == 3) {
                        m.html("\u53bb\u770b\u770b").attr("title", "\u53bb\u770b\u770b")
                    } else {
                        m.html("\u7acb\u5373\u62a2\u8d2d").attr("title", "\u7acb\u5373\u62a2\u8d2d")
                    }
                    m.attr("class", "channel-button");
                    break;
                case 2:
                    m.html("\u6d3b\u52a8\u7ed3\u675f").attr("title", "\u6d3b\u52a8\u7ed3\u675f");
                    if (l == 2 || l == 3) {
                        m.attr("class", "channel-button-end")
                    }
                    break
            }
        };
        for (var c = 0; c < k.infoList.length; c += 1) {
            f = h[c];
            d = k.infoList[c];
            $(".channel-button", f).css("visibility", "");
            if (!d || !d.id) {
                continue
            }
            if (d.status == 1) {
                if (d.startTime && d.startTime >= b) {
                    d.status = 0
                }
                if (d.endTime && d.endTime <= b) {
                    d.status = 2
                }
            }
            a(d.status, f);
            if (d.startTime || d.endTime || d.limitAmount > 0) {
                $(".p-countdown", f).show()
            }
            if (d.limitAmount > 0) {
                $(".p-quantity", f).html("\u9650<b>" + d.limitAmount + "</b>\u53f0").show()
            }
            var e = parseFloat($(f).attr("data-price"), 10);
            if (d.price > 0) {
                if (parseInt(d.price) == d.price) {
                    $(".p-sale-price span, .p-price span", f).html((d.price));
                    if (parseInt(e) == e) {
                        $(".economize", f).html(e - d.price)
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                } else {
                    $(".p-sale-price span, .p-price span", f).html((d.price).toFixed(2));
                    if (e - d.price == 0) {
                        $(".economize", f).html("0")
                    } else {
                        $(".economize", f).html((e - d.price).toFixed(2))
                    }
                }
            }
            $(".sale-quantity", f).html(d.saleAmount);
            if (d.status != 2 && (d.startTime || d.endTime)) {
                var g = ($(f).attr("data-block") == "slider") ? true : false,
                    j = [];
                if (d.startTime) {
                    j.push(new Date(d.startTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                if (d.endTime) {
                    j.push(new Date(d.endTime).format("yyyy-MM-dd HH:mm:ss"))
                }
                ec.index.salesStatus[c] = d.status;
                ec.ui.countdown($(".p-time", f), {
                    html: "<b>" + (g ? "" : "\u5269\u4f59") + "</b><ins><i>{#hours}</i><s></s></ins><em>\u65f6</em><ins><i>{#minutes}</i><s></s></ins><em>\u5206</em><ins><i>{#seconds}</i><s></s></ins><em>\u79d2</em>",
                    now: b,
                    times: j,
                    index: c,
                    callback: function (i) {
                        ec.index.salesStatus[i.index]++;
                        a(ec.index.salesStatus[i.index], h[i.index])
                    }
                })
            }
        }
    };
    ec.ready(function () {

        var skuids = $("#recommendSkuIds").val();
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuids,
                    "load": "1"
                }
        }
        ec.account.dapPushMsg("300011501", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011501", "link", value]);
        //首页加载上报
        ec.account.dapPushMsg('', '', 'view');
        //_paq.push(['setTrackerUrl', openApiDomain + '/dap/report']);
        //_paq.push([ "trackPageView" ]);

        if (ec.account.isLogin()) {
            $("#cust_login_info").hide()
        }
        var a = ec.index.bigAd,
            g = ec.index.smallAd,
            f = ec.index.bigadShowTime,
            e,
            b,
            c = function () {
                var j = b.innerHeight();
                var i = e.innerHeight();
                var k = $("#search-bar-form").offset().top - i + j;
                var h = $("#search-bar-form").innerHeight();
                $(".autocomplete-w1").parent().hide();
                e.slideUp(1000, function () {
                    if (g) {
                        b.show()
                    }
                    $(".autocomplete-w1").parent().css({
                        top: (k + h + "px")
                    });
                    $(".autocomplete-w1").parent().show();
                    ec.index.SCROLL_GET = ec.index.getscrollLayout()
                });
                if (d) {
                    clearTimeout(d)
                }
            },
            d;
        $("#top-banner-block").html(gid("top-banner").value);
        e = $("#top-banner-max");
        b = $("#top-banner-min");
        $("#top-banner-min-close").click(function () {
            $("#top-banner-block").hide();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        });
        if (a) {
            e.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout();
            $("#top-banner-max-toggle").click(c);
            d = setTimeout(c, f)
        }
        if (g && !a) {
            b.show();
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        if (!g && !a) {
            ec.index.SCROLL_GET = ec.index.getscrollLayout()
        }
        $("body .layout .channel-pro-item").hover(function () {
            $(this).addClass("pro-info-hover")
        }, function () {
            $(this).removeClass("pro-info-hover")
        });
        ec.index.sales("#main-sale-list .activity-list, #slider-sale-list .activity-list");
        ec.index.floatLayout()
    });
    ec.index.SCROLL_GET = {};
    ec.index.getscrollLayout = function () {
        var b = $(".home-channel-container .layout .channel-title").closest('.layout'),
            d = $(".event-float-layout"),
            a = [],
            c = [];
        if (b.length == 0 || d.length == 0) {
            return false
        }
        b.each(function (e, f) {
            c.push($(this).offset().top);
            a.push($(this).outerHeight())
        });
        return {
            scrollListHeight: a,
            scrollList: c,
            top: d.offset().top
        }
    };
    ec.index.floatLayout = function () {
        var a = $(".event-float-layout");
        if (a.length == 0 || ec.index.SCROLL_GET === false) {
            return false
        }
        $("body").css({
            "min-width": "1200px",
            "overflow-x": "hidden"
        });
        var d = $(".event-float"),
            n = $(".hungBar-top"),
            h = $(".home-channel-container .layout .channel-title").closest('.layout'),
            p = $(".home-channel-container"),
            m = $(".home-channel-container .layout .channel-title"),
            l = "";
        a.find("ul").children().remove();

        function f(i) {
            return $("<span/>").text(i).html()
        }

        h.each(function (i, q) {
            var name = f(m.eq(i).text());
            l += '<li><a data-id="' + i + '" href="javascript:;" onclick = "pushMsg(\'' + name + '\');">' + name + "</a></li>"
        });
        a.find("ul").append(l);
        a.bind("click", function (r) {
            var q = $(r.target);
            if (q[0].nodeName.toLowerCase() === "a") {
                var i = parseInt(q.attr("data-id"));
                q.parent().addClass("hover").siblings().removeClass("hover");
                $("html,body").animate({
                    scrollTop: ec.index.SCROLL_GET.scrollList[i] + "px"
                }, 400)
            }
        });
        var o = a.outerHeight(),
            e = d.offset(),
            c = e.left,
            b = $(window).height(),
            k = b / 2 - (o / 2),
            j = h.length,
            g = true;
        a.css({
            height: j * 47 + "px",
            top: k + "px"
        });
        if (document.body.clientWidth <= 1400) {
            a.hide();
            g = false
        }
        if ($.browser.msie && parseInt($.browser.version) <= 9) {
            a.hide()
        }
        if ($.browser.msie && parseInt($.browser.version) <= 7) {
            g = false
        } else {
            $(window).scroll(function () {
                if (!g) {
                    return
                }
                var i = $(window).scrollTop();
                if (i >= b) {
                    n.fadeIn(80)
                } else {
                    n.fadeOut(80)
                }
                if (i >= ec.index.SCROLL_GET.scrollList[0] - k) {
                    a.css({
                        top: k + "px"
                    }).addClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.show()
                    }
                    $.each(ec.index.SCROLL_GET.scrollList, function (q, r) {
                        if (i >= r - ec.index.SCROLL_GET.scrollListHeight[q] / 2) {
                            a.find("li").eq(q).addClass("hover").siblings().removeClass("hover")
                        }
                    });
                    if (i >= (ec.index.SCROLL_GET.scrollList[j - 1] + 200)) {
                        a.removeClass("tool-Fixed");
                        if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                            a.hide()
                        }
                    }
                } else {
                    a.removeClass("tool-Fixed");
                    if ($.browser.msie && parseInt($.browser.version) >= 8 && parseInt($.browser.version) <= 9) {
                        a.hide()
                    }
                }
            }, 200)
        }
        $(window).resize(function () {
            if (document.body.clientWidth > 1400) {
                a.show();
                g = true;
                return
            }
            a.hide();
            g = false;
            $("body").css({
                "min-width": "1200px",
                "overflow-x": "auto"
            })
        }, 200);
        if ($(window).scrollTop() > 0) {
            $(window).trigger("scroll")
        }
    };
    $(document).ready(function () {
        function initSwiper(xpath, num) {
            var jobj = $(xpath);
            var liNum = jobj.find('.swiper-slide').length;
            if (liNum > num) {
                jobj.find('.swiper-button-next').removeClass('disabled');
            } else {
                jobj.find('.swiper-button-prev').addClass('disabled');
                jobj.find('.swiper-button-next').addClass('disabled');
            }
            var mySwiper = new Swiper(xpath, {
                slidesPerView: num,
                slidesPerGroup: num
            });
            jobj.find('.btn-prev').click(function () {
                mySwiper.swipePrev();
            });
            jobj.find('.btn-next').click(function () {
                mySwiper.swipeNext();
            });
        }

        $('.goods-rolling').each(function () {
            var xpathId = $(this).attr('id');
            if (xpathId.startWith('goodsContent')) {
                initSwiper('#' + xpathId, 6);
            } else {
                initSwiper('#' + xpathId, 5);
            }
        });

        new Slider({
            objid: "#notice",
            listname: ".p-notice-list",
            shownum: 1,
            type: 2,
            autoplay: true
        }).init();
        var b = $(".bottomImage");
        if (b.attr("src")) {
            b.show().bind("click", function () {
                var f = $("#adsArearLink").val();
                if (f != null && f.trim() != "") {
                    var g = window.open(f, "_blank");
                    g.opener = null
                }
            })
        }
        var e = $(".grid-list .grid-items,.grid-promo-list .grid-items");
        e.hover(function () {
            $(this).addClass("current")
        }, function () {
            $(this).removeClass("current")
        });
    })


</script>
<script>
    "use strict";
    var Slider = function (a) {
        this.i = 0;
        this.objid = a.objid || null;
        this.preclassname = a.preclassname || ".btn-prev";
        this.nextclassname = a.nextclassname || ".btn-next";
        this.listname = a.listname || ".grid-list";
        this.listitem = a.listitem || "li";
        this.shownum = a.shownum || 5.5;
        this.type = a.type || 1;
        this.autoplay = a.autoplay || false
    };
    Slider.prototype = {
        init: function () {
            var b = this;
            var a = b.set();
            if (b.autoplay) {
                b.auto(a)
            } else {
                b.next(a);
                b.pre(a)
            }
        }, auto: function (e) {
            var d = this, c = null;
            $(d.listname).find(d.listitem).eq(0).clone().appendTo(d.listname);
            e.len += 1;
            var b = (e.itemHeight) * (e.len - 1), a = function () {
                d.i++;
                if (Math.abs(parseInt(e.$grid.css("margin-top"))) == b) {
                    e.$grid.css("margin-top", 0);
                    d.i = 1
                }
                e.$grid.animate({"margin-top": "-" + (d.i * e.itemHeight * d.shownum) + "px"}, 500)
            };
            if (d.autoplay) {
                c = setInterval(a, 2000);
                e.$grid.hover(function () {
                    clearInterval(c)
                }, function () {
                    c = setInterval(a, 2000)
                })
            }
        }, set: function () {
            var d = this, g = $(d.objid + " " + d.listitem), i = $(d.objid + " " + d.listname),
                h = $(d.objid + " " + d.preclassname), b = $(d.objid + " " + d.nextclassname), e = g.length,
                f = g.outerWidth(), a = g.outerHeight(), c = Math.ceil(e / d.shownum);
            switch (d.type) {
                default:
                case 1:
                    i.css("width", (f + 1) * e + "px");
                    break;
                case 2:
                    i.css("height", (a) * e + "px");
                    break
            }
            return {$item: g, $grid: i, $pre: h, $next: b, len: e, itemWidth: f, itemHeight: a, num: c}
        }, pre: function (b) {
            var a = this;
            b.$pre.bind("click", function () {
                if ($(this).hasClass("disabled")) {
                    return
                }
                a.i--;
                if (a.i - 1 < 0) {
                    b.$pre.addClass("disabled")
                }
                b.$next.removeClass("disabled");
                switch (a.type) {
                    default:
                    case 1:
                        b.$grid.animate({"margin-left": a.i == 0 ? 0 : parseInt(b.$grid.css("margin-left")) + (b.itemWidth * a.shownum) + "px"}, 500);
                        break;
                    case 2:
                        b.$grid.animate({"margin-top": a.i == 0 ? 0 : parseInt(b.$grid.css("margin-top")) + (b.itemHeight * a.shownum) + "px"}, 500)
                }
            })
        }, next: function (b) {
            var a = this;
            b.$next.bind("click", function () {
                if ($(this).hasClass("disabled")) {
                    return
                }
                a.i++;
                b.$pre.removeClass("disabled");
                switch (a.type) {
                    default:
                    case 1:
                        if (a.shownum > 1) {
                            if (a.i + 1 == b.num) {
                                var d = parseInt(b.$grid.css("margin-left"));
                                var c = (b.len - ((a.i) * parseInt(a.shownum)) - 1 / 2) * b.itemWidth;
                                b.$grid.animate({"margin-left": d - c + "px"}, 500)
                            } else {
                                b.$grid.animate({"margin-left": "-" + (a.i * b.itemWidth * parseInt(a.shownum)) + "px"}, 500)
                            }
                        } else {
                            b.$grid.animate({"margin-left": "-" + (a.i * b.itemWidth * a.shownum) + "px"}, 500)
                        }
                        break;
                    case 2:
                        b.$grid.animate({"margin-top": "-" + (a.i * b.itemHeight * a.shownum) + "px"}, 500);
                        break
                }
                if (a.i + 1 == b.num) {
                    b.$next.addClass("disabled")
                }
            })
        }
    };
</script>
<script>
    (function (_ec) {
//顶部banner
        _ec.bigAd = false;
        _ec.smallAd = true;
        _ec.bigadShowTime = 8000;
        _ec.now = new Date().format('yyyy-MM-dd HH:mm:ss');
        _ec.configNowTime = function () {
            if (_serverTime) {
                _ec.now = new Date(_serverTime).format('yyyy-MM-dd HH:mm:ss');
            }
        }
    })(ec.index);

    /*
 *
 * 首页左浮动位置
 *
 * */
    (function ($) {
        function floatShow() {
            function getScrollTop() {
                var scrollTop = document.documentElement.scrollTop || window.pageYOffset || document.body.scrollTop;
                return scrollTop;
            }

            if (getScrollTop() > 1080) {
                if ($(".leftfloat")) {
                    $(".leftfloat").addClass('leftfloat-show');
                }
            } else {
                if ($(".leftfloat")) {
                    $(".leftfloat").removeClass('leftfloat-show');
                }
            }
        };
        floatShow();


        window.onscroll = function () {
            floatShow();
        };

        function floatPosition() {
            if ($(".leftfloat")) {
                var floatLeft = ($(window).width() - 1200) / 2 - $('.leftfloat').width() - 10,
                    floatTop = $(window).height() / 2 - $('.leftfloat').height() / 2;
                $(".leftfloat").css('left', floatLeft);
                $(".leftfloat").css('top', floatTop);
                setTimeout(floatPosition, 100);
            }
        };
        floatPosition();
        window.onresize = function () {
            floatPosition();
        };
        /*
     *
     * 首页底部浮动位置
     *
     * */
        var $top = $('.home-channel-container .layout').eq(0).offset().top,
            $height = $('.bottom-banner').height();
        $(window).scroll(function () {
            var bottomV = $height * (-1);
            $(".bottom-banner").css("bottom", bottomV + "px");
            var scrollTop = $(window).scrollTop();
            if (scrollTop >= ($top - $height)) {
                $(".footer-container").css("padding-bottom", $height + "px");
                $(".bottom-banner").addClass('bm-0');
            } else {
                $(".bottom-banner").removeClass('bm-0');
                $(".footer-container").css("padding-bottom", "0");
            }
        })

    })(jQuery);

    //会员频道点击上报
    function pushMemberMsg(name, url) {
        if (url.indexOf("privilege") != -1 || url.indexOf("welcome.html") != -1) {
        } else if (name.indexOf("注册") != -1) {
        } else {
            ec.account.afterLogin(function () {
            });
        }
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010801", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010801", "link", value]);
    }

    //中通广告数据上报
    function pushBannerMsg(adid, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": adid,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011601", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011601", "link", value]);

    }

    $(".home-banner-slideshow").find("li").find("a").click(function () {
        var adid = $(this).find("img").attr("src");
        var url = $(this).attr("href");
        pushBannerMsg(adid, url);
    });

    //商品楼层更多点击上报
    function pushFoolMsg(index, category, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011703", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011703", "link", value]);
    }

    //商品楼层商品楼层子分类点击上报
    function pushFoolChildrenMsg(index, category, subCategory, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "subCategory": subCategory,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011701", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011701", "link", value]);
    }

    //底部通栏广告数据上报
    $(".ad.fl").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": $(this).find("img").attr("src"),
                    "URL": $(this).attr("href"),
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011801", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011801", "link", value]);
    });

    //楼层广告数据上报
    function pushFoolAdvertMsg(index, category, adid, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "ADID": adid,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011702", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011702", "link", value]);
    }

    //右浮动导航数据上报
    $(".hover-list").find("li").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": $(this).html(),
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010001", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010001", "link", value]);
    });

    //首页弹窗数据上报
    $("#web_popup_ads").find("a").click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": $(this).find("img").attr("src"),
                    "URL": $(this).attr("href"),
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010002", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010002", "link", value]);
    });

    //楼层商品点击上报
    function pushFoolGoodsMsg(obj, location, index, category, skuId, type) {
        var row;
        var column;
        if (type == "13") {
            var num = (location) / 4;
            row = parseInt(num) + 1;
            if (row == 1) {
                column = location + 1;
            }
            else {
                column = parseInt((location) % 4) + 1;
            }
        }
        else if (type == "12") {
            row = parseInt((location - 1) / 4) + 1;
            column = parseInt((location - 1) % 4) + 1;
        }


        var url = obj.href;
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "index": index,
                    "category": category,
                    "SKUID": skuId,
                    "URL": url,
                    "row": "" + row,
                    "column ": "" + column,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011704", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011704", "link", value]);
    }

    $(".top-banner-min").find("a").live("click", function () {
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if ($(this).attr("class") == "undefined" || $(this).attr("class") == "" || $(this).attr("class") == null) {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": src,
                    "URL": url,
                    "type": type,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010102", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010102", "link", value]);
    });

    $(".top-banner-max").find("a").live("click", function () {
        var name = $(this).attr("title");
        var type;
        var src;
        var url;
        if ($(this).attr("class") == "undefined" || $(this).attr("class") == "" || $(this).attr("class") == null) {
            type = "1";
            src = $(this).find("img").attr("src");
            url = $(this).attr("href");
        }
        else {
            type = "2";
            src = "";
            url = "";
        }

        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": src,
                    "URL": url,
                    "type": type,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300010101", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010101", "link", value]);
    });

    function pushMsg(name) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": name,
                    "click": "1"
                }

        };
        ec.account.dapPushMsg("300010001", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300010001", "link", value]);
    };

    function pushMsgMenu1(location, key, name, url) {
        ec.account.afterLogin(function () {
            window.location.href = "https://www.vmall.com/priority";
        });
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "location": location,
                    "click": "1"
                }

        };
        ec.account.dapPushMsg(key, value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", key, "link", value]);
    };

    function pushMsgMenu(location, key, name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "location": location,
                    "click": "1"
                }

        };
        ec.account.dapPushMsg(key, value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", key, "link", value]);
    };

    function pushMsgNotice(location) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "location": location,
                    "click": "1"
                }

        };
        ec.account.dapPushMsg("300011001", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011001", "link", value]);
    };

    $('.home-promo-list.clearfix li a').click(function () {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "ADID": $(this).parent().find('img').attr("src"),
                    "URL": $(this).attr('href'),
                    "locaion": $(this).parent().index() + 1,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300011201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300011201", "link", value]);
    });
</script>

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
                    <script>
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
                                    //处理视频播放
                                    if (playerDetailVideo) {
                                        playerDetailVideo.dispose();
                                    }
//       $("#video-box").remove();
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
                    </script>
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
                       href="#" target="_blank">
                        <i class=""></i> 在线客服</a>
                </dd>
            </dl>
            <div class="service-code clearfix">
                <h2>关注我们：</h2>
                <ul class="clearfix">
                    <li class="service-code-wechat">
                        <div class="service-code-img">
                            <img src="images/userManager-imager/myQR-code.png"></div>
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
<!-- 2017-02-15-服务-end -->

<!--确认对话框-->
<div id="ec_ui_confirm" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_confirm_msg"></p>
        <div class="popup-button-area">
            <a id="ec_ui_confirm_yes" href="javascript:;" class="button-action-yes">
                <span>是</span></a>
            <a id="ec_ui_confirm_no" href="javascript:;" class="button-action-no">
                <span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!--新确认对话框-->
<div id="ec_ui_confirm_new" class="popup-area-new hide">
    <div class="b">
        <p id="ec_ui_confirm_new_msg"></p>
        <div class="popup-button-area">
            <a id="ec_ui_confirm_new_yes" href="javascript:;" class="box-button-style-1">
                <span>是</span></a>
            <a id="ec_ui_confirm_new_no" href="javascript:;" class="box-button-style-1">
                <span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down-new"></s></div>
</div>

<!--提示对话框-->
<div id="ec_ui_tips" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_tips_msg" class="tac"></p>
        <div class="popup-button-area tac">
            <a id="ec_ui_tips_yes" href="javascript:;" class="button-action-yes" title="确定">
                <span>确定</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!-- 2018-10-26-悬浮工具栏-start -->
<div class="hungBar j-hungBar">
    <div class="hungBar-content">
        <a target="_blank" onclick="pushMyCartMsg()" href="#" timeType="timestamp" class="hungBar-cart"
           title="购物车"><span style="display:none;"></span><i>购物车</i></a>
        <a target="_blank" id="tools-nav-service-robotim" onclick="pushRightHelpMsg('在线客服')" href="#"
           class="hungBar-service" title="在线客服"><i>在线客服</i></a>
        <a id="tools-nav-survery" onclick="ec.survery.open();pushRightHelpMsg('意见反馈')" href="#"
           class="hungBar-feedback" title="意见反馈"><i>意见反馈</i></a>
        <a href="javascript:;" class="hungBar-top" title="返回顶部" id="hungBar-top"><i>返回顶部</i></a>
    </div>
</div>
<!-- 2018-10-26-悬浮工具栏-end -->

<!--意见反馈box-->
<div id="survery-box" class="ol_box_4 hide" style="width:600px;">
    <div class="box-ct">
        <div class="box-header">
            <div class="box-tl"></div>
            <div class="box-tc">
                <div class="box-tc1"></div>
                <div class="box-tc2">
                    <a class="box-close" title="关闭" onclick="ec.survery.close();" href="javascript:;"></a>
                    <span class="box-title">意见反馈</span></div>
            </div>
            <div class="box-tr"></div>
        </div>
        <table width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
            <tr>
                <td class="box-cl"></td>
                <td class="box-cc">
                    <div class="box-content">
                        <!-- -表单-意见反馈-start -->
                        <!-- -表单-意见反馈-end -->
                    </div>
                </td>
                <td class="box-cr"></td>
            </tr>
            </tbody>
        </table>
        <div class="box-bottom">
            <div class="box-bl"></div>
            <div class="box-bc"></div>
            <div class="box-br"></div>
        </div>
    </div>
</div>

<!-- 2017-02-15-底部-start -->
<div class="footer-container">
    <div class="footer">
        <div class="footer-warrant-area clearfix"><p class="footer-warrant-logo fl">
            <a href="#">
                <img src="images/userManager-imager/HBHfAUYHLA0u5qMS8Nkr.png" title="vmall.png" style="float:none;"/></a>
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
                    <img src="images/userManager-imager/20180522101715775.jpg" alt="TRUSTe隐私认证" title="TRUSTe隐私认证"/></a>
                <a class="fl" href="images/userManager-imager/business-license.jpg" target="_blank" rel="nofollow">
                    <img src="images/userManager-imager/20160226162415360.png" alt="电子营业执照" title="电子营业执照"/></a>
                <br/>
            </p>
            <p><br></p></div>
        <script type="text/javascript">
            $(function () {
                $("title").html($("title").text());
            });
            ec.code.addAnalytics({dmp: true});
        </script>
    </div>
</div>
<!-- 2017-02-15-底部-end -->
<script>
    new Slider({//友情链接
        objid: '#serverlink',
        listname: '.service-list',
        listitem: 'ol',
        shownum: 1
    }).init();
</script>
<script type="text/javascript">
    ec.load("ec.box", {loadType: "lazy"});
    /**
     *功能：给鼠标移动到s-dropdown上面的时候，记得给他多添加一个hover类样式
     *目的是兼容ie6
     *@author 李峰
     */
    $(function () {
        $(".s-dropdown").hover(function () {
            $(this).addClass("hover");
        }, function () {
            $(this).removeClass("hover");
        });
        var maxcolor = $('.top-banner-max').find('p').children('a').css("background-color");
        var mincolor = $('.top-banner-min').find('p').children('a').css("background-color");

        $('.top-banner-max').css({"background-color": maxcolor, overflow: "hidden"});
        $('.top-banner-min').css({"background-color": mincolor, overflow: "hidden"});
    });

    //显示全球导航选择层
    function showSelectRegion() {
        var box = new ec.box($("#selectRegion-tips").val(),
            {
                boxid: "region-select-box",
                boxclass: "ol_box_4",
                title: "Please select your country or region",
                width: 700,
                showButton: false,
                autoPosition: false,
                onopen: function (box) {
                },
                onok: function (box) {
                },
                oncancel: function (box) {
                    box.close();
                    $(".ol_box_mask").remove();
                },
                onclose: function (box) {
                    $(".ol_box_mask").remove();
                }
            });

        box.open();

        $(".box-title").css("font-size", "24px");
        $("#region-select-box").css("height", "auto");
        $(".ol_box_mask").click(function () {
            box.close();
        });

        $(".box-header").unbind("mousemove");
        $(".box-header").unbind("mousedown");

        var divTop = document.getElementById("region-select-box").offsetTop;
        $("#region-select-box").mousedown(function (e) {
            var e = e || window.event;
            var region = document.getElementById("region-select-box");

            var leftX = e.clientX - region.offsetLeft;
            var topY = e.clientY - region.offsetTop;
            $("#region-select-box").mousemove(function (event) {
                var e = event || window.event;
                var left = e.clientX - leftX;
                var top = e.clientY - topY;

                if (e.clientX - leftX < 20 - region.offsetWidth) {
                    left = 20 - region.offsetWidth;
                }
                if (e.clientY - topY < 20 - region.offsetHeight) {
                    top = 20 - region.offsetHeight;
                }

                if (e.clientY - topY + 20 >= $(window).height()) {
                    top = $(window).height() - 20;
                }
                if (e.clientX - leftX + 20 >= $(window).width()) {
                    left = $(window).width() - 20;
                }
                $("#region-select-box").css({"left": left, "top": top});
                divTop = top;

            });
        });
        $("#region-select-box").mouseup(function () {
            $("#region-select-box").unbind("mousemove");
        });
        $(window).scroll(function () {
            $("#region-select-box").offset({top: divTop});
        });
    }
</script>
<script type="text/javascript">
    ec.load("ec.slider", {
        loadType: "lazy",
        callback: function () {
            $("#ec-erweima").slider({
                width: 91, //必须
                height: 96, //必须
                style: 1,                    //1显示分页，2只显示左右箭头,3两者都显示
                pause: 120000,           //间隔时间
                auto: true
            });
        }
    });

    ec.ready(function () {
        try {
            ec.minicart.readyContent();
            ec.minicart.microCartTpl = new ec.template($('#micro-cart-tpl').val());
            var $miniCart = $('#header-toolbar-minicart-content');
            $('#header-toolbar-minicart').hover(function () {
                if (ec.checkBrowerIE()) {
                    var act = document.activeElement.id;
                    if (act == 'search-kw') {
                        $("#search-kw").blur();
                    }
                }

                $(this).unbind("mouseenter");
                ec.minicart.content();
            }, function () {
                $(this).bind("mouseenter", function () {
                    if (ec.checkBrowerIE()) {
                        var act = document.activeElement.id;
                        if (act == 'search-kw') {
                            $("#search-kw").blur();
                        }
                    }

                    $(this).unbind("mouseenter");
                    ec.minicart.content();
                });
            });

            $('#up_loginName-hover').hover(function () {
                if (ec.checkBrowerIE()) {
                    var act = document.activeElement.id;
                    if (act == 'search-kw') {
                        $("#search-kw").blur();
                    }
                }

                $(this).unbind("mouseenter");
            }, function () {
                $(this).bind("mouseenter", function () {
                    if (ec.checkBrowerIE()) {
                        var act = document.activeElement.id;
                        if (act == 'search-kw') {
                            $("#search-kw").blur();
                        }
                    }

                    $(this).unbind("mouseenter");
                });
            });

        }
        catch (err) {
            // console.log(err);
        }

    });
    // 更新购物车数字
    $(function () {
        ec.minicart.updateMiniCartNum();
        $('.j-hungBar .hungBar-cart').hover(function () {
            ec.minicart.updateMiniCartNum();
        });
    });
</script>
<script>
    (function () {
        var bp = document.createElement('script');
        var curProtocol = window.location.protocol.split(':')[0];
        if (curProtocol === 'https') {
            bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
        }
        else {
            bp.src = 'http://push.zhanzhang.baidu.com/push.js';
        }
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(bp, s);
    })();
</script>

<script>


    function pushMyOrderMsg() {
        ec.account.afterLogin(function () {
            window.location.href = "https://www.vmall.com/member/order?t=1546868362532timestamp";
        });
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000301", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000301", "link", value]);
    }

    function pushMyCartMsg() {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000401", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000401", "link", value]);
    }


    function pushCartProMsg(skuId, url, location) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuId,
                    "URL": url,
                    "location": location,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000402", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000402", "link", value]);
    }

    function pushFootAdvertMsg(name, url) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "name": name,
                    "URL": url,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000501", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000501", "link", value]);
    }


    $(".fl").find("dd").find("a").bind("click", function () {
        var HREF = "";
        HREF = this.href;
        var name = this.innerHTML;
        if (HREF == null || HREF == "") {
            return;
        }
        if (this.id == "tools-nav-service-robotim-button") {
            name = "在线客服";
        }
        if (this.className == "service-btn btn-report") {
            name = "不良信息举报";
        }
        pushFootAdvertMsg(name, HREF);
    });


    $(".footer-warrant-area.clearfix").find("p").find("a").click(function () {
        var url = $(this).attr("href");
        var value = {};
        if (url != "" && url != null) {
            if ($(this).attr("class") == "fl") {
                value = {
                    "UID": ec.util.cookie.get("uid"),
                    "TID": getPtid(),
                    "TIME": getTime(),
                    "CONTENT":
                        {
                            "ADID": $(this).find("img").attr("src"),
                            "URL": url,
                            "click": "1"
                        }
                };
            }
            else {
                value = {
                    "UID": ec.util.cookie.get("uid"),
                    "TID": getPtid(),
                    "TIME": getTime(),
                    "CONTENT":
                        {
                            "name": $(this).html(),
                            "URL": url,
                            "click": "1"
                        }
                };
            }
            ec.account.dapPushMsg("300000502", value, "click");
            ec.code.addAnalytics({hicloud: true});
            _paq.push(["trackLink", "300000502", "link", value]);

        }
        else {
            return;
        }
    });

    function pushRightHelpMsg(buttonName) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": buttonName,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300000601", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000601", "link", value]);
    }


    jump = function (url, obj) {
        if (typeof(obj.html()) != "undefined" && obj.html() != null && obj.html() != "") {
            pushFootAdvertMsg($(this).html(), url);
        }
        var win = window.open(url, "_blank");
        win.opener = null;
    }

    function pushProRelationMsg(productId, column) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "productId": productId,
                    "row": "1",
                    "column": column,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300020601", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020601", "link", value]);

    }

    function pushProHotMsg(skuCode) {
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUCode": skuCode,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300020701", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020701", "link", value]);

    }
</script>

<script type="text/javascript" id="footerToken"></script>
</body>
</html>