<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8"/>
    <title>商品添加成功页</title>

    <meta name="author" content="DeathGhost"/>

    <script src="../js/manager/jquery.js"></script>
    <script src="../js/manager/jquery.mCustomScrollbar.concat.min.js"></script>
    <script>

        (function ($) {
            $(window).load(function () {

                $("a[rel='load-content']").click(function (e) {
                    e.preventDefault();
                    var url = $(this).attr("href");
                    $.get(url, function (data) {
                        $(".content .mCSB_container").append(data); //load new content inside .mCSB_container
                        //scroll-to appended content
                        $(".content").mCustomScrollbar("scrollTo", "h2:last");
                    });
                });

                $(".content").delegate("a[href='top']", "click", function (e) {
                    e.preventDefault();
                    $(".content").mCustomScrollbar("scrollTo", $(this).attr("href"));
                });

            });
        })(jQuery);
    </script>
    <link rel="stylesheet" href="../css/manager/font/style.css">
    <%--图片上传样式--%>


    <link rel="stylesheet" type="text/css" href="../WebUploader/webuploader.css" />
    <link rel="stylesheet" type="text/css" href="../WebUploader/style.css" />

    <script src="../js/jquery-1.8.3.js"></script>

    <style>
        #filePicker div:nth-child(2){width:100%!important;height:100%!important;}
    </style>
</head>
<body>
<!--header-->
<header>
    <h1><img src="../images/admin_logo.png"/></h1>
    <ul class="rt_nav">
        <li><a href="http://www.deathghost.cn" target="_blank" class="website_icon">站点首页</a></li>
        <li><a href="#" class="admin_icon">DeathGhost</a></li>
        <li><a href="../login.jsp" class="quit_icon">安全退出</a></li>
    </ul>
</header>
<!--aside nav-->
<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
    <h2><a href="index.jsp">起始页</a></h2>
    <ul>
        <li>
            <dl>
                <dt>常用布局示例</dt>
                <!--当前链接则添加class:active-->
                <dd><a href="/manage/queryAllProduct">商品列表</a></dd>
                <dd><a href="product_addVersoions.jsp">商品详情</a></dd>
                <dd><a href="recycle_bin.jsp">商品回收站</a></dd>
                <dd><a href="<%=path%>/manage/category">添加商品</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>订单信息</dt>
                <dd><a href="order_list.jsp">订单列表示例</a></dd>
                <dd><a href="order_detail.jsp">订单详情示例</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>会员管理</dt>
                <dd><a href="user_list.jsp">会员列表示例</a></dd>
                <dd><a href="user_detail.jsp">添加会员（详情）示例</a></dd>
            </dl>
        </li>
        <li>
        </li>
        <li>
            <dl>
                <dt>配送与支付设置</dt>
                <dd><a href="express_list.jsp">配送方式</a></dd>
                <dd><a href="pay_list.jsp">支付方式</a></dd>
            </dl>
        </li>
        <li>
        </li>
        <li>
            <p class="btm_infor">© DeathGhost.cn 版权所有</p>
        </li>
    </ul>
</aside>

<section class="rt_wrap content mCustomScrollbar">
    <div class="rt_content" style="text-align: center">
        <img src="../images/16pic_4211338_b.jpg" style="width: 100px;margin-top: 80px;margin-bottom: 38px">
        <div style="color: green">nice~商品添加成功!
            <br/><br/><br/><br/>
            <div style="height: 200px">
                <a href="#" style="border: 0.5px solid #0acaca;padding: 10px;background-color: #2f96b4">
                    继续添加</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#" style="border: 0.5px solid #0acaca;padding: 10px;background-color: #2f96b4">
                    返回首页</a>
            </div>

        </div>
    </div>
</section>


<script type="text/javascript" src="../WebUploader/jquery.js"></script>
<script type="text/javascript" src="../WebUploader/webuploader.js"></script>
<script type="text/javascript" src="../WebUploader/upload.js"></script>
</body>
</html>
