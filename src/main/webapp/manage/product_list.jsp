<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost"/>
    <!--[if lt IE 9]>
    <script src="../js/manager/html5.js"></script>
    <![endif]-->
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
    <script src="../js/query_sort.js"></script>
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
    <div class="rt_content">
        <div class="page_title">
            <h2 class="fl">商品列表示例</h2>
            <a href="product_addVersoions.jsp" class="fr top_rt_btn add_icon">添加商品</a>
        </div>
        <section class="mtb">
            <select class="select">
                <option>下拉菜单</option>
                <option>手机</option>
                <option>电脑/平板</option>
                <option>智能穿戴</option>
                <option>智能家居</option>
                <option>通用配件</option>
            </select>
            <input type="text" class="textbox textbox_225" placeholder="输入产品关键词或产品货号..."/>
            <input type="button" value="查询" class="group_btn"/>
        </section>
        <table class="table">
            <tr>
                <th>缩略图</th>
                <th>产品名称</th>
                <th>货号</th>
                <th>标签</th>
                <th>审核</th>
                <th>颜色</th>
                <th>版本</th>
                <th>单价</th>
                <th>原价</th>
                <th>库存</th>
                <th>添加</th>
                <th>操作</th>
            </tr>
            <c:forEach items="${page.list}" var="productInfo">
                <tr>
                    <td class="center"><img src="<%=path%>/hw/${productInfo.logo}" width="50" height="50"/></td>
                    <td>${productInfo.productName}</td>
                    <td class="center" style="font-size: 12px">${productInfo.productCore}</td>
                    <td class="center">
                        <select style="width: 80px;height: 50px">
                            <option value="新品" <c:if test="${productInfo.pattern == '新品'}"> selected</c:if>>&nbsp;&nbsp;新品</option>
                            <option value="热销" <c:if test="${productInfo.pattern == '热销'}"> selected</c:if>>&nbsp;&nbsp;热销</option>
                            <option value="精品" <c:if test="${productInfo.pattern == '精品'}"> selected</c:if>>&nbsp;&nbsp;精品</option>
                        </select>
                    </td>
                    <td class="center">
                        <select style="width: 80px;height: 50px">
                            <option value="0" <c:if test="${productInfo.pattern == '0'}">selected</c:if>>&nbsp;&nbsp;上架</option>
                            <option value="1" <c:if test="${productInfo.pattern == '1'}">selected</c:if>>&nbsp;&nbsp;下架</option>
                        </select>
                    </td>
                    <td class="center">
                        <select style="width: 80px;height: 50px" name="productColor"  productId="${productInfo.productId}">
                            <c:forEach items="${productInfo.colorCentres}" var="colorCentre">
                                <option value="${colorCentre.productColor.productColorId}">${colorCentre.productColor.productColorName}</option>
                            </c:forEach>
                        </select>
                    </td>
                    <td class="center">
                        <select style="width: 80px;height: 50px" name="proVersions">
                                <option value="${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].verCentreId}">${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].proVersions.proVersionsName}</option>
                        </select>
                    </td>
                    <td class="center" name="productPrice">${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].productPrice}</td>
                    <td class="center" name="productCost">${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].productCost}</td>
                    <td class="center" name="inventory">${productInfo.colorCentres.toArray()[0].verCentres.toArray()[0].inventory}</td>
                    <td class="center">
                        <div style="text-align: center" class="color" productId="${productInfo.productId}" oneCategoryId="${productInfo.oneCategory.oneCategoryId}"><a style="font-weight:bold">顔色</a></div>
                        <div style="text-align: center" class="versions" productId="${productInfo.productId}" oneCategoryId="${productInfo.oneCategory.oneCategoryId}"><a style="font-weight:bold">版本</a></div>
                    </td>
                    <td class="center">
                        <a href="http://www.deathghost.cn" title="预览" class="link_icon" target="_blank">&#118;</a>
                        <a href="product_addVersoions.jsp" title="编辑" class="link_icon">&#101;</a>
                        <a href="#" title="删除" class="link_icon">&#100;</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <aside class="paging">
            <a >${page.pageNum}/${page.pages}</a>
            <a href="/manage/queryAllProduct?currentPage=1">第一页</a>
            <c:forEach items="${page.navigatepageNums}" var="navigatepageNums" varStatus="con">
                    <a href="/manage/queryAllProduct?currentPage=${navigatepageNums}">${navigatepageNums}</a>
            </c:forEach>
            <a  href="/manage/queryAllProduct?currentPage=${page.pages}">尾页</a>
        </aside>
    </div>
</section>
<%--蒙版层--%>
<div class="ol_box_mask" style="visibility: visible;width: 1518px;height: 1655px;z-index: 4999;display: none;background-color: #000;opacity: .4;position: absolute;top: 0;left: 0;"></div>
<div class="color_submit" style="z-index: 5000;display: none;position: absolute;top: 0px;left:300px;width: 1000px;overflow:hidden; background-color: white">
    <ul class="ulColumn2">
        <input type="hidden" name="color_productId">
        <li>
            <span class="item_name" style="width:120px;">颜色：</span>
                <select class="select" name="productColorId" style="width: 100px"></select>
            <span class="errorTips"></span>
        </li>
        <li>
            <div id="wrapper">
                <div id="container">
                    <!--头部，相册选择和格式选择-->
                    <div id="uploader">
                        <div class="queueList">
                            <div id="dndArea" class="placeholder">
                                <div id="filePicker"></div>
                                <p></p>
                            </div>
                        </div>
                        <div class="statusBar" style="display:none;">
                            <div class="progress">
                                <span class="text">0%</span>
                                <span class="percentage"></span>
                            </div><div class="info"></div>
                            <div class="btns">
                                <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="color_close" style="width: 50px;line-height: 30px;text-align: center;margin: 0px auto;background-color: firebrick;color: white;position: absolute;top: 0;right: 0;">关闭</div>
            </div>
        </li>
        <li>
            <span class="item_name" style="width:120px;"></span>
            <input class="link_btn"/>
        </li>
    </ul>
</div>
<script type="text/javascript" src="../WebUploader/jquery.js"></script>
<script type="text/javascript" src="../WebUploader/webuploader.js"></script>
<script type="text/javascript" src="../WebUploader/upload.js"></script>
</body>
</html>
