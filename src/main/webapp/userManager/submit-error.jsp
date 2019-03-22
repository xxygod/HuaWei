<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>

    <!--华为收银台  -->
    <title name="title">订单提交失败</title>

    <link rel="stylesheet" href="../css/userManager-css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/userManager-css/cashierStyle.css"/>

</head>

<body>

<div class="container" style="display: block;">
    <div class="warp warp-content clearfix">
        <div class="contentArea clearfix">
            <head>
                <meta charset="utf-8" />
            </head>
            <div class="logo_name clearfix">
                <a class="huawei_logo" href="../index.jsp">
                    <img src="../images/userManager-imager/Vmall_red.png"/></a>
                <span class="i18n" name="msg_Checkout">收银台</span>
            </div>


            <div class="cashier_order_area clearfix" id="cashierHome">
                <div style="text-align: center;margin-top: 80px">
                    <img src="../images/userManager-imager/sorry_icon.png"/>
                    <span style="font-size: 24px;color: red">未知错误,订单提交失败~~</span>
                </div>
            </div>
            <div style="text-align: center;margin: 50px">
                <a href="order.jsp" style="border: 0.5px solid #000000;padding: 10px">返回</a>
            </div>
        </div>
    </div>

    <head>
        <meta charset="utf-8" />
    </head>

    <footer>
        <div class="warp clearfix" id="vmallFoot" style="padding: 26px 0 34px;">
            <div class="vmall_logo_01 pull-left">
                <img src="../images/userManager-imager/Vmall.png" alt="vmall_logo_01" />
            </div>
            <div class="certification_info pull-left">
                <p>
                    <a title="隐私声明"  target="_blank" href="#">隐私声明</a>
                    <a target="_blank" href="#">服务协议</a><span>Copyright © 2012-2018 阿里巴巴与四个大盗软件技术有限公司 版权所有 保留一切权利</span></p>
                <p>
                    <span style="margin-right:2px;">公安备案 </span>
                    <a target="_blank" href="#">湘公网安备32011402010009号</a> |
                    <a target="_blank" href="#" rel="nofollow">湘ICP备17040376号-6</a> | <span>增值电信业务经营许可证：湘B2-20130048号</span> |
                </p>
            </div>
            <div class="certification_ico pull-right">
                <a title="TRUSTe隐私认证" href="#" target="_blank" rel="nofollow">
                    <img src="../images/userManager-imager/20180522101715775.jpg" class="i18n-title" type="tle" selectname="tleTitle_TRUSTe" selectAttr="alt" alt="TRUSTe隐私认证" /></a>

                <a title="电子营业执照" target="_blank" href="https://res.vmallres.com/pimages//sale/2018-06/20180615181402966.jpg">
                    <img src="https://res.vmallres.com/ips/pc/20181020/img/20160226162415360.png?20181020" class="i18n-title" type="tle" selectname="tleTitle_Electronic" selectAttr="alt" alt="电子营业执照"/></a>

                <a title="可信网站" target="_blank" href="#">
                    <img class="i18n-title" type="tle" selectname="tleTitle_Reliable" selectAttr="alt" alt="可信网站" src="../images/userManager-imager/20160226162521265.png"/></a>

                <a title="网络文件经营许可证" href="#" target="_blank" rel="nofollow">
                    <img src="../images/userManager-imager/20180626164548324.png" class="i18n-title" type="tle" selectname="tleTitle_ICP" selectAttr="alt" alt="网络文件经营许可证" /></a>

                <a id="___szfw_logo___" href="#" target="_blank" rel="nofollow">
                    <img src="../images/userManager-imager/20170725194955862.jpg" border="0" /></a>
            </div>
        </div>
        <div class="warp clearfix" id="pmallFoot" style="padding: 20px 0;text-align: right;color: #B4B4B4;">
            Copyright © 2012-2018 阿里巴巴与四个大盗软件技术有限公司 版权所有 保留一切权利
        </div>
    </footer>

</div>

<div class="hintback"></div>

<script type="text/javascript" src="../js/userManager-js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/userManager-js/html5.js"></script>
<script type="text/javascript" src="../js/userManager-js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/userManager-js/handlebars.min.js"></script>
<script type="text/javascript" src="../js/userManager-js/util.js"></script>

</body>
</html>
