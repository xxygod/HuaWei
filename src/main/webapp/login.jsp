<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>后台登录</title>
    <style>
        body {
            height: 100%;
            background: #16a085;
            overflow: hidden;
        }

        canvas {
            z-index: -1;
            position: absolute;
        }
    </style>
    <script src="js/jquery-1.8.3.js"></script>
    <link rel="stylesheet" href="css/manager/font/style.css">
    <link rel="stylesheet" href="css/manager/font/myAlert.css">
</head>
<body>

<c:if test="${not empty sessionScope.hint}">
    <input name="hint" type="hidden" value="${hint}"/>
    <script>
        $(document).ready(function () {
            var hint=$("input[name='hint']").val();
            tishi(hint);
        });
        function tishi(options) {
            var option={title:"提示",message:"程序员太傻，忘记输入提示内容啦……",callback:function(){}}
            if(typeof(options)=="string"){
                option.message=options
            }else{
                option=$.extend(option,options);
            }
            var top=$(window).height()*0.3;
            $('body').append('<div class="myModa"><div class="myAlertBox"  style="margin-top:'+top+'px"><h6>'+option.title+'</h6><p>'+option.message+'</p><div class="btn sure">确定</div></div></div>');
            $('.btn.sure').click(function(){
                $('.myModa').remove();
                $("input[name='hint']").val("");
                option.callback();
            })
        }
    </script>
    <c:remove var="hint" scope="session"/>
</c:if>
<dl class="admin_login">
    <dt>
        <strong>站点后台管理系统</strong>
        <em>Management System</em>
    </dt>
    <form method="post" action="login">
        <dd class="user_icon">
            <input type="text" placeholder="账号" class="login_txtbx" name="loginName"/>
        </dd>
        <dd class="pwd_icon">
            <input type="password" placeholder="密码" class="login_txtbx" name="loginPassword"/>
        </dd>
        <dd>
            <input type="submit" value="立即登陆" class="submit_btn"/>
        </dd>
    </form>
    <dd>
        <p>© 2015-2016 DeathGhost 版权所有</p>
        <p>陕B2-20080224-1</p>
    </dd>
</dl>
</body>

</html>
