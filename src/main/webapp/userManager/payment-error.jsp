<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8"/>

    <title class="i18n" name="title">支付失败</title>

    <link rel="stylesheet" href="../css/userManager-css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../css/userManager-css/cashierStyle.css"/>
</head>
<style>
    .huawei_logo {
        width: auto !important;
        height: auto !important;
    }
    .cashier_order_area{
        border-top: 2px solid #DA3232 !important;
    }
    .cashier_orderInfo{
        padding-bottom: 26px !important;
        background: #FFF1F1 !important;
    }
    .orderWords01 h4{
        color: #DA3232 !important;
    }
    .footer{
        position: absolute;
        width: 100%;
        bottom:0;
    }
</style>
<body>
<div class="container clearfix">
    <div class="header clearfix"></div>
    <div class="warp clearfix">
        <div class="contentArea clearfix">
            <head>
                <meta charset="utf-8" />
            </head>
            <div class="logo_name clearfix">
                <a class="huawei_logo" href="../index.jsp">
                    <img src="../images/userManager-imager/Vmall_red.png"/></a>
                <span class="i18n" name="msg_Checkout">收银台</span>
            </div>

            <div class="cashier_order_area clearfix" id="perrorInfo">
                <div class="cashier_orderInfo clearfix">
                    <div class="orderInfo_img pull-left">
                        <img src="../images/userManager-imager/sorry_icon.png" alt=""/>
                    </div>
                    <div class="orderInfo_words pull-left">
                        <div class="orderInfo_words_01 clearfix">
                            <div class="orderWords01 clearfix">
                                <h4 class="i18n pull-left" name="msg_sorryNoPay">未知错误，无法完成付款。</h4>
                            </div>
                            <h5 class="clearfix">系统开小差了，请稍后重试。</h5>
                        </div>

                        <a class="i18n otherPayLink referUrl" name="msg_referPay" style="margin-right: 30px" href="order.jsp">重新支付</a>
                        <a class="i18n otherPayLink" name="msg_returnStore" href="../index.jsp">返回商城</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../js/userManager-js/jquery-1.11.3.min.js"></script>

</body>
</html>