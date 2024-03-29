<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />

<!--[if lt IE 9]>
<script src="../js/manager/html5.js"></script>
<![endif]-->
<script src="../js/manager/jquery.js"></script>
<script src="../js/manager/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
    <link rel="stylesheet" href="../css/manager/font/style.css">
</head>
<body>
<!--header-->
<header>
 <h1><img src="images/admin_logo.png"/></h1>
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
    <dd><a href="/manage/queryAllProduct" >商品列表</a></dd>
    <dd><a href="product_addVersoions.jsp">商品详情</a></dd>
    <dd><a href="recycle_bin.jsp">商品回收站</a></dd>
    <dd><a href="product_add.jsp">添加商品</a></dd>
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
       <h2 class="fl">产品回收站示例</h2>
       <a class="fr top_rt_btn">返回上一页</a>
      </div>
      <section class="mtb">
       <select class="select">
        <option>下拉菜单</option>
        <option>菜单1</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入产品关键词或产品货号..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>
      <table class="table">
       <tr>
        <th>缩略图</th>
        <th>产品名称</th>
        <th>货号</th>
        <th>单价</th>
        <th>单位</th>
        <th>精品</th>
        <th>新品</th>
        <th>热销</th>
        <th>库存</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center"><img src="../upload/goods01.jpg" width="50" height="50"/></td>
        <td>这里是产品名称</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">包</td>
        <td class="center"><a title="是" class="link_icon">&#89;</a></td>
        <td class="center"><a title="否" class="link_icon">&#88;</a></td>
        <td class="center"><a title="是" class="link_icon">&#89;</td>
        <td class="center">5559</td>
        <td class="center">
         <a href="#" title="预览" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="恢复到产品列表" class="link_icon">&#47;</a>
         <a href="#" title="彻底删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center"><img src="../upload/goods02.jpg" width="50" height="50"/></td>
        <td>这里是产品名称</td>
        <td class="center">A15902</td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
        <td class="center">包</td>
        <td class="center"><a title="是" class="link_icon">&#89;</a></td>
        <td class="center"><a title="否" class="link_icon">&#88;</a></td>
        <td class="center"><a title="是" class="link_icon">&#89;</a></td>
        <td class="center">5559</td>
        <td class="center">
         <a href="#" title="预览" class="link_icon" target="_blank">&#118;</a>
         <a href="#" title="恢复到产品列表" class="link_icon">&#47;</a>
         <a href="#" title="彻底删除" class="link_icon">&#100;</a>
        </td>
       </tr>
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>1004</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>
</body>
</html>
