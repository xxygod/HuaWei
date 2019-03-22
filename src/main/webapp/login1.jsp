<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="padding: 0px;margin: 0px">
<head>
    <meta content="text/html; charset=utf-8"/>

    <title>用户登录</title>

    <script type="text/javascript">
        var pageToken = "BJUrE3bsFCgLMeb9xUqSEgeRghyZJj7B";
    </script>
    <script type="text/javascript"></script>

    <link href="css/public-reception/ec.core.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/common1.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/dialog.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/dialogEMUIV6.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/common2.css" rel="stylesheet" type="text/css">
    <link href="css/public-reception/zh-cn.css" rel="stylesheet" type="text/css">


    <script type="text/javascript">var localHttps = "https://hwid1.vmall.com/CAS";
    var currentSiteID = "1";
    var webAppName = "CAS";
    var localHttps_AMW = "https://hwid1.vmall.com/AMW";
    var languageCode = "zh-cn";</script>
    <script src="js/public-reception/jquery-1.12.4.min.js"></script>
    <script src="js/public-reception/jquery.validator.js"></script>
    <script src="js/public-reception/commonjs.js"></script>
    <script src="js/public-reception/lazyload-min.js"></script>
    <script src="js/public-reception/uc_base.js"></script>
    <script src="js/public-reception/zh-cn.js"></script>
    <script src="js/public-reception/casAjaxObj.js"></script>
    <script src="js/public-reception/jquery.qrcode.min.js"></script>
    <script src="js/public-reception/casui.js"></script>

    <%-- 滑块验证 --%>
    <link href="css/public-reception/drag.css" rel="stylesheet" type="text/css"/>
    <script src="js/public-reception/jquery-1.7.2.min.js" type="text/javascript"></script>
    <script src="js/public-reception/drag.js" type="text/javascript"></script>

</head>
<body class="login themeName-red">
<div id="cookies_privacy" class="center cookie hidden">
    本站点使用cookies,继续浏览表示您同意我们使用cookies。
    <a class="cookie-pro" href="#">Cookies和隐私政策></a>
    <img src="images/public-reception/cookie-close.png"/>
</div>
<div>
    <!-- 头部  -->
    <div class="customer-header">
        <div class="head_center">
            <div class="main-logo adHeadPicContainer">
                <img src="images/public-reception/HUAWEI.png" class="adHeadPic"></div>
            <div class="website-name">
                <b style="font-size: 18px;margin-top: -5px;float: left;color:#cccccc;">|</b>
                <b class="adHeadTitle">商城</b>
            </div>
        </div>
    </div>
    <!-- 广告位 -->
    <span>
        <div style="background: #FFFBE4;display: block;height: 40px;text-align: center;line-height: 40px;color: #989898;">
            <span class="prompt_icon" id="ad1">依据《网络安全法》，为保障您的帐号安全与正常使用，请尽快绑定您的手机号，感谢您的理解及支持！</span>
        </div>
    </span>
    <!--登录 -->
    <div class="login_bg" id="loginform">
        <div style="background-image: url('images/public-reception/login_default_bg.png');" class="g login_adBg">
            <div class="login-area login-right login-area-box">
                <div class="userAccountLogin">
                    <div class="h">
                        <span class="loginTitle actived loginTitle-left" data-type="account" style="margin-top: 50px">帐号登录</span>
                    </div>

                    <br/><br/>
                    <div class="b-account">
                        <div class="login-form-marginTop">
                            <div class="form-edit-area loginEventForm">
                                <div class="userAccountLogin-errorTipsDiv" id="errorTip"></div>
                                <table border="0" cellpadding="0" cellspacing="0">

                                    <form action="/login1" method="post">
                                        <input type="text" style="border-style: none;padding: 10px;width: 300px"
                                               name="loginName" maxlength="20" placeholder="账号"/>

                                        <hr style="border: 0.5px solid #f5f5f5"/>
                                        <br/><br/><br/>

                                        <input type="password" style="border-style: none;padding: 10px;width: 300px"
                                               name="loginPassword" maxlength="20" placeholder="密码"/>

                                        <hr style="border: 0.5px solid #f5f5f5"/>
                                        <br/><br/>

                                        <%-- 滑块验证 -- 没什么卵用 --%>
                                        <div>
                                            <div id="drag"></div>

                                            <script type="text/javascript">
                                                $('#drag').drag();
                                            </script>
                                        </div>


                                        <td id="picAuthCode" class="verify-td referenceTarget"></td>

                                            <div style="margin-bottom:0px;">
                                                <span class="vam error" id="login_msg" style="display:block"></span>
                                            </div>

                                        <input type="submit" style="margin-top: 100px" class="button-login" id="btnLogin"
                                                   data-type="accountLogin" value="登录" tabindex="5"/>

                                            <img class="load" src="images/public-reception/loading3.gif"/>


                                    </form>
                                    <tr>
                                        <td class="mt-links p0">
                                            <div class="mt-links-float vam clearWidth" style="text-align: center">
                                                <span class="regist">
                                                    <a id="registText" class="btn-primary clearWidth" href="register.jsp" title="注册帐号">注册帐号</a>
                                                </span>
                                                <span class="forgot">
                                                    <a class="btn-primary clearWidth" href="userManager/help.jsp" title="忘记密码？">忘记密码？</a>
                                                </span>
                                            </div>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div>
    <!-- 底部  -->

    <div class="customer-footer">
        <div class="ft">
            <!--授权  -->
            <div class="warrant-area">
                <p style="text-align: center;line-height:20px;height:20px;">


                    <a href="#" class="rule" target="_blank">帐号用户协议</a>
                    <em class="foot_em">|</em>
                    <a href="#" class="rule" target="_blank">关于帐号与隐私的声明</a>
                    <span class="foot_em">
                        <em style='font-style: normal'>|</em>
                        <a style="padding:0 10px;" target="blank" href="#">常见问题</a></span>
                </p>

                <p style="text-align: center;line-height: 12px;height:12px;margin-top: 10px ">
                    Copyright © 2011-2018  阿里巴巴与四个大盗软件技术有限公司  版权所有  保留一切权利  湘B2-20070200号 | 湘ICP备09062682号-9
                </p>
            </div>
        </div>
    </div>
</div>

<div id="layer">
    <div class="mc"></div>
</div>

<script src="js/public-reception/login.js"></script>
<script src="js/public-reception/loginAuthDialog.js"></script>
<script src="js/public-reception/swfobject.js"></script>
<script src="js/public-reception/acctguard-secure.min.js"></script>
<script src="js/public-reception/randomErrorCheck.js"></script>
</body>
</html>
