<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--我的退换货--%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
        var scriptPath = 'https://res9.vmallres.com/20181222/js';
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
                if (uri == domainMain || uri == (domainMain + "/index.jsp")
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

    <title>退换货_个人中心</title>

    <link href="../css/userManager-css/ec.core.base.min.css" rel="stylesheet" type="text/css">
    <link href="../css/userManager-css/main.min.css" rel="stylesheet" type="text/css">

    <script src="../js/userManager-js/jsapi.js" namespace="ec"></script>
    <script src="../js/userManager-js/jquery-1.4.4.min.js"></script>
    <script src="../js/userManager-js/ec.core.js"></script>
    <script src="../js/userManager-js/ec.business.min.js"></script>
    <script src="../js/userManager-js/base.min.js"></script>
    <script src="../js/userManager-js/slider.min.js"></script>
    <script src="../js/userManager-js/swiper.min.js"></script>
</head>

<body class="wide">
<div class="top-banner" id="top-banner-block"></div>
<img src="../images/userManager-imager/icon-common.png" class="hide">

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

                <li><a href="order.jsp">我的订单</a></li>

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
                            <a href="/cart2?t=1546501486592timestamp" class="icon-minicart" rel="nofollow"
                               timeType="timestamp" target="blank" onclick="pushMyCartMsg()">
                                <span>购物车(<span id="header-cart-total">0</span>)</span>
                            </a>
                        </div>
                        <div class="b" id="header-toolbar-minicart-content">
                            <!-- 2017-06-19-迷你购物车-start -->
                            <div class="dropdown-minicart">
                                <div class="minicart-pro-empty " id="minicart-pro-empty">
                                    <p><span class="icon-minicart"></span></p>
                                    <p id="cartInfo">您的购物车是空的，赶紧选购吧~</p>
                                    <a href="https://www.vmall.com">去逛逛吧</a>
                                </div>
                                <div class="minicart-pro-list minicart-pro-list-scroll hide"
                                     id="minicart-pro-list-block">
                                    <ul class="minicart-pro-list" id="minicart-goods-list"></ul>
                                    <div class="minicart-pro-settleup" id="minicart-pro-settleup">
                                        <p>
                                            <span>总计：</span>
                                            <span><b id="micro-cart-totalPrice">&yen;&nbsp;0</b><s
                                                    id="micro-cart-totalOriginPrice">&yen;&nbsp;0</s></span>
                                        </p>
                                        <a class="button-minicart" id="button-minicart-go2confirm" href="javascript:;"
                                           onclick="ec.minicart.confirm()">结算</a>
                                        <a class="button-minicart disabled" id="disbutton-minicart-go2confirm"
                                           style="display:none;">结算</a>
                                    </div>
                                </div>
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
                <a href="../index.jsp" title="Vmall.com - 商城">
                    <img src="../images/userManager-imager/x9a6U8WW0bhrA7u0FIlY.png" alt="Vmall.com - 商城"/></a>
            </div>
            <!-- 2017-02-15-logo-end -->

            <!-- 2017-06-19-导航-start -->
            <div class="naver">
                <ul id="naver" class="clearfix">
                    <li id="zxnav_0" data-id="0">
                        <a href="#" target="_blank"><span>手机</span></a>
                        <input id="zxnav_0_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_0_name" type="hidden" autocomplete="off" value="手机">
                    </li>
                    <li id="zxnav_1" data-id="1">
                        <a href="#" target="_blank"><span>笔记本 &amp; 平板</span></a>
                        <input id="zxnav_1_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_1_name" type="hidden" autocomplete="off" value="笔记本 &amp; 平板">
                    </li>
                    <li id="zxnav_2" data-id="2">
                        <a href="#" target="_blank"><span>智能穿戴</span></a>
                        <input id="zxnav_2_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_2_name" type="hidden" autocomplete="off" value="智能穿戴">
                    </li>
                    <li id="zxnav_3" data-id="3">
                        <a href="#" target="_blank"><span>智能家居</span></a>
                        <input id="zxnav_3_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_3_name" type="hidden" autocomplete="off" value="智能家居">
                    </li>
                    <li id="zxnav_4" data-id="4">
                        <a href="#" target="_blank"><span>通用配件</span></a>
                        <input id="zxnav_4_flag" type="hidden" autocomplete="off" value="no">
                        <input id="zxnav_4_name" type="hidden" autocomplete="off" value="通用配件">
                    </li>
                </ul>
            </div>
            <div class="naver-sub hide" id="naver-sub-category">
                <div id="naverSub00" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="#" target="_blank" class="">全部手机></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="#" target="_blank" class="fl">荣耀</a>
                            <a href="#" target="_blank" class="fl">HUAWEI P系列</a>
                            <a href="#" target="_blank" class="fl">荣耀畅玩系列</a>
                            <a href="#" target="_blank" class="fl">HUAWEI Mate系列</a>
                            <a href="#" target="_blank" class="fl">HUAWEI nova系列</a>
                            <a href="#" target="_blank" class="fl">华为畅享系列</a>
                            <a href="#" target="_blank" class="fl">HUAWEI 麦芒系列</a>
                            <a href="#" target="_blank" class="fl">移动4G+专区</a>
                        </div>
                    </div>

                    <ul id="zxnav_0_prolist" class="grid-list clearfix">
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI P20</div>
                                <p class="grid-price">&yen;3388.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀8X</div>
                                <p class="grid-price">&yen;1399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI Mate 20</div>
                                <p class="grid-price">&yen;3999.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI Mate 20 Pro</div>
                                <p class="grid-price">&yen;5399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀10青春版</div>
                                <p class="grid-price">&yen;1399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI nova 4</div>
                                <p class="grid-price">&yen;3399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀V20</div>
                                <p class="grid-price">&yen;2999.00</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <input id="name_10086511497719" type="hidden" value="HUAWEI Mate 20">
                        <input id="name_10086695442401" type="hidden" value="荣耀V20">
                        <input id="name_10086002115494" type="hidden" value="HUAWEI Mate 20 Pro">
                        <input id="name_10086772693857" type="hidden" value="荣耀10青春版">
                        <input id="name_10086427803767" type="hidden" value="HUAWEI nova 4">
                        <input id="name_10086339328421" type="hidden" value="荣耀8X">
                        <input id="name_10086425688564" type="hidden" value="HUAWEI P20">
                    </ul>
                    <input id="zxnav_0_skuIds" type="hidden"
                           value="10086511497719,10086695442401,10086002115494,10086772693857,10086427803767,10086339328421,10086425688564,">
                </div>
                <div id="naverSub01" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="#" target="_blank" class="">全部笔记本 &amp; 平板></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="#" target="_blank" class="fl">平板电脑</a>
                            <a href="#" target="_blank" class="fl">笔记本电脑</a>
                            <a href="#" target="_blank" class="fl">笔记本配件</a>
                        </div>
                    </div>

                    <ul id="zxnav_1_prolist" class="grid-list clearfix">
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀畅玩平板2 9.6英寸</div>
                                <p class="grid-price">&yen;999.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI MateBook D</div>
                                <p class="grid-price">&yen;5188.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀平板5</div>
                                <p class="grid-price">&yen;1399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为平板 M5 青春版</div>
                                <p class="grid-price">&yen;1899.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI MateBook X Pro</div>
                                <p class="grid-price">&yen;7988.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀MagicBook</div>
                                <p class="grid-price">&yen;5699.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI MateBook 13</div>
                                <p class="grid-price">&yen;5699.00</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <input id="name_10086381377710" type="hidden" value="HUAWEI MateBook 13">
                        <input id="name_10086165908070" type="hidden" value="荣耀MagicBook">
                        <input id="name_10086514290855" type="hidden" value="HUAWEI MateBook X Pro">
                        <input id="name_10086466203116" type="hidden" value="荣耀平板5">
                        <input id="name_10086612323957" type="hidden" value="华为平板 M5 青春版">
                        <input id="name_887012722" type="hidden" value="荣耀畅玩平板2 9.6英寸">
                        <input id="name_777872533" type="hidden" value="HUAWEI MateBook D">
                    </ul>
                    <input id="zxnav_1_skuIds" type="hidden"
                           value="10086381377710,10086165908070,10086514290855,10086466203116,10086612323957,887012722,777872533,">
                </div>
                <div id="naverSub02" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="#" target="_blank" class="">全部智能穿戴></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="#" target="_blank" class="fl">手环</a>
                            <a href="#" target="_blank" class="fl">手表</a>
                            <a href="#" target="_blank" class="fl">VR</a>
                        </div>
                    </div>

                    <ul id="zxnav_2_prolist" class="grid-list clearfix">
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI WATCH GT</div>
                                <p class="grid-price">&yen;1488.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为儿童手表 3 Pro</div>
                                <p class="grid-price">&yen;988.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀手表</div>
                                <p class="grid-price">&yen;899.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为手环 B5</div>
                                <p class="grid-price">&yen;999.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀手环4 标准版</div>
                                <p class="grid-price">&yen;199.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀手环4 Running版</div>
                                <p class="grid-price">&yen;99.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">HUAWEI VR 2</div>
                                <p class="grid-price">&yen;1999.00</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <input id="name_10086253509221" type="hidden" value="荣耀手表">
                        <input id="name_10086354651877" type="hidden" value="华为儿童手表 3 Pro">
                        <input id="name_10086455419044" type="hidden" value="荣耀手环4 标准版">
                        <input id="name_10086119759478" type="hidden" value="HUAWEI WATCH GT">
                        <input id="name_10086949141018" type="hidden" value="荣耀手环4 Running版">
                        <input id="name_10086972979696" type="hidden" value="华为手环 B5">
                        <input id="name_86471537" type="hidden" value="HUAWEI VR 2">
                    </ul>
                    <input id="zxnav_2_skuIds" type="hidden"
                           value="10086253509221,10086354651877,10086455419044,10086119759478,10086949141018,10086972979696,86471537,">
                </div>
                <div id="naverSub03" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="#" target="_blank" class="">全部智能家居></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="#" target="_blank" class="fl">路由器</a>
                            <a href="#" target="_blank" class="fl">电视盒子</a>
                            <a href="#" target="_blank" class="fl">照明</a>
                            <a href="#" target="_blank" class="fl">清洁</a>
                            <a href="#" target="_blank" class="fl">子母/分布式路由</a>
                            <a href="#" target="_blank" class="fl">电力猫/wifi放大器</a>
                            <a href="#" target="_blank" class="fl">随行wifi</a>
                            <a href="#" target="_blank" class="fl">节能</a>
                            <a href="#" target="_blank" class="fl">环境</a>
                            <a href="#" target="_blank" class="fl">安防</a>
                            <a href="#" target="_blank" class="fl">健康</a>
                            <a href="#" target="_blank" class="fl">厨电</a>
                            <a href="#" target="_blank" class="fl">影音</a>
                            <a href="#" target="_blank" class="fl">卫浴</a>
                            <a href="#" target="_blank" class="fl">其他</a>
                        </div>
                    </div>

                    <ul id="zxnav_3_prolist" class="grid-list clearfix">
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为随行WiFi 2</div>
                                <p class="grid-price">&yen;499.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为路由 Q2</div>
                                <p class="grid-price">&yen;799.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀路由2S</div>
                                <p class="grid-price">&yen;199.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀路由Pro 2</div>
                                <p class="grid-price">&yen;349.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为 AI 音箱</div>
                                <p class="grid-price">&yen;399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀YOYO智能音箱</div>
                                <p class="grid-price">&yen;199.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">欧普读写台灯</div>
                                <p class="grid-price">&yen;169.00</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <input id="name_10086429153459" type="hidden" value="荣耀路由Pro 2">
                        <input id="name_10086794601109" type="hidden" value="华为 AI 音箱">
                        <input id="name_10086943604110" type="hidden" value="荣耀路由2S">
                        <input id="name_10086061866500" type="hidden" value="华为路由 Q2">
                        <input id="name_10086477642869" type="hidden" value="荣耀YOYO智能音箱">
                        <input id="name_190047935" type="hidden" value="华为随行WiFi 2">
                        <input id="name_10086231514149" type="hidden" value="欧普读写台灯">
                    </ul>
                    <input id="zxnav_3_skuIds" type="hidden"
                           value="10086429153459,10086794601109,10086943604110,10086061866500,10086477642869,190047935,10086231514149,">
                </div>
                <div id="naverSub04" class="naver-sub-wrap hide">
                    <div class="p-title clearfix">
                        <div class="s1 fl">
                            <a href="#" target="_blank" class="">全部通用配件></a>
                        </div>
                        <div class="s2 fl clearfix">
                            <a href="#" target="_blank" class="fl">移动电源</a>
                            <a href="#" target="_blank" class="fl">耳机</a>
                            <a href="#" target="_blank" class="fl">音箱</a>
                            <a href="#" target="_blank" class="fl">自拍杆/支架</a>
                            <a href="#" target="_blank" class="fl">充电器/线材</a>
                            <a href="#" target="_blank" class="fl">U盘/存储卡</a>
                            <a href="#" target="_blank" class="fl">摄像机/镜头</a>
                            <a href="#" target="_blank" class="fl">智能硬件</a>
                            <a href="#" target="_blank" class="fl">生活周边</a>
                            <a href="#" target="_blank" class="fl">取卡针</a>
                        </div>
                    </div>

                    <ul id="zxnav_4_prolist" class="grid-list clearfix">
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为10000mAh 移动电源 充电宝</div>
                                <p class="grid-price">&yen;159.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀xSport运动蓝牙耳机</div>
                                <p class="grid-price">&yen;249.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀体脂秤</div>
                                <p class="grid-price">&yen;169.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">Momax 精英3合1编织线</div>
                                <p class="grid-price">&yen;98.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">荣耀FlyPods无线耳机</div>
                                <p class="grid-price">&yen;799.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为主动降噪耳机3</div>
                                <p class="grid-price">&yen;399.00</p>
                            </a>
                        </li>
                        <li class="grid-items" onmouseenter="fixCurrent(this)" onmouseleave="leaveCurrent(this)">
                            <a class="thumb" target="_blank" href="#">
                                <p class="grid-img">&nbsp;</p>
                                <div class="grid-title">华为智能体脂秤</div>
                                <p class="grid-price">&yen;169.00</p>
                            </a>
                        </li>
                        <!--通过添加current 来实现 hover效果-->
                        <input id="name_937100113" type="hidden" value="华为10000mAh 移动电源  充电宝">
                        <input id="name_10086738650172" type="hidden" value="荣耀FlyPods无线耳机">
                        <input id="name_534967719" type="hidden" value="华为智能体脂秤">
                        <input id="name_189161731" type="hidden" value="荣耀xSport运动蓝牙耳机">
                        <input id="name_10086097429247" type="hidden" value="华为主动降噪耳机3">
                        <input id="name_553811697" type="hidden" value="荣耀体脂秤">
                        <input id="name_10086281411409" type="hidden" value="Momax 精英3合1编织线">
                    </ul>
                    <input id="zxnav_4_skuIds" type="hidden"
                           value="937100113,10086738650172,534967719,189161731,10086097429247,553811697,10086281411409,">
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
                    <form method="get" onsubmit="return search(this)">
                        <input type="text" class="text" maxlength="200" id="search-kw" autocomplete="off"/>
                        <input type="submit" class="button" value="搜索"/>
                        <input type="hidden" id="channelType" name="channelType" value="0"/>
                        <input type="hidden" id="default-search" value="nova 3i|荣耀 Note10"/>
                    </form>
                </div>
                <div class="search-bar-key" id="search-bar-key">
                    <div class="searchBar-key">
                        <a href="javascript:void(0);" onclick="searchFunc('荣耀V20'); return false;" style="color:#CF0A2C"
                           rel="nofollow">荣耀V20</a>
                        <a href="javascript:void(0);" onclick="searchFunc('nova4'); return false;" style="color:#CF0A2C"
                           rel="nofollow">nova4</a>
                    </div>
                </div>
                <div id="search-history" class="search-bar-history hide">
                    <p>
                        <label>历史记录</label><span id="cleanUp" class="search-history-btn">清除</span>
                    </p>
                    <ul id="search-history-list"></ul>
                </div>
            </div>
            <!-- 2017-02-15-搜索条-end -->
        </div>
    </div>
</div>
<!-- 2017-02-15-头部-end -->

<div id="searchHotWordList" style="display:none;">[{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:216,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-2,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,&quot;word&quot;:&quot;nova4&quot;},{&quot;id&quot;:226,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-3,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:2,&quot;word&quot;:&quot;HUAWEI
    Mate 20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;&quot;,&quot;id&quot;:250,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-11,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;荣耀V20&quot;},{&quot;id&quot;:47,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-12,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:3,&quot;word&quot;:&quot;荣耀Magic2&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,&quot;id&quot;:254,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-25,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:1,&quot;word&quot;:&quot;荣耀V20&quot;},{&quot;activityUrl&quot;:&quot;&quot;,&quot;fontColor&quot;:&quot;#CF0A2C&quot;,&quot;id&quot;:258,&quot;inSearchBox&quot;:0,&quot;isActivityWords&quot;:0,&quot;priority&quot;:-26,&quot;saleChannel&quot;:1,&quot;tagType&quot;:0,&quot;type&quot;:1,&quot;word&quot;:&quot;nova4&quot;}]
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
        <div class="breadcrumb-area fcn"><a href="../index.jsp">首页</a>&nbsp;&gt;&nbsp;<em id="personCenter"><a
                href="details.jsp">我的商城</a></em><em id="pathPoint">&nbsp;&gt;&nbsp;</em><span id="pathTitle"></span></div>
    </div>
    <div class="hr-10"></div>

    <div class="g">
        <div class="fr u-4-5">
            <div class="">
                <div class="fr u-4-5">
                    <!-- 20141212-栏目-start -->
                    <div class="section-header section-header-new">
                        <div class="fl">
                            <h2><span>我的退换货</span></h2>
                        </div>
                    </div>
                    <!-- 20141212-栏目-end -->

                    <div class="myorder-hd clearfix">
                        <div class="tab fl">
                            <ul class="clearfix">
                                <li><a href="javascript:;" onclick="ec.member.exchange.check(this,'applyTemp');">
                                    <span>申请退换货</span></a>
                                </li>
                                <li class="current">
                                    <a href="javascript:;" onclick="ec.member.exchange.check(this,'recordTemp');">
                                        <span>退换货记录</span></a>
                                </li>
                            </ul>
                        </div>
                        <div class="link fr">
                            <a target="_blank" href="#">退换货流程</a>
                            <a target="_blank" href="#">退换货政策</a>
                        </div>
                    </div>


                    <!-- 20180723-申请退换货-列表-start -->
                    <div class="exchange-apply hide">
                        <div class="prevention-fraud-new">
                            <p class="prevention-fraud-tips">
                                注意：商城不会以订单异常、系统升级为由，要求您点击任何链接进行退款！ 请谨防<span>钓鱼链接和诈骗电话</span>！
                            </p>
                        </div>
                        <div class="myorder-list">
                            <div class="myorder-list-main">
                                <div class="myorder-list-status">
                                    <ul class="clearfix">
                                        <li>订单商品信息<span class="gray">（仅展示30天数据）</span></li>
                                        <li>数量</li>
                                        <li>实付总额</li>
                                        <li>操作</li>
                                    </ul>
                                </div>
                                <div class="myorder-list-item" id="typeOneID"></div>
                            </div>

                            <div class="list-group-page">
                                <div class="pager" id="list-pager-typeOneID"></div>
                            </div>
                        </div>
                    </div>

                    <div class="exchange-list">
                        <div class="prevention-fraud-new">
                            <p class="prevention-fraud-tips">
                                注意：商城不会以订单异常、系统升级为由，要求您点击任何链接进行退款！ 请谨防<span>钓鱼链接和诈骗电话</span>！
                            </p>
                        </div>

                        <div class="myorder-list">
                            <div class="myorder-list-main">
                                <div class="myorder-list-status myorder-list-record" id="list-group-title">
                                    <ul class="clearfix">
                                        <li class="myorder-list-record">
                                            <div class="myorder-time">
                                                <span id="sixMonthID" onmouseover="ec.member.exchange.showList(this)">最近六个月</span>
                                                <dl onmouseleave="ec.member.exchange.hideList(this)">
                                                    <dd><a href="javascript:;"
                                                           onclick="ec.member.exchange.cateLive(this,1);">最近六个月</a></dd>
                                                    <dd><a href="javascript:;"
                                                           onclick="ec.member.exchange.cateLive(this,0);">六个月以前</a></dd>
                                                </dl>
                                            </div>
                                            <span>退换货订单信息</span>
                                        </li>
                                        <li>状态</li>
                                        <li>操作</li>
                                    </ul>
                                </div>

                                <div class="myorder-list-item" id="typeTwoID">
                                    <div class="list-group-empty" id="list-group">您暂时没有相关记录。</div>
                                </div>
                            </div>

                            <div class="list-group-page">
                                <div class="pager" id="list-pager-typeTwoID"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 20180723-退换货记录-列表-end -->
                </div>
            </div>

            <textarea id="exchange-timeout" class="hide">
	<div class="box-errors"><span>退换货过期</span></div>
    <div class="hr-15"></div>
    <div class="box-words">
        <p>对不起，您已经超过规定的退换货有效期，目前不能进行退换货操作！</p>
        <p>温馨提示：如果您是在网店更换过机器或者在商城换过机器，请您凭网店或者商品提供的检测单联系商城客服，在后台给你下换机申请单。</p>
    </div>
    <div class="hr-20"></div>
	<div class="box-button">
		<a class="box-ok" href="javascript:;"><span>确定</span></a>
	</div>
</textarea>

            <textarea id="exchange-error" class="hide">
	<div class="box-errors"><span>此订单商品已全部办理退换货，请不要重复申请哦~</span></div>
    <div class="hr-15"></div>
    <div class="hr-20"></div>
	<div class="box-button">
		<a class="box-ok" href="javascript:;"><span>确定</span></a>
	</div>
</textarea>

            <textarea id="exchange-cancel" class="hide">
	<div class="box-errors-1"><span>您确认要取消该记录吗？</span></div>
	<div class="box-button">
	<a href="javascript:;" class="box-cancel"><span>取消</span></a>
	<a href="javascript:;" class="box-ok"><span>确认</span></a>
	</div>
</textarea>

            <textarea id="exchange-agreement" class="hide">
		<!-- 20140828-对话框-协议-退换货办理协议-start -->
		<div class="box-rule">
			<p><b>尊敬的用户：</b></p>
			<p style="text-indent:2em;">您可选择以下方式进行退换货</p>
			<p style="text-indent:2em;"><b>一、寄回商城仓库进行检测退换货</b></p>
			<ul>
				<li style="text-indent:2em;">您好，寄回商品检测前，请您仔细阅读以下条款。</li>
				<li style="text-indent:2em;">1、寄回检测需要您先自行垫付寄回运费，待检测符合退换条件后，商城会返还您的运费。</li>
				<li style="text-indent:2em;">2、请确保寄回商品无人为损坏，否则无法办理退换货。人为损坏包括但不限于：未经授权的维修、外力造成的碰撞破损、进液以及外观刮花划伤、掉漆等。</li>
				<li style="text-indent:2em;">3、退换货申请审核通过仅表示华为商城受理您的退换货申请，但不代表同意您的退换货，您可寄回商城进行检测，具体判断有赖于商品是否有质量问题的检测结果以及其他退换货条件的满足。</li>
				<li style="text-indent:2em;">4、寄回检测换货，请确保将商品主机、完整标配、完整原厂包装一次性寄回，如缺少标配配件等将无法更换。</li>
				<li style="text-indent:2em;">5、寄回检测退货，请确保将商品主机、完整标配、完整原厂包装、发票原件、赠品一次性寄回。</li>
				<li style="text-indent:2em;">6、寄回检测后，不符合退换货规定的商品将原路到付寄回，运费将由您承担。</li>
			</ul>
			<p style="text-indent:2em;"><b>二、当地售后服务网点检测，并换货</b></p>
			<ul>
				<li style="text-indent:2em;">您好，网点检测故障属实后，您可以选择直接在售后服务网点进行换机服务。</li>
				<li style="text-indent:2em;">1、前往售后服务网点前请您拨打网点电话咨询是否可受理。</li>
				<li style="text-indent:2em;">2、请您将发票、故障商品携带齐全前往售后服务网点进行检测换货。</li>
			</ul>
			<p style="text-indent:2em;"><b>三、当地售后服务网点开具检测报告，寄回商城退换货</b></p>
			<ul>
				<li style="text-indent:2em;">您好，您可直接到当地就近华为售后服务网点进行检测，开具检测报告后寄回华为商城仓库进行退换货。</li>
				<li style="text-indent:2em;">1、前往售后服务网点前请您拨打网点电话咨询是否可受理。</li>
				<li style="text-indent:2em;">2、请您将发票、故障商品携带齐全前往售后服务网点进行检测换货。</li>
			</ul>
		</div><!-- 20140828-对话框-协议-退换货办理协议-end -->
</textarea>

            <input type="hidden" id="colid" value="1"/>
            <input type="hidden" id="checkid" value="recordTemp"/>
            <div class="popup-area popup-define-area hide">
                <div class="b">
                    <p>您确认要取消退货吗？</p>
                    <div class="popup-button-area">
                        <a href="javascript:;" class="button-action-yes" title="是">
                            <span>是</span></a>
                        <a href="javascript:;" class="button-action-no" title="否">
                            <span>否</span></a>
                    </div>
                </div>
                <div class="f"><s class="icon-arrow-down"></s></div>
            </div>
            <div class="hr-80"></div>
            <script>
                $(".myorder-hd li").click(function () {
                    $(this).addClass("current").siblings().removeClass("current");
                    if ($(this).index() === 0) {
                        $(".exchange-apply").removeClass("hide").next().addClass("hide")
                    }
                    if ($(this).index() === 1) {
                        $(".exchange-list").removeClass("hide").prev().addClass("hide")
                    }
                })
                ec.load("ec.pager");
            </script>

            <!-- 未找到的脚本 -->
            <script src="https://res9.vmallres.com/20181222/js/uum/member/exchange/exchangeList.min.js?20180725"></script>

        </div>
        <div class="fl u-1-5">

            <!-- 20170823-左边菜单-start -->
            <div class="mc-menu-area">
                <div class="h"><a href="details.jsp"><span>我的商城</span></a></div>
                <div class="b">
                    <ul>
                        <li><h3 class="icon-mc-mail"><a href="massage.jsp"><span id="li-msg">消息中心<em></em></span></a></h3></li>
                        <li><h3 class="icon-mc-help"><a href="help.jsp" target="_blank"><span>帮助中心</span></a></h3></li>
                        <li>
                            <h3 class="icon-mc-order"><span>订单中心</span></h3>
                            <ol>
                                <li id="li-order"><a href="order.jsp"><span>我的订单<em></em></span></a></li>
                                <li id="li-exchange"><a href="#"><span>我的退换货</span></a></li>
                                <li id="li-refunds"><a href="refund.jsp"><span>我的退款</span></a></li>
                                <li id="li-prdRemark"><a href="evaluate.jsp"><span>商品评价</span></a>
                                </li>
                            </ol>
                        </li>
                        <li>
                            <h3 class="icon-mc-asset"><span>我的资产</span></h3>
                            <ol>
                                <li id="li-newpoint"><a href="integral.jsp"><span>我的积分</span></a></li>
                            </ol>
                        </li>
                        <li>
                            <h3 class="icon-mc-support"><span>购买支持</span></h3>
                            <ol>
                                <li id="li-myAddress"><a href="address.jsp"><span>收货地址管理</span></a></li>
                            </ol>
                        </li>
                        <li id="li-company" class="hide">
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

            <script src="../js/userManager-js/leftMenu.js"></script>

        </div>
    </div>
    <div class="hr-80"></div>
</div>

<!--口号-20121025 -->
<div class="slogan-container">
    <div class="slogan">
        <ul>
            <li class="s1"><a target="_blank" href="#"><i></i>百强企业&nbsp;品质保证</a></li>
            <li class="s2"><a target="_blank" href="#"><i></i>7天退货&nbsp;15天换货</a></li>
            <li class="s3"><a target="_blank" href="#"><i></i><span>48元起免运费</span></a></li>
            <li class="s4"><a target="_blank" href="#"><i></i>1000家维修网点&nbsp;全国联保</a></li>
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
                    <p class="title">100-7710-4038</p></dt>
                <dd>
                    <ol>
                        <li><a>7x24小时客服热线（不存在的）</a></li>
                    </ol>
                </dd>
                <dd>
                    <a id="tools-nav-service-robotim-button" rel="nofollow" class="service-btn btn-line-primary" href="customer_service.jsp" target="_blank">
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
<!-- 2017-02-15-服务-end -->

<!--确认对话框-->
<div id="ec_ui_confirm" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_confirm_msg"></p>
        <div class="popup-button-area">
            <a id="ec_ui_confirm_yes" href="javascript:;" class="button-action-yes"><span>是</span></a>
            <a id="ec_ui_confirm_no" href="javascript:;" class="button-action-no"><span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!--新确认对话框-->
<div id="ec_ui_confirm_new" class="popup-area-new hide">
    <div class="b">
        <p id="ec_ui_confirm_new_msg"></p>
        <div class="popup-button-area">
            <a id="ec_ui_confirm_new_yes" href="javascript:;" class="box-button-style-1"><span>是</span></a>
            <a id="ec_ui_confirm_new_no" href="javascript:;" class="box-button-style-1"><span>否</span></a>
        </div>
    </div>
    <div class="f"><s class="icon-arrow-down-new"></s></div>
</div>

<!--提示对话框-->
<div id="ec_ui_tips" class="popup-area popup-define-area hide">
    <div class="b">
        <p id="ec_ui_tips_msg" class="tac"></p>
        <div class="popup-button-area tac">
            <a id="ec_ui_tips_yes" href="javascript:;" class="button-action-yes" title="确定"><span>确定</span></a></div>
    </div>
    <div class="f"><s class="icon-arrow-down"></s></div>
</div>

<!-- 2018-10-26-悬浮工具栏-start -->
<div class="hungBar j-hungBar">
    <div class="hungBar-content">
        <a target="_blank" href="#" timeType="timestamp" class="hungBar-cart"
           title="购物车"><span style="display:none;"></span><i>购物车</i></a>

        <a target="_blank" id="tools-nav-service-robotim" href="#"
           class="hungBar-service" title="在线客服"><i>在线客服</i></a>

        <a id="tools-nav-survery" href="#"
           class="hungBar-feedback" title="意见反馈"><i>意见反馈</i></a>

        <a href="javascript:;" class="hungBar-top" title="返回顶部" id="hungBar-top"><i>返回顶部</i></a>
    </div>
</div>
<!-- 2018-10-26-悬浮工具栏-end -->

<!-- 2017-02-15-底部-start -->
<div class="footer-container">
    <div class="footer">
        <div class="footer-warrant-area clearfix">
            <p class="footer-warrant-logo fl">
                <a href="https://www.vmall.com">
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
            <p><br/></p></div>
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
            window.location.href = "https://www.vmall.com/member/order?t=1546501486628timestamp";
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