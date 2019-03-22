<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <script src="./修改订单_个人中心_华为商城_files/push.js.下载"></script>
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
        var imagePath = 'https://res.vmallres.com/20190129/images';
        var domainAccount = '//www.vmall.com';
        var isUseAccount = 'false';
        var upBindPhoneAddr = 'https://hwid1.vmall.com/oauth2/userCenter/bindAccount/bindMobileAccount_1.jsp?lang=zh-cn&amp;themeName=cloudTheme&amp;reqClientType=26';
        var dominWapRecycle = 'https://coop.aihuishou.com/huawei?app=false';
        var domainCds = 'https://cds.vmall.com';
        var domainIps = 'https://cashier.vmall.com/cashier/voucher';
        var scriptPath = 'https://res9.vmallres.com/20190129/js';
        var domainAms = 'https://act.vmall.com';
        var domainUc = 'https://member.vmall.com';
        var openApiDomain = 'https://openapi.vmall.com';
        var addressFrontRegex = '[A-Za-z0-9０-９ａ-ｚＡ-Ｚ一-龥.?!,。？！，、；：＇＂（）［］｛｝;:&#039;&#034;()\\[\\]{}──·····．《》〈〉＜＞.《》〈〉&lt;&gt;·—＿＿＿＿＊____*□=／\/▲●～~……→＠＃@#￥％＆＊%&amp;*\\\\——－＝＼　 -]{1,}';
        var easeBuyDomain = 'https://easy.vmall.com';
        var scriptPaths = 'https://res10.vmallres.com/20190129/js';
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
                                location.href = domainWap + "/honor";
                            } else if (isHuawei) {
                                location.href = domainWap + "/huawei";
                            } else if (isRecyle) {
                                location.href = dominWapRecycle;
                            } else if (isNotice) {
                                var wapUri = domainWap
                                    + uri.substring(uri.indexOf("/notice"));
                                location.href = wapUri;
                            } else if (isList) {
                                var wapUri = domainWap + "/category/detail"
                                    + uri.substring(uri.indexOf("/list") + 5)
                                    + uri.substring(uri.indexOf("/list") + 5);
                                location.href = wapUri;
                            } else {
                                location.href = domainWap;
                            }
                        } else if (!redirectWap == "1" && isProDetail) {
                            var wapUri = domainWap + '/product/' + uri.match(/\/(\d+)\.html/)[1] + '.html';
                            location.href = wapUri;
                        }
                    }
                }
            } catch (err) {
            }
        })();

        if (!String.prototype.transHtmlAttribute) {
            String.prototype.transHtmlAttribute = function () {
                var a = this;
                var tmp = document.createElement("textarea");
                tmp.innerHTML = a;
                a = tmp.value;
                return a;
            }
        }

    </script>
    <title>修改订单_个人中心_华为商城</title>
    <link rel="shortcut icon" href="https://www.vmall.com/favicon.ico">
    <link href="../css/userManager-css/ec.core.base.min.css" rel="stylesheet" type="text/css">

    <link href="../css/userManager-css/main.min.css" rel="stylesheet" type="text/css">
    <script>ol.isIE7 = true;</script>
    <script>ol.isIE8 = true;</script>
    <![endif]-->
    <script src="../js/manager/jquery-1.4.4.min.js"></script>
</head>
<body class="wide">
<div class="top-banner" id="top-banner-block"></div>
<img src="./修改订单_个人中心_华为商城_files/icon-common.png" class="hide">
<!-- 20130605-qq-彩贝-start -->
<div class="qq-caibei-bar hide" id="caibeiMsg">
    <div class="layout">
        <div class="qq-caibei-bar-tips" id="HeadShow"></div>
        <div class="qq-caibei-bar-userInfo" id="ShowMsg"></div>
    </div>
</div>
<!-- 20130605-qq-彩贝-end -->

<div class="shortcut">
    <div class="layout">
        <div class="s-sub">
            <ul>
                <li><a href="../index.jsp">首页</a></li>
                <li><a href="#" target="_blank">商城官网1</a></li>
                <li><a href="#" target="_blank">商城官网2</a></li>
                <li><a href="#" target="_blank">企业购</a></li>
                <li class="s-hwep hide" id="li-enterprise-preferential"></li>
                <li><a href="#">Select Region</a></li>
            </ul>
        </div>

        <div class="s-main ">
            <img src="../images/userManager-imager/bg71.png" class="hide">
            <ul>
                <li id="unlogin_status">
                    <div id="top_unlogin" class="header-toolbar">
                        <!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
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

                <li><a href="order.jsp" timeType="timestamp">我的订单</a></li>

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
                                <style> .shortcut .dropdown-navs .dropdown-navs-icon:hover {
                                    color: #cb242b;
                                }</style>
                                <p><a href="../index.jsp"></a></p>
                                <div class="dropdown-navs-icon"><a href="../index.jsp">商城首页</a></div>
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
                            <script>
                                $(document).ready(function () {
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
                                    $(".button-minicart").click(function () {
                                        var shoppingCarts = [];
                                        var shoppingCartIds = document.getElementsByClassName("icon-choose");
                                        for (var i = 0; i < shoppingCartIds.length; i++) {
                                            var shoppingCartId = shoppingCartIds[i].getAttribute("shoppingCartId");
                                            shoppingCarts[i] = shoppingCartId;
                                        }
                                        if (products.length == 0) {
                                            alert("请选择商品");
                                        } else {
                                            window.location.href = "/userManager/queryByIdCart?cart=" + shoppingCarts.toString();
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

                                    <div class="minicart-pro-list minicart-pro-list-scroll hide"
                                         id="minicart-pro-list-block" style="display: block">
                                        <ul class="minicart-pro-list" id="minicart-goods-list">
                                            <c:forEach items="${shoppingCarts}" var="cart">
                                                <li class="minicart-pro-item ">
                                                    <div class="pro-info clearfix">
                                                        <div class="p-choose">
                                                            <i class="icon-choose" name="shoppingCat"
                                                               shoppingCartId="${cart.shoppingCartId}"></i>
                                                            <input type="hidden" name="productPrice"
                                                                   value="${cart.productPrice}">
                                                            <input type="hidden" name="number"
                                                                   value="${cart.productNumber}">
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
                                                            <input type="checkbox" name="giftId" class="hide"
                                                                   value="3102010000702">
                                                            <div class="p-price"><s></s>&nbsp;&nbsp;
                                                                <b>¥&nbsp;${cart.productPrice}</b><strong><em>x</em><span>${cart.productNumber}</span></strong>
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

<textarea id="selectRegion-tips" style="display: none;">&lt;!-- 20151105-全球语言弹出框-width:910px-start --&gt;
&lt;div class="box-content"&gt;&lt;div class="box-lan-choose"&gt;&lt;dl&gt;&lt;dt&gt;Asia Pacific&lt;/dt&gt;&lt;dd class="box-button"&gt;&lt;a class="box-choose" href="http://www.vmall.hk/"&gt;香港&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/in/"&gt;India&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/my/"&gt;Malaysia&lt;/a&gt;&lt;/dd&gt;&lt;/dl&gt;&lt;dl class="box-lan-choose-area"&gt;&lt;dt&gt;The United States&lt;/dt&gt;&lt;dd class="box-button"&gt;&lt;a class="box-choose" href="https://www.hihonor.com/us/"&gt;United States&lt;/a&gt;&lt;/dd&gt;&lt;/dl&gt;&lt;dl class="box-lan-choose-area"&gt;&lt;dt&gt;Europe&lt;/dt&gt;&lt;dd class="box-button"&gt;&lt;a class="box-choose" href="https://www.honor.ru/"&gt;Россия&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/fr/"&gt;France&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/de"&gt;Deutschland&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/it/"&gt;Italia&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/es/"&gt;España&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/uk/"&gt;UK&lt;/a&gt;&lt;/dd&gt;&lt;/dl&gt;&lt;dl class="box-lan-choose-area"&gt;&lt;dt&gt;Middle East&lt;/dt&gt;&lt;dd class="box-button"&gt;&lt;a href="http://www.vmall.hk/" target="_self" textvalue="Saudi Arabia"&gt;&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/ae-en/"&gt;United Arab Emirates&lt;/a&gt;&lt;a class="box-choose" href="https://www.hihonor.com/sa-en/"&gt;Saudi Arabia&lt;/a&gt;&lt;/dd&gt;&lt;/dl&gt;&lt;/div&gt;&lt;/div&gt;
&lt;!-- 20151105-全球语言弹出框-width:910px-end --&gt;
</textarea>

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
            ec.redirectTo("https://www.vmall.com/priority");
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

<textarea id="micro-cart-tpl" class="hide">&lt;!--#macro microCartList data--&gt;
&lt;!--#list data.itemInfos as item--&gt;
		&lt;!--#var classChoose='';--&gt;





            &lt;!--#var skuId='#'+item.skuId;--&gt;



             &lt;!--#if (item.subItems &amp;&amp; item.subItems.length &gt; 0)--&gt;
            &lt;!--#list item.subItems as sub--&gt;
 				&lt;!--#if ((classChoose) &amp;&amp; (classChoose != "true")  )--&gt;
   					&lt;!--#var  classChoose='false';--&gt;

   				&lt;!--/#if--&gt;
           		&lt;!--#if (sub.itemType == 'S1' || sub.itemType == 'S6')--&gt;
        				&lt;!--#var  classChoose='true';--&gt;
   					 &lt;!--#else--&gt;
            	&lt;!--/#if--&gt;
           		&lt;!--#if (sub.itemType == 'G' )--&gt;
        				&lt;!--#var gGift='true';--&gt;
            	&lt;!--/#if--&gt;
            	&lt;!--#if (sub.itemType == 'J' )--&gt;
        				&lt;!--#var jBuy='true';--&gt;
            	&lt;!--/#if--&gt;
	        &lt;!--/#list--&gt;
	       &lt;!--/#if--&gt;

	        &lt;!--#if (classChoose == 'true' )--&gt;
        	    &lt;li class="minicart-pro-item minicart-pro-item-suit &lt;!--#if ( (item.show))--&gt;disabled&lt;!--/#if--&gt;"&gt;
            &lt;!--#else--&gt;
                &lt;li class="minicart-pro-item &lt;!--#if ( (item.show)) --&gt;disabled&lt;!--/#if--&gt;"&gt;
            &lt;!--/#if--&gt;

            &lt;div class="pro-info clearfix"&gt;
           	&lt;!--#if (item.itemType=='B')--&gt;


                     &lt;!--#if (item.invalidCauseReason == 0) --&gt;
                        &lt;div class="p-choose"&gt;&lt;i class="&lt;!--#if (item.selected)--&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.itemCode}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;&lt;/div&gt;
                        &lt;input class="hide" id="checkbox-{#item.itemkd}" name="bundleIds" value="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;
                        &lt;input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;
                    &lt;!--#elseif ((item.invalidCauseReason == 7)&amp;&amp;( !item.numblimit   )&amp;&amp;(!item.show) )--&gt;
                         &lt;div class="p-choose"&gt;&lt;i class="&lt;!--#if (item.selected)--&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.itemCode}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;&lt;/div&gt;
                        &lt;input class="hide" id="checkbox-{#item.itemkd}" name="bundleIds" value="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;
                        &lt;input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;
                    &lt;!--#else--&gt;
                        &lt;div class="p-choose"&gt;&lt;i class="icon-choose-normal" id="icon-choose-{#item.itemCode}"&gt;&lt;/i&gt;&lt;/div&gt;
                        &lt;input class="hide" id="checkbox-{#item.itemCode}" name="bundleIds" value="{#item.itemCode}" type="checkbox" /&gt;
                        &lt;input class="hide" id="quantity-{#item.itemCode}" value="{#item.qty}" data-type="{#item.itemType}" type="text" /&gt;
                    &lt;!--/#if--&gt;

                    &lt;div class="p-img"&gt;
                        &lt;a href="/product/{#item.photoId}.html{#skuId}" title="" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.photoId}.html{#skuId}','{#item_index+1}')"&gt;
                            &lt;img src="https://res.vmallres.com/pimages/{#item.photoPath}78_78_{#item.photoName}" alt="{#item.itemName}" /&gt;
                        &lt;/a&gt;
                    &lt;/div&gt;

                    &lt;div class="p-name"&gt;
                        &lt;a href="/product/{#item.photoId}.html{#skuId}" title="{#item.itemName}" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.photoId}.html{#skuId}','{#item_index+1}')"&gt;{#item.itemName}&lt;/a&gt;
                    &lt;/div&gt;


            &lt;!--#else--&gt;
                    &lt;!--#if ((item.invalidCauseReason == 0) &amp;&amp;(!item.bnumblimit) &amp;&amp;(!item.numblimit)) --&gt;

                        &lt;div class="p-choose"&gt;
                        &lt;!--#if (item.itemType == "P") --&gt;
                        &lt;i class="&lt;!--#if (item.selected) --&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;
                         &lt;input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt;&gt;
            		  &lt;!--#else--&gt;
                        &lt;i class="&lt;!--#if (item.selected) --&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;
                        &lt;input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt;&gt;
                        &lt;!--/#if--&gt;
                        &lt;/div&gt;

                        &lt;input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;

                     &lt;!--#elseif ((item.invalidCauseReason == 7)&amp;&amp;( !item.numblimit  )&amp;&amp;(!item.show) )--&gt;

                                  &lt;div class="p-choose"&gt;
                        &lt;!--#if (item.itemType == "P") --&gt;
                        &lt;i class="&lt;!--#if (item.selected) --&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;
                         &lt;input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt;&gt;
            		  &lt;!--#else--&gt;
                        &lt;i class="&lt;!--#if (item.selected) --&gt;icon-choose&lt;!--#else--&gt;icon-choose-normal&lt;!--/#if--&gt;" id="icon-choose-{#item.itemkd}" onclick="ec.minicart.click(this)" value="{#item.skuId}" type="{#item.itemType}" data-itemId="{#item.itemId}"&gt;&lt;/i&gt;
                        &lt;input class="hide" name="skuIds" id="checkbox-{#item.itemkd}" value="{#item.skuId}" data-scode="{#item.itemCode}" data-itemId="{#item.itemId}" type="checkbox" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt;&gt;
                        &lt;!--/#if--&gt;
                        &lt;/div&gt;

                        &lt;input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" &lt;!--#if (item.selected)--&gt;checked="checked"&lt;!--/#if--&gt; /&gt;


                    &lt;!--#else--&gt;
                        &lt;div class="p-choose"&gt;&lt;i class="icon-choose-normal" id="icon-choose-{#item.skuId}"&gt;&lt;/i&gt;&lt;/div&gt;
                        &lt;input class="hide" name="skuIds" id="checkbox-{#item.skuId}" value="{#item.skuId}" type="checkbox" /&gt;
                        &lt;input class="hide" id="quantity-{#item.skuId}" value="{#item.qty}" data-type="{#item.itemType}" type="text" /&gt;
                    &lt;!--/#if--&gt;

        			&lt;!--#if ((item.attrsMap)&amp;&amp;(item.attrsMap.package_code)) --&gt;
        			 &lt;input class="hide" name="newBundle" id="bundle-{#item.itemkd}" value="{#item.attrsMap.package_code}" data-scode="&lt;!--#list item.subItems as sku--&gt;&lt;!--#if ((sku.itemType=='B')||(sku.itemType=='P'))--&gt;{#sku.itemCode},&lt;!--/#if--&gt;&lt;!--/#list--&gt;" type="checkbox" /&gt;
        			&lt;!--/#if--&gt;


                 	 &lt;div class="p-img"&gt;
                        &lt;a href="/product/{#item.productId}.html{#skuId}" title="" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.productId}.html{#skuId}','{#item_index+1}')"&gt;
                            &lt;img src="https://res.vmallres.com/pimages/{#item.photoPath}78_78_{#item.photoName}" alt="{#item.itemName}" /&gt;
                        &lt;/a&gt;
                    &lt;/div&gt;

                    &lt;div class="p-name"&gt;
                        &lt;a href="/product/{#item.productId}.html{#skuId}" title="{#item.itemName}" target="_blank" onclick = "pushCartProMsg('{#skuId}','/product/{#item.productId}.html{#skuId}','{#item_index+1}')"&gt;{#item.itemName}&lt;/a&gt;
                    &lt;/div&gt;
                 &lt;!--/#if--&gt;
                    &lt;div class="p-dec"&gt;
                        &lt;span class="p-slogan"&gt;

                        &lt;/span&gt;
                    &lt;/div&gt;
                    &lt;div class="p-status"&gt;

                        &lt;!--#if (gGift == "true") --&gt;
                        &lt;!--#list item.subItems as gif--&gt;
                         &lt;!--#if (gif.itemType=="G")--&gt;
                        &lt;input type="checkbox" name="giftId" class="hide" value="{#gif.itemCode}" /&gt;
                        &lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;
                        &lt;!--/#if--&gt;

                      	&lt;!--#if (   (item.showP)&amp;&amp;( (item.invalidCauseReason==0) ||  ( (item.invalidCauseReason==7)  &amp;&amp; (  !item.numblimit  )  )  )    ) --&gt;
 						&lt;div class="p-tags"&gt;此商品已失效&lt;/div&gt;
                        &lt;!--#else--&gt;
                        &lt;!--#if (item.invalidCauseReason == 1) --&gt;
                        &lt;div class="p-tags"&gt;此商品已失效&lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 2) --&gt;
                        &lt;div class="p-tags"&gt;此商品已失效 &lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 3) --&gt;
                        &lt;div class="p-tags"&gt;此商品已失效 &lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 4) --&gt;
                        &lt;div class="p-tags"&gt;此商品已失效 &lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 5) --&gt;
                        &lt;div class="p-tags"&gt;此商品暂不可购买 &lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 6) --&gt;
                        &lt;div class="p-tags"&gt;此商品暂时缺货 &lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 7) --&gt;
                        &lt;div class="p-tags"&gt;此商品限购{#item.invalidCauseLeftValue}件&lt;/div&gt;
                        &lt;!--#elseif (item.invalidCauseReason == 8) --&gt;
                        &lt;div class="p-tags"&gt;超过内购限额 &lt;/div&gt;
                         &lt;!--#elseif (item.invalidCauseReason == 9) --&gt;
                        &lt;div class="p-tags"&gt;此商品不在本渠道销售&lt;/div&gt;
                         &lt;!--#elseif (item.invalidCauseReason == 10) --&gt;
                        &lt;div class="p-tags"&gt;此商品已失效 &lt;/div&gt;
                        &lt;!--/#if--&gt;
                        &lt;!--/#if--&gt;

                        &lt;div class="p-price"&gt;
                            &lt;!--#if (item.salePrice != item.originalPrice) --&gt;&lt;s&gt;¥&nbsp;{#item.originalPrice.toFixed(2)}&lt;/s&gt;&nbsp;&nbsp;&lt;!--/#if--&gt;
                            &lt;b&gt;¥&nbsp;{#item.salePrice.toFixed(2)}&lt;/b&gt;&lt;strong&gt;&lt;em&gt;x&lt;/em&gt;&lt;span&gt;{#item.qty}&lt;/span&gt;&lt;/strong&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                &lt;/div&gt;

					&lt;!--#if ((item.itemType=='B')||(item.itemType=='P'))--&gt;
					&lt;div class="p-pack &lt;!--#if (item.show) --&gt;disabled&lt;!--/#if--&gt;"&gt;
                    &lt;span class="p-mini-tag-suit"&gt;套餐&lt;/span&gt;
                    &lt;a href="javascript:;" title="&lt;!--#list item.subItems as sku--&gt;&lt;!--#if ((sku.itemType=='B')||(sku.itemType=='P'))--&gt;{#sku.itemName}x{#sku.qty}&lt;!--/#if--&gt;&lt;!--/#list--&gt;"&gt;
                        &lt;!--#list item.subItems as sku--&gt;
                        &lt;!--#if ((sku.itemType=='B')||(sku.itemType=='P'))--&gt;
                        &lt;span&gt;
                        {#sku.itemName}&lt;em&gt;x{#sku.qty}&lt;/em&gt;
						&lt;/span&gt;
						&lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;
                    	&lt;/a&gt;
                	&lt;/div&gt;
					&lt;!--/#if--&gt;




				&lt;!--#if ((classChoose=='true') || (jBuy=='true'))--&gt;
                &lt;div class="pro-other clearfix" id={#classChoose}&gt;
                    &lt;ol&gt;
					    &lt;!--#list item.subItems as sub--&gt;
                        &lt;!--#if (sub.itemType == "S1") --&gt;

                        &lt;li class="&lt;!--#if (sub.invalidCauseReason != 0) --&gt;disabled&lt;!--/#if--&gt;"&gt;
                            &lt;div class="p-title"&gt;
                                &lt;span class="p-mini-tag-long"&gt;延保&lt;/span&gt;{#sub.itemName}
                            &lt;/div&gt;
                            &lt;input class="hide" name="extendIds" value="{#sub.skuId}" data-scode="{#sub.itemCode}" type="checkbox" data-id="{#sub.itemId}" /&gt;
                            &lt;div class="p-price"&gt;&lt;b&gt;¥&nbsp;{#sub.salePrice.toFixed(2)}&lt;/b&gt;&lt;strong&gt;&lt;em&gt;x&lt;/em&gt;&lt;span&gt;{#item.qty}&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;
                        &lt;/li&gt;

                        &lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;

	         			  &lt;!--#list item.subItems as sub--&gt;
                        &lt;!--#if (sub.itemType == "S6") --&gt;

                        &lt;li class="&lt;!--#if (sub.invalidCauseReason != 0) --&gt;disabled&lt;!--/#if--&gt;"&gt;
                            &lt;div class="p-title"&gt;
                                &lt;span class="p-mini-tag-extend"&gt;碎屏保&lt;/span&gt;{#sub.itemName}
                            &lt;/div&gt;
                            &lt;input class="hide" name="accidentIds" value="{#sub.skuId}" data-scode="{#sub.itemCode}" data-id="{#sub.itemId}" type="checkbox" /&gt;
                            &lt;div class="p-price"&gt;&lt;b&gt;¥&nbsp;{#sub.salePrice.toFixed(2)}&lt;/b&gt;&lt;strong&gt;&lt;em&gt;x&lt;/em&gt;&lt;span&gt;{#item.qty}&lt;/span&gt;&lt;/strong&gt;&lt;/div&gt;
                        &lt;/li&gt;

                        &lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;

            			&lt;!--#if (jBuy=="true")--&gt;
                        &lt;input type="hidden" id="preferIds_{#item.skuId}"
                        value="&lt;!--#list item.subItems as ea--&gt;&lt;!--#if (ea.itemType == "J") --&gt;{#ea.itemCode},&lt;!--/#if--&gt;&lt;!--/#list--&gt;"
                        skuids="&lt;!--#list item.subItems as ea--&gt;&lt;!--#if (ea.itemType == "J") --&gt;{#ea.skuId},&lt;!--/#if--&gt;&lt;!--/#list--&gt;"
                        newId="&lt;!--#list item.subItems as ea--&gt;&lt;!--#if (ea.itemType == "J") --&gt;{#ea.itemId},&lt;!--/#if--&gt;&lt;!--/#list--&gt;" /&gt;
                        &lt;!--/#if--&gt;

                        &lt;!--#list item.subItems as sub--&gt;
                         &lt;!--#if (sub.itemType == "J") --&gt;

                        &lt;li class="&lt;!--#if ((sub.Jlost)||(sub.invalidCauseReason!=0)) --&gt;disabled&lt;!--/#if--&gt;"&gt;
                            &lt;div class="p-title p-add"&gt;
                                &lt;span class="p-mini-tag-extend"&gt;加价购&lt;/span&gt;{#sub.itemName}
                            &lt;/div&gt;
                            &lt;div class="p-price"&gt;
                                &lt;!--#if (sub.salePrice != sub.originalPrice) --&gt;&lt;s&gt;¥&nbsp;{#sub.originalPrice.toFixed(2)}&lt;/s&gt;&nbsp;&nbsp;&lt;!--/#if--&gt;
                                &lt;b&gt;¥&nbsp;{#sub.salePrice.toFixed(2)}&lt;/b&gt;&lt;strong&gt;&lt;em&gt;x&lt;/em&gt;&lt;span&gt;{#sub.qty}&lt;/span&gt;&lt;/strong&gt;
                            &lt;/div&gt;
                        &lt;/li&gt;

                         &lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;

      				&lt;/ol&gt;
      			&lt;/div&gt;
				&lt;!--/#if--&gt;

				&lt;!--#if (gGift=="true")--&gt;
                &lt;input type="hidden" id="gift_sbomCodes_{#item.skuId}" value="&lt;!--#list item.subItems as gift--&gt;&lt;!--#if (gift.itemType == "G") --&gt;{#gift.skuId},&lt;!--/#if--&gt;&lt;!--/#list--&gt;" /&gt;
                &lt;div class="p-pack"&gt;
                    &lt;span class="p-mini-tag-suit"&gt;配&lt;/span&gt;
                    &lt;a href="javascript:;" style="cursor: default;" title="&lt;!--#list item.subItems as gift--&gt;&lt;!--#if (gift.itemType == "G") --&gt;{#gift.itemName}x{#gift.qty*item.qty},&lt;!--/#if--&gt;&lt;!--/#list--&gt;"&gt;
                        &lt;!--#list item.subItems as gift--&gt;&lt;!--#if (gift.itemType == "G") --&gt;
                        &lt;span class="&lt;!--#if (gift.invalidCauseReason != 0) --&gt;disabled&lt;!--/#if--&gt;"&gt;
                        {#gift.itemName}&lt;em&gt;x{#gift.qty*item.qty}&lt;/em&gt;
                        &lt;/span&gt;
						&lt;!--/#if--&gt;
                        &lt;!--/#list--&gt;
                    &lt;/a&gt;
                &lt;/div&gt;
                &lt;!--/#if--&gt;

            &lt;/li&gt;




      &lt;!--/#list--&gt;
&lt;!--/#macro--&gt;
</textarea>

<textarea class="hide" id="ec-binding-phone">    &lt;div id="ec-binding-phone-1" class="ec-binding-phone-box hide"&gt;
        &lt;!-- 20141011-绑定安全手机号提示-start --&gt;
        &lt;div class="box-phone01"&gt;
            &lt;div class="h"&gt;
                &lt;i&gt;&lt;/i&gt;
            &lt;/div&gt;
            &lt;div class="b"&gt;
                &lt;p class="title"&gt;绑定手机号码&lt;/p&gt;
                &lt;p&gt;为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号，&lt;em class="red"&gt;不绑定将不能提交订单。&lt;/em&gt;&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
            &lt;a class="box-ok" href="javascript:;" id="ec-binding-phone-url-1"&gt;&lt;span&gt;立即绑定&lt;/span&gt;&lt;/a&gt;&lt;/a&gt;
        &lt;/div&gt;
        &lt;!-- 20141011-绑定安全手机号提示-end --&gt;
    &lt;/div&gt;
    &lt;div id="ec-binding-phone-2" class="ec-binding-phone-box hide"&gt;
        &lt;!-- 20141424-绑定安全手机号提示-start --&gt;
        &lt;div class="box-phone01"&gt;
            &lt;div class="h"&gt;
                &lt;i&gt;&lt;/i&gt;
            &lt;/div&gt;
            &lt;div class="b"&gt;
                &lt;p class="title"&gt;绑定手机号码&lt;/p&gt;
                &lt;p&gt;请您在新打开的页面中完成绑定安全手机号操作，完成绑定后请根据您的情况点击下面的按钮。&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
            &lt;a class="box-cancel" href="javascript:;" id="ec-binding-phone-url-2"&gt;&lt;span&gt;重新绑定&lt;/span&gt;&lt;/a&gt;
            &lt;a class="box-ok" href="javascript:;" onclick="ec.binding.resetShow()"&gt;&lt;span&gt;绑定成功&lt;/span&gt;&lt;/a&gt;
        &lt;/div&gt;
        &lt;!-- 20141424-绑定安全手机号提示-end --&gt;
    &lt;/div&gt;
    &lt;div id="ec-binding-phone-3" class="ec-binding-phone-box hide"&gt;
        &lt;!-- 20141424-安全手机号绑定提示失败-start --&gt;
        &lt;div class="box-phone01"&gt;
            &lt;div class="h"&gt;
                &lt;i&gt;&lt;/i&gt;
            &lt;/div&gt;
            &lt;div class="b"&gt;
                &lt;p class="title"&gt;对不起，您未成功绑定手机号&lt;/p&gt;
                &lt;p&gt;为了您在商城正常购物、保护您的权益，请您绑定一个手机号码以享受华为商城的所有服务。&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
            &lt;a href="javascript:;" class="box-ok" onclick="ec.binding.showOk()" id="ec-binding-phone-url-3" &gt;&lt;span&gt;立即绑定&lt;/span&gt;&lt;/a&gt;
        &lt;/div&gt;
        &lt;!-- 20141424-安全手机号绑定提示失败-end --&gt;
    &lt;/div&gt;
    &lt;div id="ec-binding-phone-4" class="ec-binding-phone-box hide"&gt;
        &lt;!-- 20150824-手机号绑定未绑定-start --&gt;
        &lt;div class="box-phone01"&gt;
            &lt;div class="h"&gt;
                &lt;i&gt;&lt;/i&gt;
            &lt;/div&gt;
            &lt;div class="b"&gt;
                &lt;p class="title"&gt;绑定手机号码&lt;/p&gt;
                &lt;p&gt;为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号；&lt;em class="red"&gt;自&lt;/em&gt;&lt;em id="bindEndDate4State4" class="red"&gt;&lt;/em&gt;&lt;em class="red"&gt;号起，若不绑定将不能提交订单。&lt;/em&gt;&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
            &lt;a class="box-cancel" href="javascript:;" onclick="ec.binding.closeState4();"&gt;&lt;span&gt;下次再说&lt;/span&gt;&lt;/a&gt;
            &lt;a class="box-ok" href="javascript:;" id="ec-binding-phone-url-4"&gt;&lt;span&gt;立即绑定&lt;/span&gt;&lt;/a&gt;
        &lt;/div&gt;
        &lt;!-- 20150824-安全手机号绑定提示失败-end --&gt;
    &lt;/div&gt;
    &lt;div id="ec-binding-phone-5" class="ec-binding-phone-box hide"&gt;
        &lt;!-- 20141424-安全手机号绑定提示失败-start --&gt;
        &lt;div class="box-phone01"&gt;
            &lt;div class="h"&gt;
                &lt;i&gt;&lt;/i&gt;
            &lt;/div&gt;
            &lt;div class="b"&gt;
                &lt;p class="title"&gt;绑定手机号码&lt;/p&gt;
                &lt;p&gt;您输入的手机已被注册，您可以选择使用手机号重新登录或者重新绑定手机！&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
            &lt;a class="box-cancel" href="https://www.vmall.com/account/login" id="ec-binding-phone-reLogin-5"&gt;&lt;span&gt;重新登录&lt;/span&gt;&lt;/a&gt;')
            &lt;a class="box-ok" href="javascript:;" id="ec-binding-phone-url-5"&gt;&lt;span&gt;重新绑定&lt;/span&gt;&lt;/a&gt;
        &lt;/div&gt;
        &lt;!-- 20141424-安全手机号绑定提示失败-end --&gt;
    &lt;/div&gt;
</textarea>
<script type="text/javascript" id="miniCartToken"></script><!-- 2017-02-15-头部-start -->
<div class="header">
    <div class="layout">
        <div class="left">
            <!-- 2017-02-15-logo-start -->
            <div class="logo">
                <a href="../index.jsp" title="Vmall.com - 商城"
                   onclick="pushLogoClickMsg('../images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png','#')">
                    <img src="../images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png"
                         alt="Vmall.com - 商城"/></a>
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
                                <a class="thumb" target="_blank"
                                   href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
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
                                <a class="thumb" target="_blank"
                                   href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
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
                                <a class="thumb" target="_blank"
                                   href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
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
                                <a class="thumb" target="_blank"
                                   href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
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
                                <a class="thumb" target="_blank"
                                   href="<%=path%>/queryByIdProduct?productId=${mmm.productId}">
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


            <script>
                function pushNaverCategoryMsg(index, url) {
                    var skuids = $("#zxnav_" + index + "_skuIds").val().split(",");
                    var skuid = skuids[index];
                    var value = {
                        "UID": ec.util.cookie.get("uid"),
                        "TID": getPtid(),
                        "TIME": getTime(),
                        "CONTENT":
                            {
                                "SKUID": skuid,
                                "URL": url,
                                "click": "1"
                            }
                    };
                    ec.code.addAnalytics({hicloud: true});
                    _paq.push(["trackLink", "300020202", "link", value]);
                }
            </script>
            <!-- 2017-06-19-导航-end -->
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
</div><!-- 2017-02-15-头部-end -->
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

    function pushHotSearchMsg(word) {
//热搜词上报
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "searchWord": word,
                    "type": "2",
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300090101", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300090101", "link", value]);
    };
    ec.ready(function () {
        ec.search.searchArr = JSON.parse('[{"activityUrl":"","fontColor":"","id":216,"inSearchBox":0,"isActivityWords":0,"priority":-2,"saleChannel":1,"tagType":0,"type":2,"word":"nova4"},{"id":226,"inSearchBox":0,"isActivityWords":0,"priority":-3,"saleChannel":1,"tagType":0,"type":2,"word":"HUAWEI&#x20;Mate&#x20;20"},{"activityUrl":"","fontColor":"","id":250,"inSearchBox":0,"isActivityWords":0,"priority":-11,"saleChannel":1,"tagType":0,"type":3,"word":"&#x8363;&#x8000;V20"},{"id":47,"inSearchBox":0,"isActivityWords":0,"priority":-12,"saleChannel":1,"tagType":0,"type":3,"word":"&#x8363;&#x8000;Magic2"},{"activityUrl":"","fontColor":"","id":254,"inSearchBox":0,"isActivityWords":0,"priority":-25,"saleChannel":1,"tagType":0,"type":1,"word":"&#x8363;&#x8000;V20"},{"activityUrl":"","fontColor":"","id":258,"inSearchBox":0,"isActivityWords":0,"priority":-26,"saleChannel":1,"tagType":0,"type":1,"word":"nova4"}]');
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
                        ec.redirectTo($(e.target).attr('href'));
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
    });
    ec.code.addService({
        showService: true,
        showTools: true,
        live800Url4Web: "http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&configID=10&location=B_002&chatfrom=web&channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af"
    });

    //头部logo点击上报
    function pushLogoClickMsg(adid, url) {
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
        ec.account.dapPushMsg("300020101", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020101", "link", value]);
    }

    //类别横向点击上报
    $("#naver").find("li").find("a").click(function () {
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
        ec.account.dapPushMsg("300020201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020201", "link", value]);
    });

    $(".s1.fl").find("a").click(function () {
        var url = $(this).attr("href");
        var name = $(this).html().substring(0, $(this).html().length - 1);
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
        ec.account.dapPushMsg("300020201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020201", "link", value]);
    });

    $(".s2.fl.clearfix").find("a").click(function () {
        var url = $(this).attr("href");
        var name = $(this).html();
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
        ec.account.dapPushMsg("300020201", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020201", "link", value]);
    });

    $(".grid-list.clearfix").find("li").find("a").live("click", function () {
        var num = $(this).parent().parent().attr("id").substring(6, 7);
        var index = $("#zxnav_" + num + "_prolist li").index($(this).parent());
        var skuid = $("#zxnav_" + num + "_skuIds").val();
        var skuids = skuid.split(",");
        var skuId = skuids[index];
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "SKUID": skuId,
                    "URL": this.href,
                    "click": "1"
                }
        };
        ec.account.dapPushMsg("300020202", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300020202", "link", value]);
    });
</script>
<script>
    //显示导航下拉菜单商品数据
    function showProList(id) {
        //查询标志
        var flag = $("#" + id + "_flag").val();
        var skuIds = $("#" + id + "_skuIds").val();

        var mediaPath = "https://res.vmallres.com/pimages/";
        //未查询过且有商品时才能执行
        if (skuIds != "" && flag == "no") {
            skuIds = skuIds.substring(0, skuIds.length - 1);
            var skuIdArr = skuIds.split(",");

            skuIdArr = removeDuplicatedItem(skuIdArr);

            //标记标志位
            $("#" + id + "_flag").val("yes");
            $.ajax({
                url: "/querySbomInfo.json?skuIdsStr=" + skuIds,
                async: true,//使用异步的Ajax请求
                type: "GET",
                dataType: "json",
                timeout: 10000,
                success: function (json) {
                    if (json.success) {
                        var infoMap = json.sbomInfoMap;
                        var html = '';
                        for (var i = 0; i < skuIdArr.length; i++) {
                            var skuId = skuIdArr[i];
                            var sbomInfo = json.sbomInfoMap[skuId];
                            if (sbomInfo != null) {
                                //商品图片URL
                                var imgPath = mediaPath + sbomInfo.photoPath + "142_142_" + sbomInfo.photoName;
                                //商品URL
                                var urlPath = "/product/" + sbomInfo.disPrdId + ".html";
                                //商品名称
                                //var proName = sbomInfo.sbomName;
                                var proName = $('#name_' + skuId).val();
                                var price;
                                //取得价格显示方式
                                var priceMode = sbomInfo.priceMode;
                                if (priceMode == 2 || sbomInfo.price == 0) {
                                    price = "<span>暂无报价</span>";
                                } else {
                                    price = "&yen;" + sbomInfo.price;
                                }
                                //一级分类导航名称
                                var oneNavName = $("#" + id + "_name").val();
                                var onShowName = "分类导航_" + oneNavName + "_" + sbomInfo.sbomCode;
                                //var clickContent="_paq.push(['trackLink','"+onShowName+"', 'link', ' ']);ec.code.addAnalytics({hicloud:true});";
                                html += '<li class="grid-items" onmouseenter="fixCurrent(this)"  onmouseleave="leaveCurrent(this)" >';
                                html += '     <a class="thumb" target="_blank" href="' + urlPath + '">';
                                html += '         <p class="grid-img">';
                                html += '             <img alt="" src="' + imgPath + '">';
                                html += '          </p>';
                                html += '          <div class="grid-title">' + proName + '</div>';
                                html += '          <p class="grid-price">' + price + '</p>';
                                html += '       </a>';
                                html += '  </li>';
                            }
                        }
                        $("#" + id + "_prolist").html(html);
                    }
                },
                error: function () {

                }
            });
        }
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

<div id="base_index" class="">

    <div class="hr-10"></div>
    <div class="g">
        <!--面包屑 -->
        <div class="breadcrumb-area fcn"><a href="https://www.vmall.com/index.html">首页</a>&nbsp;&gt;&nbsp;<em
                id="personCenter"><a href="https://www.vmall.com/member/">我的商城</a></em><em id="pathPoint">&nbsp;&gt;&nbsp;</em><span
                id="pathTitle">修改订单</span></div>
    </div>
    <div class="hr-10"></div>

    <div class="g">
        <div class="fr u-4-5"><!--合约机屏蔽专票 -->

            <!-- 20141212-栏目-start -->
            <div class="section-header">
                <div class="fl">
                    <h2><span>订单号：11013508947</span></h2>
                </div>
                <div class="fr">
                    <div class="section-header-button">
                        <a class="button-operate-edit-cancel" href="https://www.vmall.com/member/order?t=1549116423454">
                            <span>取消修改</span>
                        </a>
                        <a class="button-operate-edit" href="javascript:;"
                           onclick="ec.member.orderEdit.submit(); return false;" name="11013508947">
                            <span>确认修改</span>
                        </a>
                    </div>
                </div>
            </div>
            <!-- 20141212-栏目-end -->
            <div class="hr-50"></div>
            <!-- 20141226-订单编辑-start -->
            <div class="order-edit">
                <!-- 20141226-订单编辑-收货地址-start -->
                <div class="order-address">
                    <h3 class="title">收货人信息<b id="newAddress">[<a href="javascript:;"
                                                                  onclick="ec.member.orderEdit.myAddress.add()">使用新地址</a>]</b>
                    </h3>
                    <div class="order-address-list" id="order-address-list">
                        <ol>
                            <li id="myAddress-42850723" class="current">
                                <div class="address-main">
                                    <span class="address-mark">
                                        <i></i>寄送至
                                    </span>
                                    <input type="radio" class="radio" name="myAddress" id="input-myAddress42850723">
                                    <label class="address-info">
                                        <b>林孝煌</b>
                                        <span>湖南长沙天心区-&nbsp;伊莱克斯大道暮云路口汇杰机械有限公司</span>
                                    </label>
                                </div>
                                <div class="address-sub">
                                    <p class="a-edit">
                                        <a  href="https://www.vmall.com/member/updateToOrder-11013508947#edit">
                                            <span>编辑</span>
                                        </a>
                                    </p>
                                    <p class="a-del">
                                        <a title="删除" href="javascript:;">
                                            <span>删除</span>
                                        </a>
                                    </p>
                                    <p class="a-state">
                                        <span class="default">默认地址</span>
                                    </p>
                                </div>
                            </li>
                            <li id="myAddress-61687776">
                                <div class="address-main">
                                    <span class="address-mark">
                                        <i></i>寄送至
                                    </span>
                                    <input type="radio" class="radio" name="myAddress" id="input-myAddress61687776">
                                    <label class="address-info">
                                        <b>林先生</b>
                                        <span>广东深圳福田区福田街道&nbsp;福田街道35号</span>
                                    </label>
                                </div>
                                <div class="address-sub">
                                    <p class="a-edit">
                                        <a title="编辑" href="https://www.vmall.com/member/updateToOrder-11013508947#edit" class="edit">
                                            <span>编辑</span>
                                        </a>
                                    </p>
                                    <p class="a-del"><a title="删除" href="javascript:;"
                                                        class="del"><span>删除</span>
                                    </a>
                                    </p>
                                    <p class="a-state"><a title="设为默认收货地址" href="javascript:;"
                                                          class="set "><span>设为默认</span></a>
                                    </p>
                                </div>
                            </li>
                            <li id="myAddress-61687776">
                                <div class="address-main">
                                    <span class="address-mark">
                                        <i></i>寄送至
                                    </span>
                                    <input type="radio" class="radio" name="myAddress" id="input-myAddress61687776">
                                    <label class="address-info">
                                        <b>林先生</b>
                                        <span>广东深圳福田区福田街道&nbsp;福田街道35号</span>
                                    </label>
                                </div>
                                <div class="address-sub">
                                    <p class="a-edit">
                                        <a title="编辑" href="https://www.vmall.com/member/updateToOrder-11013508947#edit" class="edit">
                                            <span>编辑</span>
                                        </a>
                                    </p>
                                    <p class="a-del"><a title="删除" href="javascript:;"
                                                        class="del"><span>删除</span>
                                    </a>
                                    </p>
                                    <p class="a-state"><a title="设为默认收货地址" href="javascript:;"
                                                          class="set "><span>设为默认</span></a>
                                    </p>
                                </div>
                            </li>
                        </ol>
                    </div>
                    <input type="hidden" value="No need" id="randomFlag">
                    <!-- 20140813-订单-表单-地址-空数据-start -->
                    <div class="order-address-empty" id="order-address-empty" style="display: none;">您还没有收货地址，马上&nbsp;<a
                            href="javascript:;" onclick="ec.member.orderEdit.myAddress.add()">添加</a>&nbsp;吧！
                    </div><!-- 20140813-订单-表单-地址-空数据-end -->
                    <div id="address-more" class="hide" style="display: none;">
                        <a class="address-expand hide" href="javascript:;" title="更多地址"><span>更多地址</span></a>
                    </div>
                </div>
                <!-- 20141226-订单编辑-收货地址-end -->
                <div class="hr-50"></div>
                <!--add by dupengcong for 实名制合约机 2015-07-10 begin -->
                <!--add by dupengcong for 实名制合约机 2015-07-10 end -->

                <!-- 20160413-订单-表单-备注-start -->
                <!--
                <div class="order-com">
                    <div class="h"><h3>订单备注</h3></div>
                        <div class="b">
                            <div class="form-edit-panels">
                                <div class="form-edit-table">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                            <tr>
                                                <th>备注内容：</th>
                                                <td><span></span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="hr-50"></div>
                -->
                <!-- 20160413-订单-表单-备注-end -->

                <!-- 20160909-订单-表单-发票信息-start -->
                <div class="order-invoice">
                    <h3 class="title">发票信息<span>（注：如果商品由第三方卖家销售，发票内容由其卖家决定，发票由卖家开具并寄出）</span></h3>
                    <div class="b">
                        <table cellspacing="0" cellpadding="0" border="0">
                            <tbody>
                            <tr>
                                <th id="invoice-info-type">电子普通发票</th>
                                <td class="pdl-20">
                                    <span id="invoice-info-title">个人</span>

                                    <a class="pdl-20 blue" href="javascript:;" onclick="ec.order.invoice.popup.edit()">修改</a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <input type="hidden" id="huaweiTerminalName" name="huaweiTerminalName" value="华为终端（东莞）有限公司">
                        <input type="hidden" id="isProxyOrder" name="isProxyOrder" value="false">
                        <input type="hidden" id="invoiceLimitCorp-0" value="华为终端(东莞)有限公司">
                        <input type="hidden" id="invoiceLimitCorp-1" value="华为终端(东莞)有限公司">
                        <input type="hidden" id="invoiceLimitCorp-2" value="华为 终端(东莞)有限公司">
                        <input type="hidden" id="invoiceLimitCorp-3" value="华为终端 (东莞)有限公司">
                        <input type="hidden" id="invoiceLimitCorp-4" value="华为 终端(东莞)有限 公司">
                        <input type="hidden" id="invoiceLimitCorp-5" value="华为终端(东莞)有限 公司">
                        <input type="hidden" id="invoiceLimitCorp-6" value="华为终端 (东莞) 有限公司">
                        <input type="hidden" id="invoiceLimitCorp-7" value="华为 终端 (东莞)有限公司">
                        <input type="hidden" id="invoiceLimitCorp-8" value="华为终端(东莞) 有限公司">
                        <input type="hidden" id="invoiceLimitCorp-9" value="华为终端东莞有限公司">
                        <input type="hidden" id="invoiceLimitCorp-10" value="华为终端  (东莞) 有限公司">
                        <input type="hidden" id="invoiceLimitCorp-11" value="华为终端《东莞》有限公司">
                        <input type="hidden" id="invoiceLimitCorp-12" value="华为终端<东莞>有限公司">
                        <input type="hidden" id="invoiceLimitCorp-13" value="华为终端有限公司">
                        <input type="hidden" id="invoiceLimitCorp-14" value="华 为 终 端 有 限 公 司">
                        <input type="hidden" id="invoiceLimitCorp-15" value="华 为终端有限公司">
                        <input type="hidden" id="invoiceLimitCorp-16" value="华为 终端有限公司">
                        <input type="hidden" id="invoiceLimitCorp-17" value="华为终 端有限公司">
                        <input type="hidden" id="invoiceLimitCorp-18" value="华为终端 有限公司">
                        <input type="hidden" id="invoiceLimitCorp-19" value="华为终端有 限公司">
                        <input type="hidden" id="invoiceLimitCorp-20" value="华为终端有限 公司">
                        <input type="hidden" id="invoiceLimitCorp-21" value="华为终端有限公 司">
                        <input type="hidden" id="invoiceLimitCorp-22" value="华为终端有限公司，">
                        <input type="hidden" id="invoiceLimitCorp-23" value="华为终端有限公司.">
                        <input type="hidden" id="invoiceLimitCorp-24" value=".华为终端有限公司">
                        <input type="hidden" id="invoiceLimitCorp-25" value="华为终端有限公司北京分公司">
                        <input type="hidden" id="invoiceCorpMsg" value="华为商城销售实体为“华为终端有限公司”，购方主体不能与销方相同，请更换您的发票抬头">

                    </div>
                </div>
                <!-- 20160909-订单-表单-发票信息-end -->
                <div class="hr-50"></div>


                <!-- 20141226-订单编辑-商品清单-start -->
                <div class="order-edit-pro">
                    <!-- 20141223-商品清单-商品列表-start -->
                    <div class="order-pro-record">
                        <div class="list-group-caption">
                            <h3>商品清单
                            </h3>
                        </div>
                        <div class="list-group-title">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <thead>
                                <tr>
                                    <th class="col-pro first">商品名称</th>
                                    <th class="col-price">单价/元</th>
                                    <th class="col-quty">数量</th>
                                    <th class="col-pay">小计/元</th>
                                    <th class="col-state">状态</th>
                                    <th class="col-dely end">配送方式</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="list-group" id="list-group">
                            <div class="list-group-item">
                                <div class="o-pro">
                                    <table border="0" cellpadding="0" cellspacing="0">
                                        <tbody>
                                        <!--普通单品数量-->


                                        <tr>
                                            <input type="hidden" class="skuCodeQuanClass" value="1" id="2601010067401">
                                            <td class="col-pro-img">
                                                <p class="p-img">
                                                    <a title="HUAWEI Mate 20 X 6GB+128GB 全网通版（宝石蓝）" target="_blank"
                                                       href="https://www.vmall.com/product/10086211949427.html#10086058453007"
                                                       data-skuid="10086058453007">
                                                        <img src="./修改订单_个人中心_华为商城_files/100_100_1542769704670mp.png"
                                                             alt="HUAWEI Mate 20 X 6GB+128GB 全网通版（宝石蓝）">
                                                    </a>
                                                </p>
                                            </td>
                                            <td class="col-pro-info">
                                                <p class="p-name">
                                                    <a title="HUAWEI Mate 20 X 6GB+128GB 全网通版（宝石蓝）" target="_blank"
                                                       href="https://www.vmall.com/product/10086211949427.html#10086058453007">HUAWEI
                                                        Mate 20 X 6GB+128GB 全网通版（宝石蓝）</a>
                                                </p>
                                            </td>
                                            <td class="col-price">
                                                <em>¥</em>
                                                <span>4999.00</span>
                                            </td>
                                            <td class="col-quty">1</td>
                                            <td class="col-pay" rowspan="2">
                                                <em>¥</em>
                                                <span>4999.00</span>
                                            </td>
                                            <td class="col-state">--</td>
                                            <td class="col-dely  end" rowspan="2">
                                                <p>
                                                    <label class="inputbox">
                                                        <input class="radio" type="radio"
                                                               checked="checked"><span>默认物流</span><em><span
                                                            id="changeFree">0.00</span>元</em>
                                                    </label>
                                                </p>
                                            </td>
                                        </tr>

                                        <!--从属子商品集合-->
                                        <tr>
                                            <input type="hidden" class="skuCodeQuanClass" value="1" id="10116020121802">
                                            <td class="col-pro-img">
                                                <p class="p-img">
                                                    <a title="华为小天鹅蓝牙免提音箱（洛可可粉）" target="_blank"
                                                       href="https://www.vmall.com/product/2827.html#70327890"
                                                       data-skuid="70327890">
                                                        <img src="./修改订单_个人中心_华为商城_files/100_100_1539762879083mp.png"
                                                             alt="华为小天鹅蓝牙免提音箱（洛可可粉）">
                                                    </a>
                                                </p>
                                            </td>
                                            <td class="col-pro-info">
                                                <p class="p-name">

                                                    <b>配</b>
                                                    <a title="华为小天鹅蓝牙免提音箱（洛可可粉）" target="_blank"
                                                       href="https://www.vmall.com/product/2827.html#70327890">华为小天鹅蓝牙免提音箱（洛可可粉）</a>
                                                </p>
                                            </td>
                                            <td class="col-price">
                                                <em>¥</em>
                                                <span>0.00</span>
                                            </td>
                                            <td class="col-quty">1</td>
                                            <td class="col-state">--</td>
                                        </tr>
                                        <!--从属子商品集合结束 END-->

                                        <!--商品级优惠券使用-->


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 20141223-商品清单-商品列表-end -->
                    <!-- 20141223-商品清单-赠品列表-start -->
                    <!-- 20141223-商品清单-赠品列表-end -->

                    <!-- 20141223-商品清单-合计-start -->
                    <div class="order-pro-total">
                        <div class="fl"></div>
                        <div class="fr">
                            <div class="order-pro-cost">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tbody>
                                    <tr>
                                        <th>商品金额总计：</th>
                                        <td>
                                            ¥<span>4999.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>运费：</th>
                                        <td><em>¥</em><span id="deliveryFree">0.00</span></td>
                                    </tr>
                                    <tr>
                                        <th>使用优惠券：</th>
                                        <td><em>-&nbsp;¥</em><span id="couponValue">0.00</span></td>
                                    </tr>
                                    <tr>
                                        <th>使用积分：</th>
                                        <td><em>-&nbsp;¥</em><span>0.00</span></td>
                                    </tr>
                                    <tr>
                                        <th>使用花瓣：</th>
                                        <td><em>-&nbsp;¥</em><span>0.00</span></td>
                                    </tr>
                                    <tr>
                                        <th>
                                            &nbsp;商家活动：
                                        </th>
                                        <td><em>-&nbsp;¥</em><span>0.00</span></td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                            <div class="order-pro-cost-total">合计（含运费）：<em></em>
                                <span id="orderTotal">
							¥4999.00
	    			</span>

                                <p class="pdt-10">可获得积分：<b class="fw-normal">500</b></p>
                            </div>
                        </div>
                    </div>
                    <!-- 20141223-商品清单-合计-end -->
                    <div class="order-edit-action">
                        <a href="https://www.vmall.com/member/order?t=1549116423454" class="button-action-cancel"><span>取消修改</span></a>
                        <a href="javascript:;" class="button-action-edit"
                           onclick="ec.member.orderEdit.submit(); return false;"><span>确认修改</span></a>
                    </div>
                </div>
            </div>
            <!--收货人地址 start-->
            <div id="order-address-template" class="hide">
                <!--#macro addressList data-->
                <ol>
                    <!--#list data as lst-->
                    <li id="myAddress-{#lst.id}" class="<!--#if (lst_index>4) -->hide<!--/#if-->">
                        <div class="address-main">
                            <span class="address-mark"><i></i>寄送至</span>
                            <input type="radio" class="radio" name="myAddress" id="input-myAddress{#lst.id}"
                                   data-district="{#lst.district}" data-id="{#lst.id}" value="{#lst.id}">
                            <label class="address-info" for="input-myAddress{#lst.id}">
                                <b>{#lst.consignee}</b>
                                <span>{#lst.provinceName}{#lst.cityName}{#lst.districtName}&nbsp;{#lst.address}</span>
                                <span>电话：<!--#if (lst.mobile) -->{#lst.mobile}<!--#else-->{#lst.phone}<!--/#if--></span>
                            </label>
                        </div>
                        <div class="address-sub">
                            <p class="a-edit"><a title="编辑"
                                                 href="https://www.vmall.com/member/updateToOrder-11013508947#edit"
                                                 onclick="ec.member.orderEdit.myAddress.edit({#lst.id})"
                                                 class="edit"><span>编辑</span></a></p>
                            <p class="a-del"><a title="删除" href="javascript:;"
                                                onclick="ec.member.orderEdit.myAddress.del(this,{#lst.id})" class="del"><span>删除</span></a>
                            </p>
                            <p class="a-state">
                                <!--#if (lst.id ==ec.member.orderEdit.myAddress.defaultId) -->
                                <span class="default">默认地址</span>
                                <!--#else-->
                                <a title="设为默认收货地址" href="javascript:;"
                                   onclick="ec.member.orderEdit.myAddress.setDetault({#lst.id})"
                                   class="set "><span>设为默认</span></a>
                                <!--/#if-->
                            </p>
                        </div>
                    </li>
                    <!--/#list-->
                </ol>
                <!--/#macro-->
            </div>
            <!--收货人地址 end-->

            <!--20170221-修改收货地址验证框 start-->
            <textarea class="hide" id="validateTypeBox">		&lt;!-- 20170320-订单修改信息确认---&gt;

		&lt;div class="box-tips-phone"&gt;
			&lt;div class="hide"&gt;
				&lt;p class="red f14"&gt;为了确保您的购物安全，请选择验证方式后获取验证码进行验证。&lt;/p&gt;

				&lt;label for=""&gt;&lt;input class="span-400" type="text" name=""&gt;&lt;/label&gt;
				&lt;label for=""&gt;&lt;input class="tips-phone-text span-232" type="text" name=""&gt;&lt;a class="box-evaluate box-button-style-2" href="JavaScript:;"&gt;&lt;span&gt;免费获取&lt;/span&gt;&lt;/a&gt;&lt;/label&gt;
                &lt;div class="tips tal"&gt;&lt;span class="label-error red"&gt;提示信息&lt;/span&gt;&lt;/div&gt;
            &lt;/div&gt;
            &lt;div class=""&gt;
                &lt;p class="red f14"&gt;为了确保您的购物安全，请选择验证方式后获取验证码进行验证。&lt;/p&gt;
                &lt;div for="" id="validateType"&gt;
                &lt;/div&gt;
                &lt;label for=""&gt;&lt;input class="tips-phone-text span-232" type="text" name="validateCode" id="validateCode"&gt;&lt;a class="box-evaluate box-button-style-2" href="JavaScript:;" id="sendValidateCode" onclick=""&gt;&lt;span id="validateMsg"&gt;获取验证码&lt;/span&gt;&lt;/a&gt;&lt;/label&gt;
                &lt;div class="tips tal" id="validate-errMsg"&gt;&lt;/div&gt;

            &lt;/div&gt;
		&lt;/div&gt;
		&lt;div class="box-button"&gt;
            &lt;a class="box-cancel" href="javascript:;" id="cancelValidate"&gt;&lt;span&gt;取消&lt;/span&gt;&lt;/a&gt;
            &lt;a class="box-ok" href="JavaScript:;" id="confirmValidateCode"&gt;&lt;span&gt;确定&lt;/span&gt;&lt;/a&gt;
		&lt;/div&gt;
		&lt;!-- 20170320-订单修改信息确认-end --&gt;
</textarea>

            <textarea id="modify-msg-tpl" class="hide">	&lt;table width="100%" cellspacing="0" cellpadding="0" border="0"&gt;
            &lt;tbody&gt;
            &lt;tr&gt;
                &lt;td class="box-cl"&gt;&lt;/td&gt;
                &lt;td class="box-cc"&gt;
                    &lt;div class="box-content" style="height: auto;"&gt;
                        &lt;div class="box-prompt01-success"&gt;
                            &lt;div class="h"&gt;
                                &lt;i&gt;&lt;/i&gt;
                            &lt;/div&gt;
                            &lt;div class="b"&gt;
							  &lt;p class="title"&gt;订单修改申请已提交&lt;/p&gt;
							  &lt;p&gt;温馨提示：修改处理结果以订单详情记录为准&lt;/p&gt;
							&lt;/div&gt;
                        &lt;/div&gt;
                        &lt;div class="box-button"&gt;
                            &lt;a href="javascript:;" class="box-ok"&gt;&lt;span&gt;确定&lt;/span&gt;&lt;/a&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                &lt;/td&gt;
                &lt;td class="box-cr"&gt;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;/tbody&gt;
        &lt;/table&gt;
</textarea>

            <textarea id="delivery-msg-tpl" class="hide">&lt;table width="100%" cellspacing="0" cellpadding="0" border="0"&gt;
            &lt;tbody&gt;
            &lt;tr&gt;
                &lt;td class="box-cl"&gt;&lt;/td&gt;
                &lt;td class="box-cc"&gt;
                    &lt;div class="box-content" style="height: auto;"&gt;

                        &lt;div class="box-tips-area black"&gt;
                            &lt;p&gt;很抱歉，收货地址修改会导致订单快递费用发生变更，&lt;/p&gt;
                            &lt;p&gt;修改收货地址不成功&lt;/p&gt;
                        &lt;/div&gt;

                        &lt;div class="box-button"&gt;
                            &lt;a href="javascript:;" class="box-ok"&gt;&lt;span&gt;确定&lt;/span&gt;&lt;/a&gt;
                        &lt;/div&gt;
                    &lt;/div&gt;
                &lt;/td&gt;
                &lt;td class="box-cr"&gt;&lt;/td&gt;
            &lt;/tr&gt;
            &lt;/tbody&gt;
        &lt;/table&gt;
</textarea>
            <textarea class="hide" id="erroCompany"></textarea>
            <!-- 公用弹窗对话框 -->
            <textarea id="order-confim-box-tpl" class="hide">    &lt;div class="box-prompt01-error"&gt;
        &lt;div class="h"&gt;
            &lt;i&gt;&lt;/i&gt;
        &lt;/div&gt;
        &lt;div class="b"&gt;msg&lt;/div&gt;
    &lt;/div&gt;
    &lt;div class="box-button"&gt;
        &lt;a href="javascript:;" class="box-cancel"&gt;&lt;span&gt;知道了&lt;/span&gt;&lt;/a&gt;
    &lt;/div&gt;
</textarea>
            <!-- 新传递方式  -->
            <input name="electronicReceiveMode" id="electronicReceiveMode" type="hidden" value="">
            <!--订单发票 -->
            <textarea id="invoice-edit-box" class="hide">    &lt;!-- 20170729-发票信息-start --&gt;
    &lt;!-- 鼠标悬停追加ClassName： hover 选择追加ClassName： selected 不可选择追加ClassName： disabled --&gt;
    &lt;div class="invoice-new"&gt;
    &lt;div class="invoice-new-tab"&gt;
            &lt;a id="invoice_click_1" href="javascript:;" class="" style="display: none;"   dis-flag="0"&gt;纸质普通发票&lt;em class="a-tip"&gt;&lt;/em&gt;&lt;/a&gt;&lt;!--选中时添加class="current"--&gt;
            &lt;a id="invoice_click_2" href="javascript:;" class=""   onclick="ec.order.invoice.popup.select(2)" dis-flag="0"&gt;电子普通发票&lt;em class="a-tip"&gt;&lt;/em&gt;&lt;/a&gt;
            &lt;a id="invoice_click_3" href="javascript:;" class=""   onclick="ec.order.invoice.popup.select(3)" dis-flag="0"&gt;专用发票&lt;em class="a-tip"&gt;&lt;/em&gt;&lt;/a&gt;
            &lt;a id="invoice_click_0" href="javascript:;" class="" style="display: none;"   dis-flag="0"&gt;不开发票&lt;em class="a-tip"&gt;&lt;/em&gt;&lt;/a&gt;
    &lt;/div&gt;

    &lt;div class="invoice-new-info-content"&gt;

        &lt;!--个人发票--&gt;
        &lt;div class="invoice-new-info-normal" id="invoice-info-normal"&gt;
            &lt;ul&gt;
                &lt;li class="clearfix"&gt;
                    &lt;div class="invoice-new-main"&gt;
                        &lt;i class="icon-radio-normal" id="invoiceTitle-normalPerson" onclick="ec.order.invoice.select(11)" &gt;&lt;/i&gt;
                        &lt;!--未选择class="icon-radio-normal",选中添加class="icon-radio"--&gt;
                        &lt;label&gt;个人&lt;/label&gt;
                    &lt;/div&gt;
                &lt;/li&gt;
                &lt;li class="clearfix"&gt;
                    &lt;div class="invoice-new-main"&gt;
                        &lt;i class="icon-radio-normal " id="invoiceTitle-normalCompany" onclick="ec.order.invoice.select(12)"&gt;&lt;/i&gt;
                        &lt;label&gt;单位&lt;/label&gt;
                    &lt;/div&gt;
                    &lt;form id="invoice-normal-form"&gt;
                    &lt;div class="invoice-new-info-name"&gt;
                          &lt;dl&gt;
                             &lt;dd&gt;
                                 &lt;input id="invoice-normal-company" type="text" class="invoice-new-text" placeholder="请输入单位名称" onfocus="this.placeholder=''"  onblur="this.placeholder='请输入单位名称'" &gt;
                                 &lt;div id="normalCompanyError"&gt;&lt;/div&gt;
                             &lt;/dd&gt;
                          &lt;/dl&gt;
                          &lt;dl&gt;
                             &lt;label&gt;&lt;span&gt;&lt;/span&gt;纳税人识别号&lt;/label&gt;
                             &lt;dd&gt;
                                 &lt;input id="invoice-normal-taxpayerIdentityNum" type="text" class="invoice-new-text" placeholder="请按税务登记证填写" onfocus="this.placeholder=''" onkeyup="ec.order.invoice.guideToSpecialVat(1)"  onblur="this.placeholder='请按税务登记证填写';ec.order.invoice.guideToSpecialVat(1)"&gt;
                                 &lt;div id="invoice-normal-taxpayerIdentityNum-error"&gt;&lt;/div&gt;
                             &lt;/dd&gt;
                          &lt;/dl&gt;
                    &lt;/div&gt;
                    &lt;/form&gt;
                &lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;


        &lt;!--电子发票--&gt;
        &lt;div class="invoice-new-info-normal hide" id="invoice-info-electronic"&gt;
            &lt;ul&gt;
                &lt;li class="clearfix"&gt;
                    &lt;div class="invoice-new-main"&gt;
                        &lt;i class="icon-radio-normal" id="invoiceTitle-elecPerson" onclick="ec.order.invoice.select(21)"&gt;&lt;/i&gt;
                        &lt;!--未选择class="icon-radio-normal",选中添加class="icon-radio"--&gt;
                        &lt;label&gt;个人&lt;/label&gt;
                    &lt;/div&gt;
                    &lt;form id="invoice-electronic-form-person"&gt;
                   &lt;/form&gt;
                &lt;/li&gt;
                &lt;li class="clearfix"&gt;
                    &lt;div class="invoice-new-main"&gt;
                        &lt;i class="icon-radio-normal" id="invoiceTitle-elecCompany" onclick="ec.order.invoice.select(22)"&gt;&lt;/i&gt;
                        &lt;label&gt;单位&lt;/label&gt;
                    &lt;/div&gt;
                    &lt;form id="invoice-electronic-form"&gt;
                    &lt;div class="invoice-new-info-name"&gt;
                          &lt;dl&gt;
                             &lt;dd&gt;
                                 &lt;input id="invoice-electronic-company" type="text" class="invoice-new-text" placeholder="请输入单位名称" onfocus="this.placeholder=''"  onblur="this.placeholder='请输入单位名称'"&gt;
                                 &lt;div id="elecCompanyError"&gt;&lt;/div&gt;
                             &lt;/dd&gt;
                          &lt;/dl&gt;
                          &lt;dl&gt;
                             &lt;label&gt;&lt;span class="red"&gt;*&lt;/span&gt;纳税人识别号&lt;/label&gt;
                             &lt;dd&gt;
                                 &lt;input id="invoice-electronic-taxpayerIdentityNum" type="text" class="invoice-new-text" placeholder="请按税务登记证填写" onfocus="this.placeholder=''"  onkeyup="ec.order.invoice.guideToSpecialVat(2)" onblur="this.placeholder='请按税务登记证填写';ec.order.invoice.guideToSpecialVat(2)" &gt;
                                 &lt;div id="invoice-electronic-taxpayerIdentityNum-error"&gt;&lt;/div&gt;
                             &lt;/dd&gt;
                          &lt;/dl&gt;
                    &lt;/div&gt;

                    &lt;/form&gt;
                &lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;!--不开发票--&gt;
        &lt;div class="invoice-new-info-normal hide" id="invoice-info-notuse"&gt;
            &lt;ul&gt;
                &lt;li class="clearfix"&gt;
                    &lt;div class="invoice-new-main"&gt;
                        &lt;i class="icon-radio-normal" id="invoiceTitle-notuse" onclick="ec.order.invoice.select(0)"&gt;&lt;/i&gt;
                        &lt;label&gt;不开发票&lt;/label&gt;
                    &lt;/div&gt;
                &lt;/li&gt;
            &lt;/ul&gt;
        &lt;/div&gt;

        &lt;div class="invoice-new-info-add hide" id="invoice-info-add"&gt;
            &lt;div class="add-title" id="addTitle"&gt;
                &lt;ul class="clearfix"&gt;
                    &lt;li id="vat-step-1" class="current"&gt;&lt;em&gt;1&lt;/em&gt;填写公司信息&lt;/li&gt;
                    &lt;li&gt;&gt;&lt;/li&gt;
                    &lt;li id="vat-step-2"&gt;&lt;em&gt;2&lt;/em&gt;填写收票人信息&lt;/li&gt;
                &lt;/ul&gt;
            &lt;/div&gt;
            &lt;div class="form-area" id="invoice-company"&gt;
            &lt;form action="" id="vatinvoice-company-form" autocomplete="off"&gt;
                &lt;table cellspacing="0" cellpadding="0" border="0"&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;单位名称&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                        	&lt;div class="relative"&gt;
                            	&lt;input id="vatInvoice-companyName" type="text" class="invoice-new-text" onkeyup="ec.order.invoice.autoFillForm()" oninput="ec.order.invoice.inputChange()"&gt;
                            	&lt;div id="vatInvoice-companyName-error"&gt;&lt;/div&gt;
                            &lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;纳税人识别号&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-taxpayerIdentityNum" type="text" class="invoice-new-text" oninput="ec.order.invoice.inputChange()"&gt;
                            &lt;div id="vatInvoice-taxpayerIdentityNum-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;注册地址&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-registeredAddress" type="text" class="invoice-new-text" oninput="ec.order.invoice.inputChange()"&gt;
                            &lt;div id="vatInvoice-registeredAddress-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;注册电话&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-registeredTelephone" type="text" class="invoice-new-text" oninput="ec.order.invoice.inputChange()"&gt;
                            &lt;div id="vatInvoice-registeredTelephone-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;开户银行&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-depositBank" type="text" class="invoice-new-text" oninput="ec.order.invoice.inputChange()"&gt;
                            &lt;div id="vatInvoice-depositBank-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;银行帐户&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-bankAccount" type="text" class="invoice-new-text" oninput="ec.order.invoice.inputChange()"&gt;
                            &lt;div id="vatInvoice-bankAccount-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                &lt;/table&gt;
                 &lt;/form&gt;
            &lt;/div&gt;

            &lt;!--专票中间页--&gt;

            &lt;div class="invoice-notic hide" id="specialInvoiceMidPage"&gt;
                                    &lt;div class="invoice-notice-title"&gt;开具增值税专用发票须知&lt;/div&gt;
                                    &lt;div class="invoice-notice-con"&gt;
                                        &lt;p&gt;根据《中华人民共和国增值税暂行条例》有关规定，纳税人不得向个人消费者开具增值税专用发票。因此，个人消费者申请开具增值税专用发票，需确保您的该项交易行为已获得增值税专用发票受票方企业的授权，为代表该受票方企业执行的采购行为。增值税专用发票的内容只能选择订单商品明细，此外，提请注意，非法出售增值税专用发票将会触及刑法定罪。&lt;/p&gt;
                                        &lt;p&gt;消费者需认真阅读知悉上述申明内容，由于违规申请增值税专用发票造成的相关法律责任将由消费者自行承担。&lt;/p&gt;
                                    &lt;/div&gt;
                                &lt;/div&gt;





            &lt;div class="form-area hide" id="invoice-person"&gt;
              &lt;form action="" id="vatinvoice-person-form"&gt;
              	&lt;input type="hidden" name="province" value=""&gt;
				&lt;input type="hidden" name="city" value=""&gt;
				&lt;input type="hidden" name="district" value=""&gt;
				&lt;input type="hidden" name="street" value=""&gt;

              	&lt;input type="hidden" name="provinceG" value=""&gt;
				&lt;input type="hidden" name="cityG" value=""&gt;
				&lt;input type="hidden" name="districtG" value=""&gt;
				&lt;input type="hidden" name="streetG" value=""&gt;

				&lt;input type="hidden" name="needL4Addr" id="needL4Addr" value=""&gt;
				&lt;input type="hidden" name="needL4AddrG" id="needL4AddrG" value=""&gt;

                &lt;table cellspacing="0" cellpadding="0" border="0"&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;姓名&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-consignee" type="text" class="invoice-new-text"&gt;
                            &lt;div id="vatInvoice-consignee-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;手机号码&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td&gt;
                            &lt;input id="vatInvoice-mobile" onblur="limitNum(event,this)" onchange="limitNum(event,this)" maxlength="20" type="text" class="invoice-new-text"&gt;
                            &lt;div id="vatInvoice-mobile-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr&gt;
                        &lt;th class="form-address-label"&gt;
                            &lt;span class="red"&gt;*&lt;/span&gt;
                            &lt;label for=""&gt;所在地区&lt;/label&gt;
                        &lt;/th&gt;
                        &lt;td class="relative"&gt;
&lt;!--以下内容隐藏时添加class="hide"，显示去掉class="hide"--&gt;
&lt;div class="form-address"&gt;
    &lt;div id="current-address" class="form-address-detail"&gt;选择省-市-区-街道&lt;/div&gt;&lt;!--有内容时添加class="form-address-detailcon"--&gt;
&lt;/div&gt;
&lt;div id="address-tab" class="form-address selected hide"&gt;
    &lt;a href="javascript:;" class="btn-address-close"&gt;关闭&lt;/a&gt;
    &lt;div id="form-address-choose-normal" class="form-address-choose"&gt;
        &lt;div class="form-address-name"&gt;
            &lt;div id="provice_info" class="form-address-name-tab clearfix"&gt;&lt;!--已选择内容时添加class="current"--&gt;
            	&lt;a id="provice" level-value="1" data-value=""&gt;请选择&lt;/a&gt;
            	&lt;a id="city" level-value="2" data-value=""&gt;请选择&lt;/a&gt;
            	&lt;a id="district" level-value="3" data-value=""&gt;请选择&lt;/a&gt;
            	&lt;a id="street" level-value="4" class="hide" data-value=""&gt;请选择&lt;/a&gt;
            &lt;/div&gt;
            &lt;div id="address_table" class="form-address-name-con"&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="link-address"&gt;&lt;a href="javascript:ec.address.change(1)"&gt;搜索地址快速定位&gt;&lt;/a&gt;&lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;div id="address-search" class="form-address selected hide"&gt;
    &lt;a href="javascript:;" class="btn-address-close"&gt;关闭&lt;/a&gt;
    &lt;div id="form-address-choose-search" class="form-address-choose"&gt;
        &lt;div class="form-address-search"&gt;
            &lt;div class="form-address-search-text"&gt;&lt;a href="javascript:;"&gt;清除&lt;/a&gt;
            	&lt;input type="text" placeholder="输入街道、乡镇、小区或商圈名称"&gt;
            &lt;/div&gt;
            &lt;p class="form-address-example"&gt;例如：&lt;span&gt;深圳 天安云谷&lt;/span&gt;&lt;/p&gt;
            &lt;div class="form-address-search-list"&gt;
                &lt;div id="form-address-no" class="form-address-no hide"&gt;没有找到这个地方，试试通过城市名+地点名来搜索&lt;br&gt;例如：&lt;span&gt;深圳 天安云谷&lt;/span&gt;&lt;/div&gt;
                &lt;ul&gt;
                &lt;/ul&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="link-address"&gt;&lt;a href="javascript:ec.address.change(2)"&gt;直接选择地址&gt;&lt;/a&gt;&lt;/div&gt;
    &lt;/div&gt;
&lt;/div&gt;
&lt;!-- &lt;div id="myAddress-region" class="inline-block"&gt;&lt;/div&gt; --&gt;
&lt;label id="myAddress-msg"&gt;&lt;/label&gt;                           &lt;div id="vatInvoice-myAddress-error"&gt;&lt;/div&gt;
                        &lt;/td&gt;
                    &lt;/tr&gt;
                    &lt;tr id="invoice-address-detail"&gt;
                    &lt;/tr&gt;
                    &lt;input type="hidden" id="gouldAddress" name="unionPaySwitch" value="1" /&gt;
                &lt;/table&gt;
                &lt;/form&gt;
            &lt;/div&gt;
        &lt;/div&gt;
        &lt;div class="box-button"&gt;
        	&lt;span class="report-errors hide" id="invoice-unsupport-tips"&gt;&lt;/span&gt;
	        &lt;a id="invoice_return_step" href="javascript:;" class="box-next"  onclick="ec.order.invoice.popup.select(5)" style="display: none;"&gt;&lt;span&gt;上一步&lt;/span&gt;&lt;/a&gt;
	        &lt;a id="invoice_mid_step" href="javascript:;" class="box-next" onclick="ec.order.invoice.popup.select(4)" style="display: none;"&gt;&lt;span&gt;同意并继续&lt;/span&gt;&lt;/a&gt;
	        &lt;a id="invoice_next_step" href="javascript:;" class="box-next"  onclick="ec.order.invoice.selectWhich()" style="display: none;"&gt;&lt;span&gt;下一步&lt;/span&gt;&lt;/a&gt;
	        &lt;a id="invoice_save_step" href="javascript:;" class="box-sure" onclick='ec.order.invoice.popup.save("edit",this)'&gt;&lt;span&gt;确认&lt;/span&gt;&lt;/a&gt;
	    &lt;/div&gt;

    &lt;/div&gt;


    &lt;div class="invoice-new-tips" id ="invoiceTips"&gt;
       &lt;div id="invoiceMemoText1" class &gt;电子发票与纸质发票具有相同的法律效力，可以作为维权、保修、报销的有效凭证，且不存在损毁、丢失的情况。订单签收后即可在个人订单中心订单详情下载你的电子普通发票。&lt;a style="color: rgb(202, 20, 29); text-decoration: underline;" href="https://www.vmall.com/help/category-49.html" target="_blank"&gt;&lt;span style="color: rgb(202, 20, 29);"&gt;什么是电子普通发票？&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;
       &lt;div id="invoiceMemoText2" class &gt;温馨提示：电子发票与纸票具有相同的法律效力，可以作为维权、保修、报销的有效凭据，且不存在损毁、丢失的情况，您永远也不必担心发票损失。订单签收后即可在订单详情下载您的电子普通发票。&lt;a href="https://www.vmall.com/help/category-49.html" target="_self"&gt;什么是电子普通发票?&lt;/a&gt;&lt;/div&gt;
       &lt;div id="invoiceMemoText3" class &gt;&lt;span style="color: rgb(192, 0, 0);"&gt;增值税专用发票会在订单签收后7个工作日内开具并寄出，一般会在您订单完成后15个工作日内送达。&lt;/span&gt;请注意查收；增值税专用发票收到后请妥善保存，如退货请一同寄回，如退货专票未能寄回，则需扣除相应的税点。&lt;/div&gt;
       &lt;div id="invoiceMemoText0" class &gt;&lt;/div&gt;
    &lt;/div&gt;
    &lt;!-- 20170729-发票信息-end --&gt;
    &lt;/div&gt;
</textarea><!--20170221-修改收货地址验证框  end-->
            <input type="hidden" value="https://customization.vmall.com" id="domainEdit">
            <input type="hidden" value="" id="addresseePhoneID">
            <input type="hidden" id="gouldAddress" name="unionPaySwitch" value="1">
            <input type="hidden" id="updateOrder" name="updateOrder" value="1">

            <script src="./修改订单_个人中心_华为商城_files/order_addresss_box.min.js.下载"></script>
            <script src="./修改订单_个人中心_华为商城_files/address_common.min.js.下载"></script>
            <script id="jsapi_loader4" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/jquery.form-2.49.js.下载" charset="utf-8"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader4');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader4 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("jquery.form", "complete");
            })();</script>
            <script id="jsapi_loader5" loadtype="insert" type="text/javascript" src="./修改订单_个人中心_华为商城_files/ajax.js.下载"
                    charset="utf-8"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader5');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader5 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("ajax", "complete");
            })();</script>
            <script id="jsapi_loader6" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/bigInt.min.js.下载"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader6');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader6 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("dh/bigInt.min.js", "complete");
            })();</script>
            <script id="jsapi_loader7" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/aes.js.下载"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader7');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader7 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("aes/aes.js", "complete");
            })();</script>
            <script id="jsapi_loader8" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/aesUtil.js.下载"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader8');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader8 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("aes/aesUtil.js", "complete");
            })();</script>
            <script id="jsapi_loader9" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/pbkdf2.js.下载"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader9');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader9 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("aes/pbkdf2.js", "complete");
            })();</script>
            <script src="./修改订单_个人中心_华为商城_files/orderEdit.min.js.下载"></script>
            <script id="jsapi_loader10" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/region-min.js.下载" charset="utf-8"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader10');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader10 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("linkSelect/region-min.js?20161011", "complete");
            })();</script>
            <script id="jsapi_loader11" loadtype="insert" type="text/javascript"
                    src="./修改订单_个人中心_华为商城_files/rc4.js.下载"></script>
            <script>(function () {
                var time = 0, el = document.getElementById('jsapi_loader11');
                if (!el || (el.readyState && 'complete' != el.readyState)) {
                    if (time < 10) {
                        setTimeout(arguments.callee, 30);
                        time++;
                    } else {
                        logger.error('load the script of id jsapi_loader11 fail!');
                    }
                    return;
                }
                ol._setLoadStatus("crypt/rc4.js", "complete");
            })();</script>
            <script src="./修改订单_个人中心_华为商城_files/orderValidate.min.js.下载"></script>
            <script src="./修改订单_个人中心_华为商城_files/invoice.min.js.下载"></script>
            <script>
                document.write("<script type='text/javascript' src='https://openapi.vmall.com/csrftoken.js?random=" + new Date().getTime() + "'></s" + "cript>");
            </script>
            <script type="text/javascript" src="https://openapi.vmall.com/csrftoken.js?random=1549117846775"></script>
            <script type="text/javascript" src="./修改订单_个人中心_华为商城_files/csrftoken.js.下载"></script>

            <script>
                ec.member.orderEdit.myAddress.isModifyDelivery = (true || false);

                <!-- 非手机保险单独售卖需求 -->
                ec.member.orderEdit.myAddress.defaultVal = {
                    "consignee": "&#x6797;&#x5b5d;&#x714c;",
                    "district": "4939",
                    "street": "125203",
                    "address": "&#x4f0a;&#x83b1;&#x514b;&#x65af;&#x5927;&#x9053;&#x66ae;&#x4e91;&#x8def;&#x53e3;&#x6c47;&#x6770;&#x673a;&#x68b0;&#x6709;&#x9650;&#x516c;&#x53f8;",
                    "zipCode": "",
                    "mobile": "18617134570",
                    "phone": "",
                    "districtName": "&#x5929;&#x5fc3;&#x533a;",
                    "cityName": "&#x957f;&#x6c99;",
                    "provinceName": "&#x6e56;&#x5357;",
                    "streetName": "-"
                };
                ec.member.orderEdit.myAddress.defaultVal.address = ec.member.orderEdit.myAddress.defaultVal.address;


                ec.member.orderEdit.orderInvoiceTitle = "&#x4e2a;&#x4eba;";
                ec.member.orderEdit.taxpayerIdentityNum = "";
                ec.member.orderEdit.orderTitleType = "50";
                ec.member.orderEdit.giftbuyNote = "";
                ec.member.orderEdit.canModifyOrder = "";


                ec.member.orderEdit.isSupportDisplayDeliveryTime = 0;
                ec.member.orderEdit.isProxySale = false;
                ec.member.orderEdit.isVirture = false;
                ec.member.orderEdit.paymentTime = "1970-01-01 00:00:00";
                ec.member.orderEdit.paymentStatus = "2";
                ec.member.orderEdit.couponDeduct = "0";
                ec.member.orderEdit.balanceAmount = "0";
                ec.member.orderEdit.shippingDate = "";
                ec.member.orderEdit.arrivalDate = "";
                ec.member.orderEdit.orderStatus = "3";

                var skuIds = [];
                ec.member.orderEdit.inventorySku = skuIds.join(',')

                accountCenterUrl = "https://hwid1.vmall.com/oauth2/userCenter/hwAccount?reqClientType=26&loginChannel=26000000&themeName=cloudTheme&lang=zh-cn";
            </script>

            <style>
                .button-style-s1 {
                    text-align: center;
                    background-color: #FAFAFA;
                    border: 1px solid #DEDEDE;
                    color: #333333 !important;
                    width: 118px;
                    height: 28px;
                    line-height: 28px;
                    font-size: 14px;
                }

                a.button-style-s1 {
                    display: inline-block;
                    *display: inline;
                    *zoom: 1;
                }

                a.button-style-s1:hover {
                    text-decoration: none;
                }
            </style>

        </div>
        <div class="fl u-1-5">


            <!-- 20170823-左边菜单-start -->
            <div class="mc-menu-area">
                <div class="h"><a href="https://www.vmall.com/member?t=1549116423455"><span>我的商城</span></a></div>
                <div class="b">
                    <ul>
                        <li>
                            <h3 class="icon-mc-mail"><a href="https://www.vmall.com/member/msg?t=1549116423455"><span
                                    id="li-msg">消息中心<em></em></span></a></h3>
                        </li>
                        <li>
                            <h3 class="icon-mc-help"><a href="https://www.vmall.com/help/index.html"
                                                        target="_blank"><span>帮助中心</span></a></h3>
                        </li>
                        <li>
                            <h3 class="icon-mc-order"><span>订单中心</span></h3>
                            <ol>
                                <li id="li-order" class="current"><a
                                        href="https://www.vmall.com/member/order?t=1549116423455"><span>我的订单<em>(3)</em></span></a>
                                </li>
                                <li id="li-order-small" style="display: none;"></li>
                                <li id="li-exchange"><a
                                        href="https://www.vmall.com/member/exchange?t=1549116423455"><span>我的退换货</span></a>
                                </li>
                                <li id="li-refunds"><a
                                        href="https://www.vmall.com/member/refunds?t=1549116423455"><span>我的退款</span></a>
                                </li>
                                <li id="li-recover"><a
                                        href="https://www.vmall.com/member/recycle/index/aihuishou?t=1549116423455"><span>我的回收单</span></a>
                                </li>
                                <li id="li-prdRemark"><a
                                        href="https://www.vmall.com/member/prdRemarkView?t=1549116423455"><span>商品评价</span></a>
                                </li>
                            </ol>
                        </li>
                        <li>
                            <h3 class="icon-mc-asset"><span>我的资产</span></h3>
                            <ol>
                                <li id="li-newpoint"><a
                                        href="https://www.vmall.com/member/newpoint?t=1549116423455"><span>我的积分</span></a>
                                </li>
                                <li id="li-coupon"><a href="https://www.vmall.com/member/coupon?t=1549116423455"><span>我的优惠券</span></a>
                                </li>
                                <li id="li-balance"><a
                                        href="https://www.vmall.com/member/balance?t=1549116423455"><span>我的代金券</span></a>
                                </li>
                                <li id="li-petal"><a href="https://www.vmall.com/member/petal?t=1549116423455"><span>我的花瓣</span></a>
                                </li>
                                <li id="li-point"><a href="https://www.vmall.com/member/point?t=1549116423455"><span>等级与特权</span></a>
                                </li>
                            </ol>
                        </li>
                        <li>
                            <h3 class="icon-mc-support"><span>购买支持</span></h3>
                            <ol>
                                <li id="li-myAddress"><a
                                        href="https://www.vmall.com/member/myAddress?t=1549116423455"><span>收货地址管理</span></a>
                                </li>
                                <li id="li-authentication"><a
                                        href="https://www.vmall.com/authmember/accesstoken?t=1549116423455"><span>实名认证</span></a>
                                </li>
                                <li id="li-myAppointment"><a
                                        href="https://www.vmall.com/member/myAppointment?t=1549116423455"><span>我的预约</span></a>
                                </li>
                                <li id="li-notification"><a
                                        href="https://www.vmall.com/member/notification?t=1549116423455"><span>到货通知</span></a>
                                </li>
                                <li id="li-myeasybuy"><a
                                        href="https://www.vmall.com/member/myeasybuy?t=1549116423455"><span>我的优享购</span></a>
                                </li>
                                <li id="li-enterprise" class="hide"></li><!-- 优惠内购 -->
                                <li id="li-o2o" class="hide"><a href="https://www.vmall.com/o2o?t=1549116423455"><span>O2O商城</span></a>
                                </li>
                            </ol>
                        </li>
                        <li id="li-company" class="hide" style="display: none;">
                            <h3 class="icon-mc-business"><span>企业购</span></h3>
                            <ol>
                                <li id="li-companyUserInfo"></li>
                                <li id="li-companyOrder"></li>
                                <li id="li-companyOrderList"></li>
                                <li id="li-companyQues"></li>
                            </ol>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 20170823-左边菜单-end -->

            <script src="./修改订单_个人中心_华为商城_files/leftMenu.js.下载"></script>


        </div>
    </div>
    <div class="hr-80"></div>

</div>

<!--口号-20121025 -->
<div class="slogan-container">
    <div class="slogan">
        <ul>
            <li class="s1"><a target="_blank" href="https://www.vmall.com/help/faq-934.html" rel="nofollow"
                              onclick="pushFootAdvertMsg('公司介绍','https://www.vmall.com/help/faq-934.html')"><i></i>百强企业&nbsp;品质保证</a>
            </li>
            <li class="s2"><a target="_blank" href="https://www.vmall.com/help/faq-834.html" rel="nofollow"
                              onclick="pushFootAdvertMsg('退换货政策','https://www.vmall.com/help/faq-834.html')"><i></i>7天退货&nbsp;15天换货</a>
            </li>
            <li class="s3">
                <a target="_blank" href="https://www.vmall.com/help/faq-4367.html" rel="nofollow"
                   onclick="pushFootAdvertMsg('物流帮助','https://www.vmall.com/help/faq-4367.html')"><i></i>
                    <span>48元起免运费</span>
                </a>
            </li>
            <li class="s4"><a target="_blank" href="http://consumer.huawei.com/cn/support/service-center/index.htm"
                              rel="nofollow"
                              onclick="pushFootAdvertMsg('服务中心','http://consumer.huawei.com/cn/support/service-center/index.htm')"><i></i>1000家维修网点&nbsp;全国联保</a>
            </li>
        </ul>
    </div>
</div><!--口号-end -->

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
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4355.html" rel="nofollow">购物指南</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4367.html" rel="nofollow">配送方式</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-4357.html" rel="nofollow">支付方式</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/help/category-16.html"
                               rel="nofollow">常见问题</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s2">
                <dt>
                    <p class="title">保修与退换货</p>
                </dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-833.html" rel="nofollow">保修政策</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-834.html" rel="nofollow">退换货政策</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-5259.html" rel="nofollow">退换货流程</a>
                        </li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/warranty-query/index.htm"
                               rel="nofollow">保修状态查询</a></li>
                        <li><a target="_blank" href="http://c-ver.huawei.com/web/" rel="nofollow">配件防伪查询</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s3">
                <dt>
                    <p class="title">维修与技术支持</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/service-center/index.htm"
                               rel="nofollow">售后网点</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/reservation/index.htm"
                               rel="nofollow">预约维修</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/express-repair/index.htm"
                               rel="nofollow">手机寄修</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/sparepart-price/index.htm"
                               rel="nofollow">备件价格查询</a></li>
                        <li><a target="_blank" href="http://consumer.huawei.com/cn/support/door-to-door-service/"
                               rel="nofollow">上门服务</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s4">
                <dt>
                    <p class="title">特色服务</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://consumer.huawei.com/cn/support/distinguish/"
                               rel="nofollow">防伪查询</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/order/tcsProductIndex"
                               rel="nofollow">补购保障</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/recycle" rel="nofollow">以旧换新</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/product/10086344499475.html#10086230774569"
                               rel="nofollow">礼品包装</a></li>
                    </ol>
                </dd>
            </dl>
            <dl class="s5">
                <dt>
                    <p class="title">关于我们</p></dt>
                <dd>
                    <ol>
                        <li><a target="_blank" href="https://www.huawei.com/cn/about-huawei/corporate-information"
                               rel="nofollow">公司介绍</a></li>
                        <li><a target="_blank" href="https://www.vmall.com/help/faq-939.html" rel="nofollow">华为商城简介</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/offshop/hwshoplist" rel="nofollow">华为线下门店</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/offshop/shoplist" rel="nofollow">荣耀线下门店</a>
                        </li>
                        <li><a target="_blank" href="https://www.vmall.com/job" rel="nofollow">诚征英才</a></li>
                        <li><a href="javascript:;" title="意见反馈" onclick="ec.survery.open();pushRightHelpMsg(3)">意见反馈</a>
                        </li>
                    </ol>
                </dd>
            </dl>
            <dl class="s6" id="serverlink">
                <dt class="relative">
                    <p class="title">友情链接</p>
                    <p class="button"><span class="btn btn-prev disabled"> &lt; </span><span
                            class="btn btn-next"> &gt; </span></p>
                </dt>
                <dd class="">
                    <div class="service-list clearfix" style="width: 1431px;">
                        <ol>
                            <li><a onclick="jump_link('http://www.huawei.com/cn/')">华为集团</a></li>
                            <li><a href="https://consumer.huawei.com/cn/" target="_blank"
                                   textvalue="华为CBG官网">华为CBG官网</a></li>
                            <li><a onclick="jump_link('http://www.honor.cn/')">荣耀官网</a></li>
                            <li><a onclick="jump_link('http://club.huawei.com/')" textvalue="花粉俱乐部">花粉俱乐部</a></li>
                            <li><a href="https://www.vmall.com/shopdc/sitemap.html" target="_blank">网站地图</a><br></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://www.hwtrip.com/')">爱旅官网</a></li>
                            <li><a onclick="jump_link('http://www.wbiao.cn/')">万表网</a></li>
                            <li><a onclick="jump_link('http://www.askci.com/')">中商情报网</a></li>
                            <li><a onclick="jump_link('http://www.shuame.com/')">刷机精灵</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('https://www.vmall.com')" textvalue="华为手机">华为手机</a></li>
                            <li><a onclick="jump_link('http://www.znds.com/')">智能电视</a></li>
                            <li><a onclick="jump_link('http://www.uc.cn/')">UC浏览器</a></li>
                            <li><a onclick="jump_link('http://www.zol.com/')">中关村商城</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://www.kugou.com/')">酷狗音乐</a></li>
                            <li><a onclick="jump_link('http://www.958shop.com/')">百信手机网</a></li>
                            <li><a onclick="jump_link('http://www.cardbaobao.com/')">卡宝宝网</a></li>
                            <li><a onclick="jump_link('http://www.duote.com/')" textvalue="多特软件下载">多特软件下载</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://www.tongbu.com/')">同步助手</a></li>
                            <li><a onclick="jump_link('http://www.fengniao.com/')">蜂鸟摄影网</a></li>
                            <li><a onclick="jump_link('http://www.7po.com/')">奇珀论坛</a></li>
                            <li><a onclick="jump_link('http://www.homekoo.com/')">家具商城</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://www.obolee.com/')">欧宝丽珠宝</a></li>
                            <li><a onclick="jump_link('http://www.yzmg.com/')">亿智蘑菇</a></li>
                            <li><a onclick="jump_link('http://www.wandoujia.com/')">安卓市场</a></li>
                            <li><a onclick="jump_link('http://baike.1688.com/')">阿里巴巴生意经</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://product.cnmo.com/')">手机大全</a></li>
                            <li><a onclick="jump_link('http://www.anzow.com/')">安卓软件园</a></li>
                            <li><a onclick="jump_link('http://www.wpxap.com/')">智机论坛</a></li>
                            <li><a onclick="jump_link('http://www.eepw.com.cn/')">电子产品世界</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('http://www.liqucn.com/')">历趣网</a></li>
                            <li><a onclick="jump_link('http://www.51bi.com/')">网购返利</a></li>
                            <li><a title="Apple110" onclick="jump_link('http://www.apple110.com/')">Apple110</a></li>
                            <li><a onclick="jump_link('http://www.91.com/')" textvalue="91手机门户网">91手机门户网</a></li>
                            <li><a onclick="jump_link('http://www.ydss.cn/')">移动叔叔</a></li>
                        </ol>
                        <ol>
                            <li><a onclick="jump_link('https://www.vmall.com')">荣耀Magic</a></li>
                            <li><a onclick="jump_link('http://car.ctrip.com/')">携程租车</a></li>
                        </ol>
                    </div>
                    <script>
                        jump_link = function (url) {
                            var win = window.open(url, "_blank");
                            win.opener = null;
                        };
                    </script>
                    <script type="text/javascript">
                        jump_link = function (url) {
                            var win = window.open(url, "_blank");
                            win.opener = null;
                        }

                        ec.product.queryPointWeight = function (r) {
                            var u = ec.product.getSkuInfo(r);
                            if (u || u.code) {
                                if (ec.product.productType == 1 || ec.product.productType == 2 || ec.product.productType == 5 || ec.product.productType == 6) {
                                    return
                                }
                                if (ec.product.seCode != "VMALL-HUAWEIDEVICE") {
                                    return
                                }
                                if (ec.product.getSkuPointWeight(u.code) != undefined) {
                                    $("#promBtn p").append(ec.product.getSkuPointWeightDetail(u.code));
                                    var t = [];
                                    t.push('<div class="product-prom-item clearfix relative" id="promBtn">');
                                    t.push($("#promBtn").html());
                                    t.push("</div>");
                                    $("#promBtn").remove();
                                    $(".product-prom").append(ec.product.getSkuPointWeight(u.code));
                                    $(".product-prom .product-prom-item").hide();
                                    if ($("#pro-gift-list-select").find("a").length > 0 && isShowGifts) {
                                        if ($("#product-prom-all").children().length > 4) {
                                            for (var s = 0; s < 3; s++) {
                                                $(".product-prom-item").eq(s).show()
                                            }
                                            $(".product-prom").append(t.join(""));
                                            $("#promBtn").show();
                                            for (var s = 0; s < 2; s++) {
                                                $("#promBtn em").eq(s).hide()
                                            }
                                        } else {
                                            $(".product-prom .product-prom-item").show()
                                        }
                                    } else {
                                        if ($("#product-prom-all").children().length > 5) {
                                            for (var s = 1; s < 4; s++) {
                                                $(".product-prom-item").eq(s).show()
                                            }
                                            $(".product-prom").append(t.join(""));
                                            $("#promBtn").show();
                                            for (var s = 0; s < 3; s++) {
                                                $("#promBtn em").eq(s).hide()
                                            }
                                        } else {
                                            $(".product-prom .product-prom-item").show()
                                        }
                                    }
                                    if ($(".product-prom").parent().hasClass("hide") || $(".product-prom").parent().css("display") == "none") {
                                        $(".product-prom").parent().removeClass("hide");
                                        $(".product-prom").parent().css("display", "")
                                    }
                                    if ((!$("#pro-gift-list-select").find("a").length) > 0 || !isShowGifts) {
                                        $("#pro-match-gift").hide()
                                    }
                                    if ($("#pro-promotions-list").parent().parent().hasClass("hide")) {
                                        $("#pro-promotions-list").parent().parent().removeClass("hide")
                                    }
                                    ec.product.refreshStyle()
                                } else {
                                    $.ajax({
                                        url: openApiDomain + "/point/queryPointWeight.json?skuCodes=[" + u.code + "]",
                                        dataType: "json",
                                        timeout: 10000,
                                        beforeSend: function (xhr) {
                                            xhr.withCredentials = true;
                                            xhr.setRequestHeader("CsrfToken", csrftoken);
                                        },
                                        success: function (A) {
                                            var x = 1;
                                            if (A.resultCode == "200000") {
                                                A.pointWeightMap = A.data;
                                                if (A.pointWeightMap != null) {
                                                    for (var w in A.pointWeightMap) {
                                                        if (A.pointWeightMap[w] != null) {
                                                            x = A.pointWeightMap[w]
                                                        }
                                                    }
                                                }
                                            }
                                            var z = []
                                                , v = [];
                                            if (x == 0) {
                                                return
                                            } else {
                                                if (x == 1) {
                                                    v.push('<em class="tag">\u8d60\u9001\u79ef\u5206</em>');
                                                    z.push('<div class="product-prom-item clearfix" >');
                                                    z.push('<em class="tag">\u8d60\u9001\u79ef\u5206</em>');
                                                    z.push('<div class="product-prom-con">');
                                                    z.push("\u8d2d\u4e70\u5373\u8d60\u5546\u57ce\u79ef\u5206\uff0c\u79ef\u5206\u53ef\u62b5\u73b0~");
                                                    z.push("</div>");
                                                    z.push("</div>")
                                                } else {
                                                    if (x > 1) {
                                                        v.push('<em class="tag">\u79ef\u5206\u7ffb\u500d</em>');
                                                        z.push('<div class="product-prom-item clearfix" >');
                                                        z.push('<em class="tag">\u79ef\u5206\u7ffb\u500d</em>');
                                                        z.push('<div class="product-prom-con">');
                                                        z.push("\u6d3b\u52a8\u8d60\u9001\u7ffb\u500d\u79ef\u5206\uff0c\u79ef\u5206\u53ef\u62b5\u73b0~");
                                                        z.push("</div>");
                                                        z.push("</div>")
                                                    }
                                                }
                                            }
                                            $("#promBtn p").append(v.join(""));
                                            var B = [];
                                            B.push('<div class="product-prom-item clearfix relative" id="promBtn">');
                                            B.push($("#promBtn").html());
                                            B.push("</div>");
                                            $("#promBtn").remove();
                                            $(".product-prom").append(z.join(""));
                                            $(".product-prom .product-prom-item").hide();
                                            if ($("#pro-gift-list-select").find("a").length > 0 && isShowGifts) {
                                                if ($("#product-prom-all").children().length > 4) {
                                                    for (var y = 0; y < 3; y++) {
                                                        $(".product-prom-item").eq(y).show()
                                                    }
                                                    $(".product-prom").append(B.join(""));
                                                    $("#promBtn").show();
                                                    for (var y = 0; y < 2; y++) {
                                                        $("#promBtn em").eq(y).hide()
                                                    }
                                                } else {
                                                    $(".product-prom .product-prom-item").show()
                                                }
                                            } else {
                                                if ($("#product-prom-all").children().length > 5) {
                                                    for (var y = 1; y < 4; y++) {
                                                        $(".product-prom-item").eq(y).show()
                                                    }
                                                    $(".product-prom").append(B.join(""));
                                                    $("#promBtn").show();
                                                    for (var y = 0; y < 3; y++) {
                                                        $("#promBtn em").eq(y).hide()
                                                    }
                                                } else {
                                                    $(".product-prom .product-prom-item").show()
                                                }
                                            }
                                            if ($(".product-prom").parent().hasClass("hide") || $(".product-prom").parent().css("display") == "none") {
                                                $(".product-prom").parent().removeClass("hide");
                                                $(".product-prom").parent().css("display", "")
                                            }
                                            if ((!$("#pro-gift-list-select").find("a").length) > 0 || !isShowGifts) {
                                                $("#pro-match-gift").hide()
                                            }
                                            ec.product.setSkuPointWeight(u.code, z.join(" "));
                                            ec.product.setSkuPointWeightDetail(u.code, v.join(" "));
                                            ec.product.refreshStyle()
                                        }
                                    })
                                }
                            }
                        };

                        $(document).ready(function () {
                            ec.code.addAnalytics({dmp: true});
                        });
                    </script>
                </dd>
            </dl>
        </div>
        <div class="service-r fl">
            <dl class="s7">
                <dt>
                    <p class="title">400-088-6888</p></dt>
                <dd>
                    <ol>
                        <li><a>7x24小时客服热线（仅收市话费）</a></li>
                    </ol>
                </dd>
                <dd>
                    <a id="tools-nav-service-robotim-button" rel="nofollow" class="service-btn btn-line-primary"
                       href="http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&amp;configID=10&amp;location=B_002&amp;chatfrom=web&amp;channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af&amp;enterurl=https%3A%2F%2Fwww.vmall.com%2Fmember%2FupdateToOrder-11013508947&amp;k=1&amp;remark="
                       target="_blank" style="display: block;"><i class=""></i> 在线客服</a>
                </dd>
            </dl>
            <div class="service-code clearfix">
                <h2>关注Vmall：</h2>
                <ul class="clearfix">
                    <li class="iconfont">
                        <a href="javascript:;"></a>
                        <div class="service-code-img"><img src="./修改订单_个人中心_华为商城_files/20181116180507506.jpg"></div>
                    </li>
                    <li class="iconfont">
                        <a target="_blank" href="https://www.toutiao.com/c/user/52373534151/#mid=52586950033"
                           rel="nofollow"></a>
                    </li>
                    <li class="iconfont">
                        <a target="_blank" href="https://weibo.com/shophuawei" rel="nofollow"></a>
                    </li>
                    <li class="iconfont">
                        <a target="_blank" href="https://club.huawei.com/" rel="nofollow"></a>
                    </li>
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
        <div class="popup-button-area"><a id="ec_ui_confirm_yes" href="javascript:;"
                                          class="button-action-yes"><span>是</span></a><a id="ec_ui_confirm_no"
                                                                                         href="javascript:;"
                                                                                         class="button-action-no"><span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!--新确认对话框-->
<div id="ec_ui_confirm_new" class="popup-area-new hide">
    <div class="b">
        <p id="ec_ui_confirm_new_msg"></p>
        <div class="popup-button-area"><a id="ec_ui_confirm_new_yes" href="javascript:;"
                                          class="box-button-style-1"><span>是</span></a><a id="ec_ui_confirm_new_no"
                                                                                          href="javascript:;"
                                                                                          class="box-button-style-1"><span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down-new"></s></div>
</div>

<!--提示对话框-->
<div id="ec_ui_tips" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_tips_msg" class="tac"></p>
        <div class="popup-button-area tac"><a id="ec_ui_tips_yes" href="javascript:;" class="button-action-yes"
                                              title="确定"><span>确定</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!-- 2018-10-26-悬浮工具栏-start -->
<div class="hungBar j-hungBar">
    <div class="hungBar-content">
        <a target="_blank" onclick="pushRightHelpMsg(1)" href="https://www.vmall.com/cart2" timetype="timestamp"
           class="hungBar-cart" title="购物车"><span style="display:none;"></span><i>购物车</i></a>
        <a target="_blank" id="tools-nav-service-robotim" onclick="pushRightHelpMsg(2)"
           href="http://robotim.vmall.com/live800/chatClient/chatbox.jsp?companyID=8922&amp;configID=10&amp;location=B_002&amp;chatfrom=web&amp;channelType=Vmall%e5%95%86%e5%9f%8e%e7%94%b5%e8%84%91%e7%ab%af&amp;enterurl=https%3A%2F%2Fwww.vmall.com%2Fmember%2FupdateToOrder-11013508947&amp;k=1&amp;remark="
           class="hungBar-service" title="在线客服" style="display: block;"><i>在线客服</i></a>
        <a id="tools-nav-survery" onclick="ec.survery.open();pushRightHelpMsg(3)" href="javascript:;"
           class="hungBar-feedback" title="意见反馈" style="display: block;"><i>意见反馈</i></a>
        <a href="javascript:;" class="hungBar-top" title="返回顶部" id="hungBar-top" style="display: none;"><i>返回顶部</i></a>
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
                <div class="box-tc2"><a class="box-close" title="关闭" onclick="ec.survery.close();"
                                        href="javascript:;"></a><span class="box-title">意见反馈</span></div>
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
                        <div class="form-feedback-area">
                            <div class="b">
                                <div class="form-edit-area">
                                    <form autocomplete="off" id="form-feedback">
                                        <div class="form-edit-table">
                                            <table cellspacing="0" cellpadding="0" border="0">
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <select name="type" id="surverytype">
                                                            <option>请选择疑问类型</option>
                                                            <option>商品质量（手机、平板等软、硬件质量）</option>
                                                            <option>商品缺货</option>
                                                            <option>物流发货（发货快慢、发错货、送件人态度等）</option>
                                                            <option>售后服务（服务网点、维修、退换货、客服）</option>
                                                            <option>网站问题（商城功能失效、不好用等）</option>
                                                            <option>其他问题</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <b>您的问题与建议</b><span id="errMsg"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><textarea name="content" id="surveryContent" type="textarea"
                                                                  class="textarea"></textarea></td>
                                                </tr>
                                                <tr>
                                                    <td><b>您的联系方式</b></td>
                                                </tr>
                                                <tr>
                                                    <td><input type="text" name="contact" id="surveryContact"></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div class="fl">
                                                            <input type="text" maxlength="4" class="identify"
                                                                   name="code" id="surveryVerify"
                                                                   onkeyup="if(this.value.length==4){ec.survery.validate();}">&nbsp;&nbsp;<img
                                                                id="surveryVerifyImg" onclick="ec.survery.reloadCode()"
                                                                class="vam" alt="验证码">&nbsp;&nbsp;&nbsp;&nbsp;<span
                                                                class="vam"><a class="u" href="javascript:;"
                                                                               onclick="ec.survery.reloadCode();">换一张</a></span>
                                                        </div>
                                                        <div class="fr">
                                                            <a href="javascript:;" onclick="ec.survery.submit();"
                                                               class="button-action-yes"><span>提交</span></a>
                                                        </div>
                                                    </td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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

<div id="globleParameter" class="hide" context="" stylepath="https://res8.vmallres.com/20190129/css"
     scriptpath="https://res9.vmallres.com/20190129/js" imagepath="https://res.vmallres.com/20190129/images"
     mediapath="https://res.vmallres.com/pimages/"></div>


<!-- 2017-02-15-底部-start -->
<div class="footer-container">
    <div class="footer">
        <div class="footer-warrant-area clearfix"><p class="footer-warrant-logo fl"><a
                href="https://www.vmall.com/"><img src="./修改订单_个人中心_华为商城_files/wLelYbpMVWbj9Xpaa5Fk.png"
                                                   title="vmall.png" style="float:none;"></a></p>
            <div class="fl">
                <ul class="footer-warrant-link">
                    <li><a href="https://www.huawei.com/cn/">华为集团</a></li>
                    <li><a href="https://consumer.huawei.com/cn/">华为CBG官网</a></li>
                    <li><a href="http://www.honor.cn/">荣耀官网</a></li>
                    <li><a href="https://club.huawei.com/">花粉俱乐部</a></li>
                    <li><a href="http://appstore.huawei.com/">华为应用市场</a></li>
                    <li><a href="https://emui.huawei.com/cn/">EMUI</a></li>
                    <li><a href="https://cloud.huawei.com/">华为终端云空间</a></li>
                    <li><a href="https://developer.huawei.com/cn/">开发者联盟</a></li>
                    <li><a href="https://m.vmall.com/">华为商城手机版</a></li>
                    <li><a href="https://www.vmall.com/shopdc/sitemap.html">网站地图</a></li>
                </ul>
                <a href="https://www.vmall.com/help/faq-2635.html" target="_blank" title="隐私声明"
                   rel="nofollow">隐私声明</a><a href="https://www.vmall.com/help/faq-778.html" target="_blank" title="服务协议"
                                             rel="nofollow"> 服务协议</a> <a
                    href="https://www.vmall.com/help/faq-11810.html" target="_blank" title="COOKIES" rel="nofollow">
                COOKIES</a> Copyright © 2012-2019 华为软件技术有限公司 版权所有 保留一切权利 公安备案 <a
                    href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=32011402010009" target="_blank"
                    rel="nofollow">苏公网安备32011402010009号</a><br><a target="_blank" href="http://www.miitbeian.gov.cn/"
                                                                  rel="nofollow">苏ICP备17040376号-6</a><a
                    href="https://res.vmallres.com/pimages//sale/2019-01/kbbWzkHqRO76lQpJulDI.png" target="_self">
                增值电信业务经营许可证：苏B2-20130048号</a><em>| </em><a
                    href="https://res.vmallres.com/pimages//sale/2019-01/sQAzb2k9TcMJr8CZCUCq.png" target="_blank">网络文化经营许可证：苏网文[2015]
                1599-026号</a></div>
            <p class="fr footer-warrant-img"><a class="fl"
                                                href="http://privacy.truste.com/privacy-seal/validation?rid=81be9ca0-c821-4e2c-ad4b-ff7cff98f75f&amp;lang=zh-cn"
                                                target="_blank" rel="nofollow"><img
                    src="./修改订单_个人中心_华为商城_files/20180522101715775.jpg" alt="TRUSTe隐私认证" title="TRUSTe隐私认证"></a> <a
                    class="fl" href="https://res.vmallres.com/pimages//sale/2018-06/20180615181402966.jpg"
                    target="_blank" rel="nofollow"><img src="./修改订单_个人中心_华为商城_files/20160226162415360.png" alt="电子营业执照"
                                                        title="电子营业执照"></a></p>
            <p><br></p></div>
    </div>
</div>
<!-- 2017-02-15-底部-end -->
<!--<script src="https://res9.vmallres.com/20190129/js/echannel/slider.min.js?20170426"></script>-->
<!--<script src="https://res9.vmallres.com/20190129/js/echannel/swiper.min.js?20170426"></script>-->
<script>
    new Slider({//友情链接
        objid: '#serverlink',
        listname: '.service-list',
        listitem: 'ol',
        shownum: 1
    }).init();

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
        $('.j-hungBar .hungBar-cart').hover(function () {
            ec.minicart.updateMiniCartNum();
        });
    });

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

    function pushMyOrderMsg() {
        ec.account.afterLogin(function () {
            ec.redirectTo("https://www.vmall.com/member/order?t=1549116423460timestamp");
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


    $('.footer-warrant-area.clearfix a').click(function () {
        var url = $(this).attr("href");
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "URL": url,
                    "click": "1"
                }
        };
        if ($(this).find('img')) {
            value.CONTENT.ADID = $(this).find("img").attr("src");
        } else {
            value.CONTENT.name = $(this).text();
        }
        ec.account.dapPushMsg("300000502", value, "click");
        ec.code.addAnalytics({hicloud: true});
        _paq.push(["trackLink", "300000502", "link", value]);
    });

    function pushRightHelpMsg(index) {
        var buttonName = ['', '购物车', '在线客服', '意见反馈'][index];
        var value = {
            "UID": ec.util.cookie.get("uid"),
            "TID": getPtid(),
            "TIME": getTime(),
            "CONTENT":
                {
                    "buttonName": buttonName,
                    "click": "1",
                    'index': index
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
        var win = ec.openWindow(url);
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

<iframe src="javascript:false" style="display: none;"></iframe>
<script src="./修改订单_个人中心_华为商城_files/dmpa-min.js.下载" async="" id="dmpa"></script>
<script type="text/javascript" id="footerToken"></script>
</body>
</html>