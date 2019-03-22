<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        var imagePath = 'https://res.vmallres.com/20190107/images';
        var domainAccount = '//www.vmall.com';
        var isUseAccount = 'false';
        var upBindPhoneAddr = 'https://hwid1.vmall.com/oauth2/userCenter/bindAccount/bindMobileAccount_1.jsp?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
        var dominWapRecycle = 'https://coop.aihuishou.com/huawei?app=false';
        var domainCds = 'https://cds.vmall.com';
        var domainIps = 'https://cashier.vmall.com/cashier/voucher';
        var scriptPath = 'https://res9.vmallres.com/20190107/js';
        var domainAms = 'https://act.vmall.com';
        var domainUc = 'https://member.vmall.com';
        var openApiDomain = 'https://openapi.vmall.com';
        var addressFrontRegex = '[A-Za-z0-9０-９ａ-ｚＡ-Ｚ一-龥.?!,。？！，、；：＇＂（）［］｛｝;:&#039;&#034;()\\[\\]{}──·····．《》〈〉＜＞.《》〈〉&lt;&gt;·—＿＿＿＿＊____*□=／\/▲●～~……→＠＃@#￥％＆＊%&amp;*\\\\——－＝＼　 -]{1,}';
        var easeBuyDomain = 'https://easy.vmall.com';
        var scriptPaths = 'https://res10.vmallres.com/20190107/js';
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

    <title></title>

    <link href="css/userManager-css/ec.core.base.min.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/main.min.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/p.main.min.css" rel="stylesheet" type="text/css">

    <script src="js/public-reception/jquery.qrcode.min.js" namespace="ec"></script>
    <script src="js/public-reception/coupon.min.js" namespace="ec"></script>
    <script src="js/jquery-1.8.3.js"></script>
</head>
<body class="wide">
<div class="top-banner" id="top-banner-block"></div>
<img src="images/userManager-imager/icon-common.png" class="hide">

<div class="shortcut">
    <div class="layout">
        <div class="s-sub">
            <ul>
                <li><a href="index.jsp">首页</a></li>
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
                                <div class="dropdown-navs-icon"><a href="index.jsp">商城首页</a></div>
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

<div class="header">
    <div class="layout">
        <div class="left">
            <!-- 2017-02-15-logo-start -->
            <div class="logo">
                <a href="index.jsp" title="Vmall.com - 商城">
                    <img src="images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png" alt="Vmall.com - 商城"/></a>
            </div>
            <!-- 2017-02-15-logo-end -->

            <!-- 2017-06-19-导航-start -->
            <div class="naver">
                <ul id="naver" class="clearfix">
                    <li id="zxnav_0" data-id="0">
                        <a href="/queryOCproduct?oneCategoryId=1" target="_blank"><span>手机</span></a>
                    </li>
                    <li id="zxnav_1" data-id="1">
                        <a href="queryOCproduct?oneCategoryId=2" target="_blank"><span>笔记本 &amp; 平板</span></a>
                    </li>
                    <li id="zxnav_2" data-id="2">
                        <a href="queryOCproduct?oneCategoryId=3" target="_blank"><span>智能穿戴</span></a>
                    </li>
                    <li id="zxnav_3" data-id="3">
                        <a href="queryOCproduct?oneCategoryId=4" target="_blank"><span>智能家居</span></a>
                    </li>
                    <li id="zxnav_4" data-id="4">
                        <a href="queryOCproduct?oneCategoryId=5" target="_blank"><span>通用配件</span></a>
                    </li>
                </ul>
            </div>
            <div class="naver-sub hide" id="naver-sub-category">
                <div id="naverSub00" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="queryOCproduct?oneCategoryId=1" target="_blank" class="">全部手机></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="queryTCproduct?twoCategoryId=1" target="_blank" class="fl">荣耀</a>
                            <a href="queryTCproduct?twoCategoryId=2" target="_blank" class="fl">HUAWEI P系列</a>
                            <a href="queryTCproduct?twoCategoryId=3" target="_blank" class="fl">荣耀畅玩系列</a>
                            <a href="queryTCproduct?twoCategoryId=4" target="_blank" class="fl">HUAWEI Mate系列</a>
                            <a href="queryTCproduct?twoCategoryId=5" target="_blank" class="fl">HUAWEI nova系列</a>
                            <a href="queryTCproduct?twoCategoryId=6" target="_blank" class="fl">华为畅享系列</a>
                            <a href="queryTCproduct?twoCategoryId=7" target="_blank" class="fl">HUAWEI 麦芒系列</a>
                            <a href="queryTCproduct?twoCategoryId=8" target="_blank" class="fl">移动4G+专区</a>
                        </div>
                    </div>

                    <ul id="zxnav_0_prolist" class="grid-list clearfix">
                        <c:forEach items="${queryPhone}" var="mmm">
                            <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                <a class="thumb" target="_blank" href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
                                    <p class="grid-img"><img src="<%=path%>/hw/${mmm.logo}"></p>
                                    <div class="grid-title">${mmm.productName}</div>
                                    <p class="grid-price">${mmm.productPrice}</p>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div id="naverSub01" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="queryOCproduct?oneCategoryId=2" target="_blank" class="">全部笔记本 &amp; 平板></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="queryTCproduct?twoCategoryId=9" target="_blank" class="fl">平板电脑</a>
                            <a href="queryTCproduct?twoCategoryId=10" target="_blank" class="fl">笔记本电脑</a>
                            <a href="queryTCproduct?twoCategoryId=11" target="_blank" class="fl">笔记本配件</a>
                        </div>
                    </div>

                    <ul id="zxnav_1_prolist" class="grid-list clearfix">

                        <c:forEach items="${queryCp}" var="mp">
                            <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                <a class="thumb" target="_blank" href="<%=path%>/queryByIdProduct?productId=${mp.productId}">
                                    <p class="grid-img"><img src="<%=path%>/hw/${mp.logo}"></p>
                                    <div class="grid-title">${mp.productName}</div>
                                    <p class="grid-price">${mp.productPrice}</p>
                                </a>
                            </li>
                        </c:forEach>

                        <!--通过添加current 来实现 hover效果-->
                    </ul>
                </div>
                <div id="naverSub02" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="queryOCproduct?oneCategoryId=3" target="_blank" class="">全部智能穿戴></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="queryTCproduct?twoCategoryId=12" target="_blank" class="fl">手环</a>
                            <a href="queryTCproduct?twoCategoryId=13" target="_blank" class="fl">手表</a>
                            <a href="queryTCproduct?twoCategoryId=14" target="_blank" class="fl">VR</a>
                        </div>
                    </div>

                    <ul id="zxnav_2_prolist" class="grid-list clearfix">

                        <c:forEach items="${queryWatch}" var="qw">
                            <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                <a class="thumb" target="_blank" href="<%=path%>/queryByIdProduct?productId=${qw.productId}">
                                    <p class="grid-img"><img src="<%=path%>/hw/${qw.logo}"></p>
                                    <div class="grid-title">${qw.productName}</div>
                                    <p class="grid-price">${qw.productPrice}</p>
                                </a>
                            </li>
                        </c:forEach>

                        <!--通过添加current 来实现 hover效果-->
                    </ul>
                    <input id="zxnav_2_skuIds" type="hidden"
                           value="10086253509221,10086354651877,10086455419044,10086119759478,10086949141018,10086972979696,86471537,">
                </div>
                <div id="naverSub03" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="queryOCproduct?oneCategoryId=4" target="_blank" class="">全部智能家居></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="queryTCproduct?twoCategoryId=15" target="_blank" class="fl">路由器</a>
                            <a href="queryTCproduct?twoCategoryId=16" target="_blank" class="fl">电视盒子</a>
                            <a href="queryTCproduct?twoCategoryId=17" target="_blank" class="fl">照明</a>
                            <a href="queryTCproduct?twoCategoryId=18" target="_blank" class="fl">清洁</a>
                            <a href="queryTCproduct?twoCategoryId=19" target="_blank" class="fl">子母/分布式路由</a>
                            <a href="queryTCproduct?twoCategoryId=20" target="_blank" class="fl">电力猫/wifi放大器</a>
                            <a href="queryTCproduct?twoCategoryId=21" target="_blank" class="fl">随行wifi</a>
                            <a href="queryTCproduct?twoCategoryId=22" target="_blank" class="fl">节能</a>
                            <a href="queryTCproduct?twoCategoryId=23" target="_blank" class="fl">环境</a>
                            <a href="queryTCproduct?twoCategoryId=24" target="_blank" class="fl">安防</a>
                            <a href="queryTCproduct?twoCategoryId=25" target="_blank" class="fl">健康</a>
                            <a href="queryTCproduct?twoCategoryId=26" target="_blank" class="fl">厨电</a>
                            <a href="queryTCproduct?twoCategoryId=27" target="_blank" class="fl">影音</a>
                            <a href="queryTCproduct?twoCategoryId=28" target="_blank" class="fl">卫浴</a>
                            <a href="queryTCproduct?twoCategoryId=29" target="_blank" class="fl">其他</a>
                        </div>
                    </div>

                    <ul id="zxnav_3_prolist" class="grid-list clearfix">

                        <c:forEach items="${queryHome}" var="qh">
                            <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                <a class="thumb" target="_blank" href="<%=path%>/queryByIdProduct?productId=${qh.productId}">
                                    <p class="grid-img"><img src="<%=path%>/hw/${qh.logo}"></p>
                                    <div class="grid-title">${qh.productName}</div>
                                    <p class="grid-price">${qh.productPrice}</p>
                                </a>
                            </li>
                        </c:forEach>

                        <!--通过添加current 来实现 hover效果-->
                    </ul>
                    <input id="zxnav_3_skuIds" type="hidden"
                           value="10086429153459,10086794601109,10086943604110,10086061866500,10086477642869,190047935,10086231514149,">
                </div>
                <div id="naverSub04" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="queryOCproduct?oneCategoryId=5" target="_blank" class="">全部通用配件></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="queryTCproduct?twoCategoryId=30" target="_blank" class="fl">移动电源</a>
                            <a href="queryTCproduct?twoCategoryId=31" target="_blank" class="fl">耳机</a>
                            <a href="queryTCproduct?twoCategoryId=32" target="_blank" class="fl">音箱</a>
                            <a href="queryTCproduct?twoCategoryId=33" target="_blank" class="fl">自拍杆/支架</a>
                            <a href="queryTCproduct?twoCategoryId=34" target="_blank" class="fl">充电器/线材</a>
                            <a href="queryTCproduct?twoCategoryId=35" target="_blank" class="fl">U盘/存储卡</a>
                            <a href="queryTCproduct?twoCategoryId=36" target="_blank" class="fl">摄像机/镜头</a>
                            <a href="queryTCproduct?twoCategoryId=37" target="_blank" class="fl">智能硬件</a>
                            <a href="queryTCproduct?twoCategoryId=38" target="_blank" class="fl">生活周边</a>
                            <a href="queryTCproduct?twoCategoryId=39" target="_blank" class="fl">取卡针</a>
                        </div>
                    </div>

                    <ul id="zxnav_4_prolist" class="grid-list clearfix">

                        <c:forEach items="${queryParts}" var="qp">
                            <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                                <a class="thumb" target="_blank" href="<%=path%>/queryByIdProduct?productId=${qp.productId}">
                                    <p class="grid-img"><img src="<%=path%>/hw/${qp.logo}"></p>
                                    <div class="grid-title">${qp.productName}</div>
                                    <p class="grid-price">${qp.productPrice}</p>
                                </a>
                            </li>
                        </c:forEach>

                        <!--通过添加current 来实现 hover效果-->
                    </ul>
                </div>
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


<script>

    //显示导航下拉菜单商品数据
    function showProList(id) {
        //查询标志
        var flag = $("#" + id + "_flag").val();
        var skuIds = $("#" + id + "_skuIds").val();
        //未查询过且有商品时才能执行
    };
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

    (function () {
        /*
         *   专区导航下拉列表
         *   @version 1.2.0
         *   @update 2017-05-08
         *
         * */
        var $nav = $('.naver li'),
            $naverSub = $('.naver-sub'),
            navLen = $nav.length,
            navWidth = $nav.width(),
            navListCount = null,
            timer = null;

        $nav.bind({
            mouseenter: function () {
                var count = $(this).attr('data-id') || null,
                    $naverSubItem = $('#naverSub0' + count),
                    $this = $(this),
                    openItem = null;

                if ($naverSubItem.length <= 0) {
                    $naverSub
                        .children()
                        .slideUp(200);
                    clearTimeout(timer);
                    return;
                }
                navListCount = count;

                $naverSub
                    .children()
                    .each(function (index, item) {
                        if ($(this).css('display') == 'block') {
                            openItem = true;
                        }
                    });

                if (timer) clearTimeout(timer);

                if (openItem) {
                    showProList('zxnav_' + count);
                    $naverSub.show();
                    $naverSubItem
                        .show()
                        .unbind('mouseenter')
                        .mouseleave(function (e) {
                            itemsLeave.call(this, e, $naverSubItem);
                        })
                        .siblings()
                        .hide();

                } else {
                    showProList('zxnav_' + count);
                    timer = setTimeout(function () {
                        $naverSub
                            .show();
                        $naverSubItem
                            .slideDown(200)
                            .unbind('mouseenter')
                            .mouseleave(function (e) {
                                itemsLeave.call(this, e, $naverSubItem);
                            })
                        ;
                    }, 200);
                }
            },
            mouseleave: function (e) {
                var $target = $(e.target),
                    eX = e.pageX,
                    eY = e.pageY,
                    oX = $target.offset().left,
                    oY = $target.offset().top,
                    yy = oY - eY,
                    xx = oX - eX,
                    xx2 = eX - (oX + navWidth),
                    index = $nav.index(this),
                    $naverSubItem = $('#naverSub0' + navListCount);

                if (timer) clearTimeout(timer);

                $naverSubItem.mouseenter(function () {
                    if (timer) clearTimeout(timer);
                });

                //确认上划//第一个左滑动时//最后一个右滑动时
                if (yy <= 10 && yy > 0 || (xx <= 10 && xx > 0 && index == 0) || (xx2 <= 10 && xx2 > 0 && index == navLen - 1)) {
                    $naverSubItem.unbind('mouseleave');
                    $naverSub
                        .children()
                        .slideUp(300, function () {
                            $naverSub.hide();
                        })
                } else {
                    timer = setTimeout(function () {
                        $naverSubItem.unbind('mouseenter');
                        $naverSub
                            .children()
                            .slideUp(300, function () {
                                $naverSub.hide();
                            })
                    }, 200)
                }
            }
        });

        function itemsLeave(e, obj) {
            var $target = $(e.target),
                eX = e.pageX,
                eY = e.pageY,
                oX = $target.offset().left,
                oY = $target.offset().top,
                _this = $(this);

            clearTimeout(timer);
            //确认上划 并保证上划区域排除logo区域
            if ((oY - eY) <= 10 && (oY - eY) > 0 && (eX - oX) > 300) {
                _this
                    .show();
            } else {
                timer = setTimeout(function () {
                    _this.slideUp(200, function () {
                        $naverSub.hide();
                    });
                }, 200)
            }
        }
    })();
</script>


<div class="hr-10"></div>

<div class="g">
    <!--面包屑 -->
    <div class="breadcrumb-area fcn"><a href="index.jsp" title="首页">首页</a>&nbsp;>&nbsp;
        <a href='#' >${productInfo.oneCategory.oneCategoryName}</a>&nbsp;>&nbsp;
        <a href='#'>${productInfo.twoCategory.twoCategoryName}</a>&nbsp;>&nbsp;
        <span id="bread-pro-name">${productInfo.productName}</span>
    </div>
</div>
<div class="hr-10"></div>

<div id="pro-gift-box" class="hide">
    <div class="product-partscolor-layer" id="pro-gift-list-detail">

    </div>
</div>

<!-- 20170519-弹出层-加入购物车-start -->
<!--高保真未提供，用公用的弹框-->
<div class="product-shoppingcart hide">

</div>
<!-- 20170519-弹出层-加入购物车-end -->


<div class="product clearfix">
    <div class="left">
        <!-- 20170518-商品图片-start -->
        <div class="product-gallery">
            <div class="relative">
                <div class="product-gallery-img" id="pic-container">
                    <a id="product-img"
                       class='cloud-zoom' rel="adjustX: 10, adjustY:0, zoomWidth:400 , zoomHeight:400">
                        <img src="<%=path%>/hw/${productInfo.logo}" alt="${productInfo.productName}"/>
                    </a>
                </div>
            </div>
        </div>
        <!-- 20170518-商品图片-end -->
    </div>
    <div class="right relative">
        <div id="pro-add-success-mask" style="visibility:hidden;font-size:18px;width:348px;position: absolute;"></div>
        <%--提示继续购买还是继续逛逛--%>

        <div class="product-property clearfix relative" style="min-height:400px; height: auto; padding-bottom: 104px;">
            <div id="product-property-recommand">
                <!-- 20170518-商品简介-商品信息-start -->
                <div class="product-meta">
                    <h1 id="pro-name">${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].description}</h1>
                </div>
                <%--商品价格--%>
                <div class="product-info">
                    <div class="product-info-list clearfix">
                        <label>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</label>
                        <div class="product-price clearfix">
                            <div class="product-price-info">
                                <span id="pro-price" class="f24"><em>¥</em>${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].productPrice}</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 20180206-商品简介-end -->
                <div class="hr-20"></div>
                <!-- 20171024-商品简介-商品编码-start -->
                <div class="product-description clearfix">
                    <label>商品编码</label>
                    <div class="fl" id="pro-sku-code2">${productInfo.productCore}</div>
                </div>
                <div class="hr-5"></div>
                <div class="line"></div>
                <div class="hr-16"></div>
                <div id="pro-skus" class="">
                    <%--颜色--%>
                    <dl class="product-choose clearfix  product-choosepic"><label>选择颜色</label>
                        <div class="product-choose-detail ">
                            <ul>
                                <c:forEach items="${productInfo.colorCentres}" var="colorCentre" varStatus="va">
                                    <li class="attr1 <c:if test="${va.index eq 0}">selected</c:if>" colorCentreId="${colorCentre.productColor.productColorId}">
                                        <div class="sku">
                                            <a >
                                                <img src="<%=path%>/hw/${colorCentre.pictureColors.toArray()[0].pirctureColorUrl}">
                                                <p><span>${colorCentre.productColor.productColorName}</span></p>
                                            </a>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </dl>
                        <%--选择颜色更改版本的脚本--%>
                        <script>
                            $(document).ready(function(){
                                $(".attr1").click(function () {
                                    $(this).addClass("selected");
                                    $(this). siblings().removeClass("selected");
                                    var colorCentreId=$(this).attr("colorCentreId");
                                    $.getJSON("/querColorCentre",{"colorCentreId":colorCentreId},function(date){
                                        $("#pro-gallerys").css({left:0});//恢复轮播到启点
                                        $("#pro-gallerys").find("li").remove();
                                        for(var i=0;i<date.pictureColors.length;i++){
                                            var li="<li class='pictureColor'> <img src='<%=path%>/hw/"+date.pictureColors[i].pirctureColorUrl+"'></li>";
                                            $("#pro-gallerys").append(li);
                                        }
                                        $("#uLVerContre").find("li").remove();
                                        for(var i=0;i<date.verCentres.length;i++)
                                        {
                                            var li="<li class='attr2' verCentreId="+date.verCentres[i].verCentreId+" ><div class='sku'><a href='javascript:;'><p><span>"+date.verCentres[i].proVersions.proVersionsName+"</span></p></a></div></li>";
                                            $("#uLVerContre").append(li);
                                        }
                                        autoVerCentre();
                                        selectedVerCentre();
                                        gainColorAndCentre();
                                    })
                                });

                                /**
                                 * 自动选中第一个版本
                                 */
                                function autoVerCentre(){
                                    $("#uLVerContre").children("li:first-child").addClass("selected");

                                }
                                /*点击版本去查询版本信息*/
                                $(".attr2").live("click",function(){
                                    $(this).addClass("selected");
                                    $(this). siblings().removeClass("selected");
                                    var verCentreId=$(this).attr("verCentreId");
                                    $.getJSON("/queryVerContre",{"verCentreId":verCentreId},function(date){
                                        if(date !=null){
                                            $("#pro-name").text(date.description);
                                            $("#pro-price").html("<em>¥</em>"+date.productPrice);
                                            $("#main-parameter-content-10086772693857").html(date.parament);
                                        }
                                    });
                                    gainColorAndCentre();
                                });
                                /*根据版本id查询版本*/
                                function selectedVerCentre(){
                                    var verCentreId=$("#uLVerContre").children("li:first-child").attr("verCentreId");
                                    $.getJSON("/queryVerContre",{"verCentreId":verCentreId},function(date){
                                        if(date !=null){
                                            $("#pro-name").text(date.description);
                                            $("#pro-price").html("<em>¥</em>"+date.productPrice);
                                            $("#main-parameter-content-10086772693857").text(date.parament);
                                        }
                                    });
                                }
                                gainColorAndCentre();
                                /*选中版本和颜色时自动给已选商品添加内容*/
                                function gainColorAndCentre(){
                                    var colorSelected=document.getElementsByClassName("attr1 selected");
                                    var centreSelected=document.getElementsByClassName("attr2 selected");
                                    var color;
                                    var centre;
                                    for(var i=0;i<colorSelected.length;i++){
                                        color=colorSelected[i].innerText;
                                    }
                                    for(var i=0;i<centreSelected.length;i++){
                                        centre=centreSelected[i].innerText;
                                    }
                                    $("#pro-select-sku").text(color+"/"+centre);
                                }
                            });
                        </script>
                    <%--版本--%>
                    <dl class="product-choose clearfix "><label>选择版本</label>
                        <div class="product-choose-detail ">
                            <ul id="uLVerContre">
                                <c:forEach items="${productInfo.colorCentres.toArray()[0].verCentres}" var="verCentre" varStatus="va">
                                    <li class="attr2 <c:if test="${va.index eq 0}">selected </c:if>" verCentreId="${verCentre.verCentreId}" >
                                        <div class="sku">
                                            <a href="javascript:;">
                                                <p><span>${verCentre.proVersions.proVersionsName}</span></p>
                                            </a>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </dl>
                </div>
                <%--颜色轮播图--%>
                <div class="product-gallery-nav">
                    <a  class="product-gallery-back"></a>
                    <!--不可点击添加class="disabled"-->
                    <div class="product-gallery-thumbs">
                        <ul id="pro-gallerys">
                            <c:forEach items="${productInfo.colorCentres.toArray()[0].pictureColors}" var="pictureColor">
                                <li class="pictureColor">
                                    <img src="<%=path%>/hw/${pictureColor.pirctureColorUrl}"/>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <a class="product-gallery-forward"></a>
                </div>
                <%--小轮播图脚本--%>
                <script>
                    $(document).ready(function(){
                        /*小图标移入移除事件*/
                        $(".pictureColor").live("mouseover",function(){
                            $(this).addClass("current");
                            var $src=$(this).find("img").attr("src");
                            $("#product-img").find("img").attr("src",$src);
                        })
                        $(".pictureColor").live("mouseout",function(){
                            $(this).removeClass("current");
                        });
                        /*左箭头*/
                        $(".product-gallery-back").click(function(){
                            var wid=($(".pictureColor").length-5)*69;//先算出能移动多少距离
                            var margin=$('#pro-gallerys').css('left');//获取ul的left值
                            margin=margin.substring(0,margin.length-2);//去掉xp
                            var n=margin-69;//减去一个li的距离
                            if(Math.abs(n)<=wid){//判断距离的绝对值时否大于最大距离
                                $("#pro-gallerys").css({left:n});
                            }
                        });
                        /*右箭头*/
                        $(".product-gallery-forward").click(function(){
                            var wid=($(".pictureColor").length-5)*69;
                            var margin=$('#pro-gallerys').css('left');
                            margin=margin.substring(0,margin.length-2);
                            var n= parseInt(margin)+69;
                            if(Math.abs(n)<=wid && margin!=0) {
                                $("#pro-gallerys").css({left: n});
                            }
                        });
                    });
                </script>
                <%--商品购买操作--%>
                <div class="product-operation-main product-operation-location" style="min-height: 49px;">
                    <!-- 20170518-商品简介-已选择商品-start -->
                    <div class="product-description clearfix">
                        <label>已选择商品:</label>
                        <div id="pro-select-sku" class="product-selected">${productInfo.colorCentres.toArray()[0].productColor.productColorName} /${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].proVersions.proVersionsName}</div>
                    </div>
                    <!-- 20170518-商品简介-已选择商品-end -->


                    <!-- 20170518-商品简介-提交操作-start -->
                    <div id="product-operation" class="product-operation relative" style="display: block;">
                        <div class="clearfix">
                            <!-- 20170518-商品简介-购买数量-start -->
                            <div class="product-stock" id="pro-quantity-area">
                                <input id="pro-quantity" type="text" class="product-stock-text"
                                       value="1">
                                <p class="product-stock-btn">
                                    <a id="pro-quantity-plus" href="javascript:;">+</a>
                                    <a id="pro-quantity-minus" href="javascript:;">−</a>
                                </p>
                            </div>
                            <!-- 20170518-商品简介-购买数量-end -->
                            <div class="product-buttonmain">
                                <!-- 20170518-商品简介-按钮-start -->
                                <div id="pro-operation" class="product-button clearfix" style="visibility: visible;">
                                    <a href="javascript:;" class="product-button01">
                                        <span>加入购物车</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <script>
                        $(document).ready(function(){
                            /*点击加  添加件数 最大不超多五件*/
                            $("#pro-quantity-plus").click(function(){
                                var number=$("#pro-quantity").val();
                                if(number == 5){
                                    $("#pro-quantity").addClass("disabled");
                                }else{
                                    number++;
                                    $("#pro-quantity").val(number);
                                }
                            });
                            /*点击减号减少件数  */
                            $("#pro-quantity-minus").click(function(){
                                var number=$("#pro-quantity").val();
                                if(number == 1){
                                    $("#pro-quantity").addClass("disabled");
                                }else{
                                    number--;
                                    $("#pro-quantity").val(number);
                                }
                            });
                            /*加入购物车*/
                            $(".product-button01").click(function(){
                                var verCentreId=document.getElementsByClassName("attr2 selected");
                                var id=verCentreId[0].getAttribute("verCentreId");

                                var colorCenter=document.getElementsByClassName("attr1 selected");
                                var colorId=colorCenter[0].getAttribute("colorCentreId");

                                var number=$("#pro-quantity").val();
                                $.getJSON("/userManager/addShoppingCart",{"verCentreId":id,"number":number,"colorId":colorId},function(date){
                                    for (var key in date) {
                                        if (key == 'y') {
                                            var description= $("#pro-name").text()
                                            $(".box-right-2").find("p").text(description);
                                            $("#ol_box").css("display", "block");
                                        } else if (key == 's') {
                                            alert("请先登录");
                                        }
                                    }
                                })
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="hr-20"></div>

<div class="line"></div>


<!-- 20170519-商品详情-书签-start -->
<div class="product-tab" id="product-tab"><!--移到顶部的时候添加class="product-tab-top"-->
    <div class="layout relative" id="layoutRelative">
        <p>
            <a  id="pro-tab-feature" class="selected">商品详情<em></em></a>
            <a id="pro-tab-parameter">规格参数<em></em></a>
            <a  id="pro-tab-evaluate">用户评价<em></em><span></span></a>
        </p>
    </div>
</div>
<!-- 20170519-商品详情-书签-end -->

<!-- 商品详情图片 -->
<div id="pro-tab-feature-content" class="product-detail relative tit1">
    <div id="pro-detail-contents">
        <div id="pro-detail-content-10086904906073" class="pro-detail-see">
            <div id="kindPicture-10086904906073">
                <c:forEach items="${productInfo.pictureInfos}" var="pictureInfos">
                <p><img src="<%=path%>/hw/${pictureInfos.productUrl}" style=""/></p>
                </c:forEach>
                <p><br/></p>
            </div>
            <div id="detail-content-button-10086904906073" class="product-shade hide">
                <p>
                    <a id="pro-detail-down-btn-10086904906073" class="product-detail-btn">
                        查看全部产品详情
                    </a>
                </p>
            </div>
            <a id="pro-detail-up-btn-10086904906073" class="product-detail-btnup hide">收起全部产品详情</a>
        </div>
    </div>
</div>
<div id="hr60Detail" class="hr-60"></div>

<!-- 20170519-商品详情-end -->


<!-- 20170519-规格参数-start -->
<div id="productParameter" class="product-parameter tit2">
    <div class="layout" id="product-parameter-main">
        <h2 id="productParameterId" class="product-title">规格参数</h2>
        <div id="main-parameter-content-10086772693857" class="product-parameter-main clearfix hide"
             style="display: block;">
            ${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].parament}
            </ul>
        </div>
    </div>
    <div id="productDetailParameter" class="product-parameter-detail relative bg-gray">
    </div>
</div>

<div id="productCommentId" class="layout">
    <!-- 评价筛选标签 -->
    <div class="product-comment-tab clearfix">
        <ul class="clearfix">
            <li class=""><a href="javascript:;" extraType="1">最热门</a></li><!--选中 li 添加 class="current"-->
            <li><a href="javascript:;" extraType="2">有图</a></li>
            <li><a href="javascript:;" extraType="0">全部</a></li>
        </ul>
    </div>
    <div class="product-comment">
        <!--用户评价-->
        <ul id="pro-msg-list" class="product-comment-list">
            <li class="clearfix">
                <div class="product-comment-user">
                    <p class="product-comment-user-img">
                        <img src="https://res.vmallres.com/rms/comment/image/U0444/befc4020f074f731a9179baf.jpg">
                        <i class="icon-vip-level-0"></i>
                    </p>
                    <p class="product-comment-user-name">沫***兮</p>
                </div>
                <div class="product-user-comment">
                    <div class="product-user-comment-detial">
                        <div class="h clearfix">
                            <div class="product-star"><span class="starRating-area"><s style="width:100%"></s></span>
                            </div>
                            <div class="product-user-comment-impress">
                                <dl></dl>
                            </div>
                            <div class="fr">
                                <a href="javascript:;" class="product-praise-btn">
                                    <span>0</span>
                                </a>
                            </div>
                        </div>
                        <div class="product-user-comment-word" id="10086789934944-59235383843280">
                            非常好看&nbsp;&nbsp;又很好用&nbsp;&nbsp;快递也特别快<br>
                            都说比我的荣耀10好看😂<br>准备给我爸再买一部
                        </div>
                        <div class="user-comment-img">
                            <p class="img-small clearfix">
                                <a class="img-wrap">
                                    <img id="59235384128281" src="https://res.vmallres.com/rms/comment/image/U0444/80086000158205444/100/ce27853af12e437f499e1c55.jpg">
                                </a>
                                <a class="img-wrap">
                                    <img id="59235384128282" src="https://res.vmallres.com/rms/comment/image/U0444/80086000158205444/100/acf666735a156b2053da014e.jpg">
                                </a>
                            </p>
                        </div>
                        <div class="product-user-comment-time">2019-01-15 14:16:24</div>
                    </div>
                    <%--别人回复--%>
                    <div class="product-reply">
                        <div class="product-reply-detail" replycount="1">
                            <div class="product-admin-reply clearfix">
                                <div class="admin-user-img"><img
                                        src="https://res.vmallres.com/nwap/20170828/images/echannelWap/misc/defaultface_customer_service.png">
                                </div>
                                <dl>
                                    <dt class="red">华为商城客服</dt>
                                    <dd>亲真是好眼光，宝贝就知道自己远近都迷人，横竖都惹人喜欢哦。</dd>
                                    <dd><a href="javascript:;" class="product-admin-praise-btn" pid="10086789934944"
                                           commentid="59235383843280" replyid="59236035594353"
                                           type="1">赞客服（<span>0</span>）</a></dd>
                                    <dd></dd>
                                </dl>
                            </div>
                            <div class="product-reply-btn" style="display:none;"><a target="_blank"
                                                                                    href="/product/viewReply/10086789934944/59235383843280?t=1547536000675">查看全部<span>1</span>条回复</a>
                            </div>
                        </div>
                    </div>
                    <div class="product-reply">
                        <div class="product-reply-detail" replycount="1">
                            <div class="product-admin-reply clearfix">
                                <div class="admin-user-img"><img
                                        src="https://res.vmallres.com/nwap/20170828/images/echannelWap/misc/defaultface_customer_service.png">
                                </div>
                                <dl>
                                    <dt class="red">华为商城客服</dt>
                                    <dd>亲真是好眼光，宝贝就知道自己远近都迷人，横竖都惹人喜欢哦。</dd>
                                    <dd><a href="javascript:;" class="product-admin-praise-btn" pid="10086789934944"
                                           commentid="59235383843280" replyid="59236035594353"
                                           type="1">赞客服（<span>0</span>）</a></dd>
                                    <dd></dd>
                                </dl>
                            </div>
                            <div class="product-reply-btn" style="display:none;"><a target="_blank"
                                                                                    href="/product/viewReply/10086789934944/59235383843280?t=1547536000675">查看全部<span>1</span>条回复</a>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
        <!-- 20180117-没有评论-start -->
        <div class="product-comment-no hide" id="product-remark-comment-no">该商品暂无评价</div>
        <!-- 20180117-没有评论-end -->
        <!-- 20170519-分页-start -->
        <div class="product-page">
            <div id="evaluatePageNumber" class="product-page-info"></div>
            <div id="pro-msg-pager" class="pager">
                <ul>
                    <li class="pgNext link first">|&lt;</li>
                    <li class="pgNext link pre">&lt;</li>
                    <span class="qpages">
                        <li class="page-number link">1</li>
                        <li class="page-number link">2</li>
                        <li class="page-number link pgCurrent">3</li>
                        <li class="page-number link">4</li>
                        <li class="page-number link">5</li>
                        <li class="page-number link">6</li>
                        <li class="page-number link">7</li>
                        <li class="page-number link">8</li>
                        <li class="page-number link">9</li>
                        <li class="page-number link">10</li>
                        <li class="text">...</li>
                        <li class="page-number link page-number-last">78</li>
                    </span>
                    <li class="pgNext link next">&gt;</li>
                    <li class="pgNext link last">&gt;|</li>
                    <li class="text quickPager">
                        <span class="fl">第</span>
                        <div id="chatpage">
                            <input id="quickPager" class="pagenum fl" value="3" style="width:20px;">
                            <a id="enter" class="enter fl" href="javascript:void(0)"></a>
                        </div>
                        <span class="fl">&nbsp;/78&nbsp;页</span></li>
                </ul>
            </div>
        </div>
        <!-- 20170519-分页-end -->
    </div>
</div>
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
                        <li><a target="_blank" href="userManager/help.jsp" rel="nofollow">常见问题</a></li>
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
                       href="userManager/customer_service.jsp" target="_blank">
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
            <a id="ec_ui_confirm_yes" class="button-action-yes">
                <span>是</span>
            </a>
            <a id="ec_ui_confirm_no" class="button-action-no">
                <span>否</span>
            </a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!--新确认对话框-->
<div id="ec_ui_confirm_new" class="popup-area-new hide">
    <div class="b">
        <p id="ec_ui_confirm_new_msg"></p>
        <div class="popup-button-area">
            <a id="ec_ui_confirm_new_yes" class="box-button-style-1">
                <span>是</span>
            </a>
            <a id="ec_ui_confirm_new_no" class="box-button-style-1">
                <span>否</span>
            </a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down-new"></s></div>
</div>

<!-- 2017-02-15-底部-start -->
<div class="footer-container">
    <div class="footer">
        <div class="footer-warrant-area clearfix"><p class="footer-warrant-logo fl">
            <a href="index.jsp">
                <img src="images/userManager-imager/HBHfAUYHLA0u5qMS8Nkr.png" title="vmall.png"
                     style="float:none;"/></a>
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
            <p><br/></p>
        </div>
    </div>
</div>


<div id="ol_box" class="ol_box_4" style="visibility: visible; position: fixed; top: 90px; left: 515px; z-index: 5000; display: none;">
    <div class="box-ct">
        <div class="box-header">
            <div class="box-tl"></div>
            <div class="box-tc">
                <div class="box-tc1"></div>
                <div class="box-tc2">
                </div>
            </div>
            <div class="box-tr"></div>
        </div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="table-layout:fixed;background:#fff;">
            <tbody>
            <tr>
                <td class="box-cl"></td>
                <td class="box-cc">
                    <div class="box-content" style="height: auto;">

                        <div class="b">
                            <div class="pro-add-success">
                                <dl>
                                    <dt><s></s></dt>
                                    <dd>
                                        <div class="box-right-2">
                                            <p></p>
                                        </div>
                                        <div class="box-button">
                                            <%--关闭提示框留在本页面--%>
                                            <a href="<%=path%>/huawei" class="box-cancel"  >再逛逛</a>
                                                <%--跳到购物车页面--%>
                                        </div>
                                    </dd>
                                </dl>
                            </div>
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
</body>
</html>