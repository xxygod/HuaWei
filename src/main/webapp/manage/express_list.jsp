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
       <h2 class="fl">配送方式</h2>
       <a href="product_addVersoions.jsp" class="fr top_rt_btn add_icon">添加配送方式</a>
      </div>
      <table class="table">
       <tr>
        <th>缩略图</th>
        <th>快递名称</th>
        <th>快递描述</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center"><img src="../upload/shentong.png" width="165" height="65"/></td>
        <td>申通快递</td>
        <td><p>上海申通物流公司拥有247个独立城市营业所，179个营业厅，1220个操作点，快递初创于1993年，是一家以经营快递为主的国内合资（民营）企业。</p></td>
        <td class="center">
         <a href="product_addVersoions.jsp" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center"><img src="../upload/yuantong.png" width="165" height="65"/></td>
        <td>圆通快递</td>
        <td><p>圆通速递创建于2000年5月28日,经过近十四年的发展,已成为一家集速递、航空、电子商务等业务为一体的大型企业集团,形成了集团化、网络化、规模化、品牌化经营的新...</p></td>
        <td class="center">
         <a href="product_addVersoions.jsp" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center"><img src="../upload/yunda.png" width="165" height="65"/></td>
        <td>韵达快递</td>
        <td><p>“韵达快递”品牌创立于1999年8月，总部位于中国上海，现已成为集快递、物流、电子商务配送和仓储服务为一体的全国网络型品牌快递企业，服务范围覆盖国内31个省（区、市）及港澳台地区。</p></td>
        <td class="center">
         <a href="product_addVersoions.jsp" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
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
