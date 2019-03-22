<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta name="author" content="DeathGhost"/>
    <link rel="stylesheet" type="text/css" href="../css/manager/font/style.css">
    <!--[if lt IE 9]>
    <script src="../js/manager/html5.js"></script>
    <![endif]-->
    <script src="../js/manager/jquery.js"></script>
    <script src="../js/manager/jquery.mCustomScrollbar.concat.min.js"></script>
    <%--                                     --%>
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
</head>
<body>
<!--header-->
<header>
    <h1><img src="images/admin_logo.png"/></h1>
    <ul class="rt_nav">
        <li><a href="http://www.deathghost.cn" target="_blank" class="website_icon">站点首页</a></li>
        <li><a href="#" class="clear_icon">清除缓存</a></li>
        <li><a href="#" class="admin_icon">DeathGhost</a></li>
        <li><a href="#" class="set_icon">账号设置</a></li>
        <li><a href="login.html" class="quit_icon">安全退出</a></li>
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
            <h2 class="fl">请根据颜色添加版本</h2>
            <a class="fr top_rt_btn">返回产品列表</a>
        </div>
        <section>
            <form method="post" action="/manage/addVersions" enctype="multipart/form-data">
                <section>
                    <ul class="ulColumn2">
                        <li>
                            <span class="item_name" style="width:120px;">颜色：</span>
                            <select class="select" name="colorCentre.colorCentreId">
                                <c:forEach items="${colorCentres}" var="colorCentre">
                                    <option value="${colorCentre.colorCentreId}">${colorCentre.productColor.productColorName}</option>
                                </c:forEach>
                            </select>
                            <span class="errorTips">错误提示信息...</span>
                        </li>
                        <li>
                            <span class="item_name"  style="width:120px;">版本：</span>
                            <select class="select" name="proVersions.proVersionsId">
                                <c:forEach items="${proVersions}" var="pro">
                                    <option value="${pro.proVersionsId}">${pro.proVersionsName}</option>
                                </c:forEach>
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
        </section>
    </div>
</section>
<script src="../js/manager/ueditor.config.js"></script>
<script src="../js/manager/ueditor.all.min.js"></script>
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e) {
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }

    function setblur(e) {
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }

    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }

    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }

    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }

    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }

    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }

    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }

    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }

    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }

    function setFocus() {
        UE.getEditor('editor').focus();
    }

    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }

    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }

    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData() {
        alert(UE.getEditor('editor').execCommand("getlocaldata"));
    }

    function clearLocalData() {
        UE.getEditor('editor').execCommand("clearlocaldata");
        alert("已清空草稿箱")
    }
</script>
</body>
</html>
