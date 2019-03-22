<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="utf-8"/>
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />

<!--[if lt IE 9]>
<script src=" ../js/manager/html5.js"></script>
<![endif]-->
<script src=" ../js/manager/jquery.js"></script>
<script src=" ../js/manager/jquery.mCustomScrollbar.concat.min.js"></script>
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
       <h2 class="fl">会员资金变动</h2>
       <a href="user_list.jsp" class="fr top_rt_btn">返回会员列表</a>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">当前余额：</td>
        <td>
         <input type="text" class="textbox" value="1999.00" readonly/>
         <span>元</span>
        </td>
        <td style="text-align:right;">冻结：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td rowspan="2">
         <a class="full_link_td" style="line-height:117px;">确认</a>
        </td>
       </tr>
       <tr>
        <td style="text-align:right;">增加：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td style="text-align:right;">减少：</td>
        <td>
          <input type="text" class="textbox" value="0.00"/>
          <span>元</span>
        </td>
        </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">资金变动记录</h2>
      </div>
      <table class="table">
       <tr>
        <th>类型</th>
        <th>时间</th>
        <th>资金变动额</th>
        <th>当前余额</th>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
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
