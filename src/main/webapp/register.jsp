<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta content="text/html; charset=utf-8" />

    <title>手机号注册</title>

    <link href="css/public-reception/dialog.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/common.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/common_left.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/zh-cn_css.css" rel="stylesheet" type="text/css">

    <script type="text/javascript">
        var pageToken = "BJUrE3bsFCgLMeb9xUqSEgeRghyZJj7B";</script>
    <script type="text/javascript">
        var localHttps="https://hwid1.vmall.com/CAS";
        var currentSiteID="1";
        var webAppName="CAS";
        var localHttps_AMW="https://hwid1.vmall.com/AMW";
        var languageCode="zh-cn";
    </script>
    <script src="js/public-reception/jquery-1.12.4.min.js"></script>
    <script src="js/public-reception/jquery.validator.js"></script>
    <script src="js/public-reception/m_base.js"></script>
    <script src="js/public-reception/commonjs.js"></script>
    <script src="js/public-reception/zh-cn.js"></script>
    <script src="js/public-reception/casAjaxObj.js"></script>
    <script src="js/public-reception/casui-EMUI9.js"></script>
</head>

<body class="body-EMUI5 wrapRegister-regByPhone">
<br/><br/><br/><br/><br/><br/>
<div id="baseAgrBox" class="actionbar">
    快速注册
</div>

<div class="marginL-R wrapRegister-padding16">
    <div class="box login-form-marginTop registerContent">
        <div class="wrapRegister-emptyLine"></div>
        <div class=" dinput-UI5" id="phoneInputDiv-box">

            <form action="/save" method="post">
                <%-- 账户名 --%>
                <div class="" id="phoneInputDiv">
                    <div class="input-div">
                        <input type="text" class="input-number" name="loginName" maxlength="20"
                               placeholder="账号名"/></div>
                </div>

                    <hr style="border: 0.5px solid #f5f5f5"/>
                    <br/>
                    <%-- 密码 --%>
                <div class="dinput-UI5" id="passwordDiv">
                    <div class="ico-div"></div>
                    <div class="input-div">
                        <input class="input-scroll" name="loginPassword" maxlength="32" type="password"
                               placeholder="密码"></div>
                </div>
                    <br/>
                    <%-- 确认密码 --%>
                <div class="line-EMUI5 zero-margin">
                    <div class="dinput-UI5" id="confirmPasswordDiv">
                        <div class="input-div">
                            <input class="input-scroll" name="repassword" maxlength="32" type="password"
                                   placeholder="确认密码" ></div>
                    </div>
                    <div id="errorTips" class="error-tips-EMUI5 line-EMUI5 addbtmpad-msg"></div>
                </div>
                <div class="line-EMUI5">
                    <div class="gray-tips-EMUI5 reg-tip-gray">
                <span>至少 6 个字符<br/>
                    不能含有空格<br/>
                    <br/>
                </span>
                    </div>
                </div>
                <%-- 按钮 --%>
                    <a href="index.jsp" style="border: 0.5px solid #f5f5f5;
                        padding: 10px;color: black;width: 498px">返回首页</a>
                    <br/><br/><br/>
                <input type="submit" value="完 成" />
            </form>
        </div>
    </div>
</div>

</body>

<script src="js/public-reception/regbyphone.js"></script>
<script src="js/public-reception/randomErrorCheck.js"></script>

</html>

