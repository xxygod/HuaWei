<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <script src="../js/manager/html5.js"></script>
    <script src="../js/manager/jquery.js"></script>
    <script src="../js/manager/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" href="../css/manager/font/style.css">
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
    <script src="../js/product_addjs.js"></script>
    <%--图片上传--%>
    <link rel="stylesheet" type="text/css" href="../WebUploader/webuploader.css" />
    <link rel="stylesheet" type="text/css" href="../WebUploader/style.css" />
</head>
<body>
<header>
    <h1><img src="../images/admin_logo.png"/></h1>
    <ul class="rt_nav">
        <li><a href="http://www.deathghost.cn" target="_blank" class="website_icon">站点首页</a></li>
        <li><a href="#" class="admin_icon">DeathGhost</a></li>
        <li><a href="../login.jsp" class="quit_icon">安全退出</a></li>
    </ul>
</header>
<aside class="lt_aside_nav content mCustomScrollbar">
    <ul>
        <li>
            <dl>
                <dt>常用布局示例</dt>
                <!--当前链接则添加class:active-->
                <dd><a href="/manage/queryAllProduct" >商品列表</a></dd>
                <dd><a href="product_addVersoions.jsp">商品详情</a></dd>
                <dd><a href="recycle_bin.jsp">商品回收站</a></dd>
                <dd><a href="product_add.jsp">添加商品</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>订单信息</dt>
                <dd><a href="order_list.jsp">订单列表</a></dd>
                <dd><a href="order_detail.jsp">订单详情</a></dd>
            </dl>
        </li>
        <li>
            <dl>
                <dt>会员管理</dt>
                <dd><a href="user_list.jsp">会员列表</a></dd>
                <dd><a href="user_detail.jsp">添加会员</a></dd>
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
            <h2 class="fl">商品详情示例</h2>
            <a class="fr top_rt_btn">返回产品列表</a>
        </div>
        <form method="post" action="/manage/addProduct" enctype="multipart/form-data">
            <section>
                <ul class="ulColumn2">
                    <li>
                        <span class="item_name" style="width:120px;">商品名称：</span>
                        <input name="productName" type="text" class="textbox textbox_295" placeholder="商品名称..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品编码：</span>
                        <input type="text" name="productCore" class="textbox" placeholder="商品编码..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">类别：</span>
                        <select class="select" name="oneCategoryId">
                            <c:forEach items="${oneCategoryList}" var="oneCategory">
                            <option value="${oneCategory.oneCategoryId}">${oneCategory.oneCategoryName}</option>
                            </c:forEach>
                        </select>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name"  style="width:120px;">分类：</span>
                        <select class="select" name="twoCategoryId">
                        </select>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name"  style="width:120px;">版本：</span>
                        <select class="select" name="proVersionsId">
                        </select>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">颜色：</span>
                        <select class="select" name="productColorId">
                        </select>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">库存：</span>
                        <input type="number" class="textbox" name="inventory">
                        </input>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品价格：</span>
                        <input type="text" name="productPrice" class="textbox" placeholder="商品价格..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品成本：</span>
                        <input type="text" name="productCost" class="textbox" placeholder="商品成本..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">生产时间：</span>
                        <input type="date" class="textbox" name="productDate" placeholder="生产时间..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品描述：</span>
                        <input type="text" class="textbox" name="description" placeholder="商品描述..."/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">推荐：</span>
                        <label class="single_selection"><input type="radio" name="pattern" value="精品"/>是否精品</label>
                        <label class="single_selection"><input type="radio" name="pattern" value="热销"/>是否热销</label>
                        <label class="single_selection"><input type="radio" name="pattern" value="新品"/>是否新品</label>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品图片：</span>
                        <input type="file" placeholder="商品图片..." name="file"/>
                        <span class="errorTips">错误提示信息...</span>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">商品介绍图片：</span>
                        <div id="wrapper" style="width: 1020px;margin-left:120px ">
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
                        </div>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;">产品详情：</span>
                        <textarea id="editor" type="text/plain"
                                  style="width:1024px;height:500px;margin-left:120px;margin-top:0;"></textarea>
                    </li>
                    <li>
                        <span class="item_name" style="width:120px;"></span>
                        <input type="submit" class="link_btn"/>
                    </li>
                </ul>
            </section>
        </form>
    </div>
    <div class="div1">
    </div>
</section>
<script src="../js/manager/ueditor.config.js"></script>
<script src="../js/manager/ueditor.all.min.js"></script>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }

    function getContent() {
        $("input[name='describe']").val(UE.getEditor('editor').getContent());
    }
</script>
<script type="text/javascript" src="../WebUploader/jquery.js"></script>
<script type="text/javascript" src="../WebUploader/webuploader.js"></script>
<script type="text/javascript" src="../WebUploader/upload.js"></script>
</body>
</html>
