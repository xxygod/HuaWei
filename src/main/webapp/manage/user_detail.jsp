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
       <h2 class="fl">会员详情</h2>
       <a href="adjust_funding.jsp" class="fr top_rt_btn money_icon">资金管理</a>
      </div>
      <ul class="ulColumn2">
       <li>
        <span class="item_name" style="width:120px;">上传头像：</span>
        <label class="uploadImg">
         <input type="file"/>
         <span>上传头像</span>
        </label>
       </li>
       <li>
        <span class="item_name" style="width:120px;">会员名称：</span>
        <input type="text" class="textbox textbox_225" value="DeathGhost" placeholder="会员账号..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">登陆密码：</span>
        <input type="password" class="textbox textbox_225" value="1830000000" placeholder="会员密码..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">会员等级：</span>
        <select class="select">
         <option>会员等级</option>
         <option>普通会员</option>
         <option>高级会员</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">电子邮箱：</span>
        <input type="email" class="textbox textbox_225" value="DeathGhost@sina.cn" placeholder="电子邮件地址..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">手机号码：</span>
        <input type="tel" class="textbox textbox_225" value="18300000000" placeholder="手机号码..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">可用资金：</span>
        <input type="text" class="textbox textbox_225" value="1599.00" placeholder="可用资金（单位：元）..." readonly/>
        <span>元</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">冻结资金：</span>
        <input type="text" class="textbox textbox_225" value="100.00" placeholder="冻结资金（单位：元）..." readonly/>
        <span>元</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;">收货地址：</span>
        <select class="select">
         <option>选择省份</option>
         <option>陕西省</option>
         <option>山西省</option>
        </select>
        <select class="select">
         <option>选择城市</option>
         <option>西安市</option>
         <option>大同市</option>
        </select>
        <select class="select">
         <option>选择区/县</option>
         <option>长安县</option>
         <option>不晓得</option>
        </select>
       </li>
       <li>
        <span class="item_name" style="width:120px;">详细地址：</span>
        <input type="text" class="textbox textbox_295" value="陕西省西安市未央区凤城五路旺景国际大厦" placeholder="详细地址..."/>
        <span class="errorTips">错误提示信息...</span>
       </li>
       <li>
        <span class="item_name" style="width:120px;"></span>
        <input type="submit" class="link_btn" value="更新/保存"/>
       </li>
      </ul>
 </div>
</section>
</body>
</html>
