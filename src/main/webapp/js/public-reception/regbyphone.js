addCssActive($(".next-step"),"step-active","disabled");addCssActive($(".pre-step"),"step-active","disabled");addCssActive($(".btn-EMUI5-2"),"btn-EMUI5-2-active","disabled");$("#authcode,#randomCode").val("");addCssActive($("a"),"a-active","disabled");$("#back").click(function(){window.history.back(-1)});wapWindowResize();$("#next").click(function(){localInfo.isReadyToSubmit=true;if($("#next").hasClass("disabled")||$("#next").hasClass("send-ajax")||!localInfo.authCodeChecked){return}var e=$(".login-form-marginTop")[0];if(!validator(e,true)){return false}if(localInfo.wapRegData==""){$("<div/>").Dialog({title:rss.common_hint,titleUnderline:false,btnRight:{text:rss.ok,fn:function(){gotoUrl(localHttps+"/mobile/standard/welcome.html"+localInfo.urlQurey)}},btnLeft:false,html:'<div class="center">'+rss.loginOverdue+"</div>"}).Dialog("show");return false}putRegData()});$("#regbyemail").click(function(){gotoUrl(localHttps+"/mobile/standard/register/regbyemail.html"+localInfo.urlQurey)});if(validator($(".login-form-marginTop")[0],true)){$("#next").addClass("disabled")}function putRegData(){var e=$("#phone").val();var o=$("#authcode").val();var r=$("#countryCode").val();var a=$("#randomCode").val();if(r.indexOf("+")>-1){r=r.replace("+","00")}var s={"userAccount":getPhoneNumber(e,r),"countryCode":r,"authCode":o,"randomAuthCode":a,"reqClientType":localInfo.reqClientType};var n="operDataForWapReg";$("#next").addClass("send-ajax");ajaxHandler(n,s,function(e){if(e.isSuccess=="1"){$("#next").addClass("send-ajax");postAction()}else if(e.errorCode=="10000201"){$("#next").removeClass("send-ajax");$(".dinput-UI6").addClass("input-error-EMUI5");$("#randomCode_msg").html(rss.inputsmscode)}else{$("#next").removeClass("send-ajax");$("<div/>").Dialog({title:rss.common_hint,titleUnderline:false,btnRight:{text:rss.ok,fn:function(){gotoUrl(localHttps+"/mobile/standard/welcome.html"+localInfo.urlQurey)}},btnLeft:false,html:'<div class="center">'+rss.loginOverdue+"</div>"}).Dialog("show")}},function(){},true,"JSON")}$(function(){if(localInfo.isThirdProcess=="true"){document.title=rss.web_title_bind_phone}var e=$("#phone");var o=$("#authcode");var r={$phone:$("#phone"),showErrorFn:function(e){if(e=="require"){$("#phoneInputDiv-box").addClass("input-error-EMUI5");$("#msg_phone").html(rss.common_phone_format_error);$("#msg_phone").addClass("addbtmpad-msg-top2p")}else if(e=="phoneNumber"){$("#phoneInputDiv-box").addClass("input-error-EMUI5");$("#msg_phone").html(rss.common_phone_format_error);$("#msg_phone").addClass("addbtmpad-msg-top2p")}},successFn:function(){},reInputFn:function(){$("#msg_phone").html("");$("#phoneInputDiv-box").removeClass("input-error-EMUI5")}};phoneValidator(r);t();o.validator("bind",{type:["require","length","int"],trim:true,validOnChange:true,max:6,min:6,errorFunction:function(e,o){switch(o.type){case"require":break;case"length":case"int":$("#authCodeDiv").addClass("input-error-EMUI5");$("#msg_error_phone").html(rss.common_js_wrongcode);$("#msg_error_phone").addClass("addbtmpad-msg-top2p");break}},successFunction:function(e,o){$("#authCodeDiv").removeClass("input-error-EMUI5")},reInputFunction:function(){$("#msg_error_phone").html("");$("#msg_error_phone").removeClass("addbtmpad-msg-top2p");$("#authCodeDiv").removeClass("input-error-EMUI5")}});var a=$("#randomCode");var s="";var n="";$("#randomCode").bind("focus",function(){d()});function t(){$("#phone").change(function(){var e=document.getElementById("phone");if(!validator(e,true)){return}if(!checkPhoneValidate()){return}checkExistAuto($("#phone"))})}function l(){var o=$("#randomCode");var r=$("#randomCodeImg");var a=$("#randomCode_msg");var e=o.val().removeAllSpace();e=e.substring(0,4);o.val(e);if(typeof o[0]!="undefined"&&e.length>=4&&!$("#picAuthCode").hasClass("picAuthCodeNoDis")){var s={randomCode:e,session_code_key:"p_reg_login_websso_session_ramdom_code_key",randomCodeDisplayType:localInfo.randomCodeDisplayType};ajaxHandler("authCodeValidate",s,function(e){if(!$("#picAuthCode").hasClass("picAuthCodeNoDis")){if("1"==e.isSuccess){$("#authCodeRight").addClass("poptips-yes-new")}else{chgRandomCode(r[0],localInfo.webssoLoginSessionCode);o[0].value="";$(".dinput-UI6").addClass("input-error-EMUI5");$("#authCodeRight").removeClass("poptips-yes-new");switch(e.errorCode){case"10000201":{a.html(rss.common_wrong_authcode);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");break}case"10000001":{a.html(rss.error_10000001);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");break}case"10000004":{a.html(rss.error_10000004);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");break}default:{a.html(rss.error_10000002);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");break}}}}},function(e){},true,"JSON")}else if(typeof o[0]!="undefined"&&o.val().length!=4){}}var d=function(){var e=setInterval(i,200);$(this).bind("blur",function(){clearInterval(e)})};var i=function(){if(!$("#picAuthCode").hasClass("picAuthCodeNoDis")){n=$("#randomCode").val();if(n!=""&&n!=s){l()}var e=$("#randomCode").is(":focus");if(e&&n!=null&&n.length>=1&&n.length<=3){$("#randomCode_msg").html("");$("#randomCode_msg").removeClass("addbtmpad-msg-top2p");$(".dinput-UI6").removeClass("input-error-EMUI5");$("#authCodeRight").removeClass("poptips-yes-new")}s=n;checkRegInput()}};a.validator("bind",{type:["require","length"],trim:true,validOnChange:false,min:4,max:4,reInputEvent:"keyup",errorFunction:function(e,o){switch(o.type){case"require":$(".dinput-UI6").addClass("input-error-EMUI5");$("#randomCode_msg").html(rss.inputsmscode);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");$("#authCodeRight").removeClass("poptips-yes-new");break;case"length":$(".dinput-UI6").addClass("input-error-EMUI5");$("#randomCode_msg").html(rss.login_js_codeerror);$("#randomCode_msg").addClass("addbtmpad-msg-top2p");$("#authCodeRight").removeClass("poptips-yes-new");break}},successFunction:function(e,o){$(".dinput-UI6").removeClass("input-error-EMUI5");$("#randomCode_msg").removeClass("addbtmpad-msg-top2p");$("#randomCode_msg").html("")},reInputFunction:function(){}});var c=[];if(localInfo.countryCodes){var p=localInfo.countryCodes.split(",");$.each(p,function(e,o){var r=o.split("(");var a=o.split("|")[0];var s=o.split("|")[1];var n=r[0];if(n.indexOf("+")>-1){n=n.replace("+","00")}if(s==localInfo.countryCode){localInfo.default_country_code=n}if(n){var t={value:n,label:a};c.push(t)}})}initCallingCodeSelectList();initDefaultCountryInfo();localInfo.currentCountryCode=localInfo.countryCode;$("#selectCountryImg").click(function(){$("<div>").fullScreenList({items:localInfo.sortedCallingItems,title:rss_new.uc_common_country_or_regions,onChange:function(e){$("#msg_phone").html("");$("#msg_phone").removeClass("addbtmpad-msg-top2p");$("#phoneInputDiv-box").removeClass("input-error-EMUI5");var o=e.value;var r=e.label;$("#countryCode").val(o.split(",")[1].replace("+","00"));$("#selectedCountry").text(r.split(" ")[0]+"  "+o.split(",")[1]);localInfo.currentCountryCode=o.split(",")[0];checkPhoneValidate()}})});function m(){if(e.val().trim()!=""&&o.val().trim()!=""&&u.val().trim()!=""&&g.val().trim()!=""){$("#next").removeAttr("disabled");$("#next").removeClass("disabled")}else{$("#next").attr("disabled",true);$("#next").addClass("disabled")}}e.on("textchange",function(){o.val("");m()});e.change(function(){if($("#randomCode").val()!=undefined&&$("#randomCode").val().trim()!=""){chgRandomCodeForReg()}$("#randomCode").val("");$("#randomCode_msg").html("");$("#randomCode_msg").removeClass("addbtmpad-msg-top2p");$(".dinput-UI6").removeClass("input-error-EMUI5");$("#authCodeRight").removeClass("poptips-yes-new")});o.on("textchange",function(){m();localInfo.authCodeChecked=false;$("#authCodeRightSms").removeClass("poptips-yes-new")});o.on("blur",function(){if(localInfo.authCodeChecked){return}var e=$.trim($(this).val());if(!e){return}else if(e.length===6){chkReRegister(e)}});m();var u=$("#password");var g=$("#checkPassword");$("#checkPassword,#password").bind("copy",function(e){e.preventDefault()});$("#pwdPic").click(function(){var e=document.getElementById("password").type;if(e=="password"){document.getElementById("password").type="text";document.getElementById("checkPassword").type="text";$("#pwdPic").attr("src",XSSGuard4URL(localInfo.eyeon))}else{document.getElementById("password").type="password";document.getElementById("checkPassword").type="password";$("#pwdPic").attr("src",XSSGuard4URL(localInfo.eyeoff))}});u.on("textchange",function(){m()});g.on("textchange",function(){m()});u.validator("bind",{type:["require","strLength","hasSpace","pwdComplexity","errorInput"],trim:false,validOnChange:true,min:8,max:32,errorFunction:function(e,o){switch(o.type){case"require":$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").addClass("addbtmpad-msg-top2p").html(rss_new.uc_common_input_ling_pwd);break;case"strLength":$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").addClass("addbtmpad-msg-top2p").html(rss_new.reducePwd_format_2);break;case"hasSpace":$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").addClass("addbtmpad-msg-top2p").html(rss_new.reducePwd_format_1);break;case"pwdComplexity":$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").addClass("addbtmpad-msg-top2p").html(rss_new.reducePwd_format_3);break;case"errorInput":$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").addClass("addbtmpad-msg-top2p").html(rss_new.reducePwd_inputError_desc);break}},successFunction:function(e,o){},reInputFunction:function(){$("#passwd_msg").removeClass("addbtmpad-msg-top2p");$("#passwd_msg").html("");$("#confirmPasswordDiv").removeClass("input-error-EMUI5");$("#errorTips").html("")}});$("#password").on("textchange",function(){onPwdKeyUp4EMUI($("#password")[0],$("#passwd_msg"),$("#passwordDiv"),"","input-error-EMUI5",true,$("#next"),true)});registerPwdformatValidator4Wap();g.validator("bind",{type:["require","eq"],trim:false,validOnChange:true,compareTo:u,max:32,min:8,errorFunction:function(e,o){$("#confirmPasswordDiv").addClass("input-error-EMUI5");$("#errorTips").addClass("addbtmpad-msg-top2p");switch(o.type){case"require":$("#errorTips").html(rss_new.common_msg_confirm_pwd);break;case"eq":$("#errorTips").html(rss_new.common_js_pwdnotsame);break}},successFunction:function(e,o){$("#confirmPasswordDiv").removeClass("input-error-EMUI5");$("#errorTips").removeClass("addbtmpad-msg-top2p");$("#errorTips").html("")},reInputFunction:function(){$("#confirmPasswordDiv").removeClass("input-error-EMUI5");$("#errorTips").html("");$("#errorTips").removeClass("addbtmpad-msg-top2p")}})});function initDefaultCountryInfo(){var e=localInfo.countryCodes.split(",");if(localInfo.default_country_code){$("#countryCode").val(localInfo.default_country_code)}else{var o=e[0].split("(")[0].replace("+","00");$("#countryCode").val(o)}var n=$("#countryCode").val();$.each(e,function(e,o){var r=o.split("(")[0].replace("+","00");if(n===r){var a=o.split("|")[0].split("(")[1].replace(")","");var s=a+"  "+n.replace("00","+");$("#selectedCountry").text(s);if(localInfo.countryCode=="kz"){return}else{return false}}})}function chkReRegister(e){var o=$("#phone").val();var r=$("#countryCode").val();var a=$("#randomCode");var s=$("#randomCodeImg");if(r.indexOf("+")>-1){r=r.replace("+","00")}var n={70001201:rss_new.uc_error_10000001,"default":rss_new.common_wrong_authcode};var t={"accountType":2,"userAccount":getPhoneNumber(o,r),"reqClientType":localInfo.reqClientType,"authCode":e,"countryCode":localInfo.currentCountryCode,"lang":localInfo.lang,"siteID":localInfo.countrySiteID};localInfo.isReadyToSubmit=false;localInfo.authCodeChecked=false;casAjaxObj.chkReRegister(t,l,d,n);function l(e){localInfo.authCodeChecked=true;$("#authCodeRightSms").addClass("poptips-yes-new");if(e&&e.reRegisterFlag==1&&e.siteInfoList&&e.siteInfoList.length>0){popIsNewFromOld(e.siteInfoList[0],e.regExtInfo);return}else if(e&&e.reRegisterFlag==0&&e.siteInfoList&&e.siteInfoList.length>0){popIsReg();$("#authcode").val("");return}if(localInfo.isReadyToSubmit){$("#next").click()}}function d(e,o){$("#authCodeRightSms").removeClass("poptips-yes-new");$("#msg_error_phone").addClass("addbtmpad-msg-top2p");var r=o.errorCode;if("10000001"==r||"10000002"==r||"10000004"==r||"70001201"==r||"70001401"==r){$("#msg_error_phone").html(e)}else{$("#authCodeDiv").addClass("input-error-EMUI5");$("#msg_error_phone").html(e)}}}function initCallingCodeSelectList(){var e=$.parseJSON(localInfo.sortedCallingCode);if(localInfo.lang==="zh-cn"||localInfo.lang==="en-us"){var o=[];for(var r=0;r<26;r++){var a=String.fromCharCode(65+r);if(e[a.toLowerCase()]){var s={};s[a]=e[a.toLowerCase()];o.push(s)}}localInfo.sortedCallingItems=o}else{localInfo.sortedCallingItems=e["a"]}if(localInfo.sortedCallingItems.length>1){$("#selectCountryImg").css("display","")}else{$("#selectCountryImg").css("display","none")}}function checkPhoneValidate(){var e=$("#phone").val();var o=$("#countryCode").val();if(!valiMobile(e,o)){$("#msg_phone").addClass("addbtmpad-msg-top2p");$("#msg_phone").html(rss.common_phone_format_error);$("#phoneInputDiv-box").addClass("input-error-EMUI5");return false}else{$("#msg_phone").html("");$("#msg_phone").removeClass("addbtmpad-msg-top2p");$("#phoneInputDiv-box").removeClass("input-error-EMUI5");return true}}function getMobileCode(e,o,r,a){if($("#getValiCode").attr("disabled")){return false}var s=$("#phone").val();var n=$("#countryCode").val();if(s==""){$("#phoneInputDiv-box").addClass("input-error-EMUI5");$("#msg_phone").addClass("addbtmpad-msg-top2p");$("#msg_phone").html(rss.common_emptyphone);return}if(!valiMobile(s,n)){$("#msg_phone").addClass("addbtmpad-msg-top2p");$("#msg_phone").html(rss.common_phone_format_error);$("#phoneInputDiv-box").addClass("input-error-EMUI5");return}if(localInfo.displayCaptchaType=="1"){if(!ramdonCodeImgObj.isValidateRandomCodeSuccess()){ramdonCodeImgObj.validateRandomCodeError();return}}else{var t=$("#randomCode").val().trim();if(t.length!=4){$("#picAuthCode").addClass("input-error-EMUI5");if(t==""){$("#randomCode_msg").text(rss_new.picture_verfication_code_null_error)}else{$("#randomCode_msg").text(rss_new.common_js_wrongcode)}return}}$("#msg_phone").html("");$("#msg_phone").removeClass("addbtmpad-msg-top2p");$("#randomCode_msg").html("");$("#msg_error_phone").html("");$("#msg_error_phone").removeClass("addbtmpad-msg-top2p");$("#authCodeDiv").removeClass("input-error-EMUI5");$("#authcode").val("");var l=$("#phone");sendSMS(getPhoneNumber(s,n),r,a)}function popIsNewFromOld(e,o){e=e?e:{};var r=$("#phone").val();var a=$("#countryCode").val();var s=getPhoneNumber(r,a);var n={userAccount:s,userAvatar:e.avatar,userNickName:e.nickName||"",userPhoneNum:s};$("<div/>").Dialog({title:rss_new.reg_again_title,titleUnderline:false,btnRight:{text:rss_new.reg_again_go_login,fn:function(){gotoUrl(localHttps+"/mobile/standard/reRegWelcome.html"+localInfo.urlQurey+"&regExtInfo="+o)}},btnLeft:{text:rss_new.reg_again_back_reg,fn:function(){}},html:'<div class="normal-color　reg-user-desc">'+rss_new.reg_again_content.format(getExpressPhone(n.userAccount))+"</div>"+'<div class="marginTop8 center reg-user-info">'+'<div class="reg-avatar '+(n.userAvatar?"avatarCircle":"")+'"><img src="'+(n.userAvatar||localInfo.defaultAvatar)+'" alt="" onerror="this.src = localInfo.defaultAvatar;this.onerror = null;"/></div>'+'<div class="marginTop16 normal-color medium">'+n.userNickName+"</div>"+'<p class="marginTop4 font-desc">'+getExpressPhone(n.userPhoneNum)+"</p></div>"}).Dialog("show")}function popIsReg(){$("<div/>").Dialog({titleUnderline:false,btnRight:{text:rss_new.common_login,fn:function(){gotoUrl(localHttps+"/mobile/standard/welcome.html"+localInfo.urlQurey)}},btnLeft:{text:rss_new.box_js_cancel,fn:function(){}},html:'<div class="center">'+rss_new.reg_again_tip_1+"</div>"}).Dialog("show")}function sendSMS(e,o,r){var n=$("#getValiCode");var a={70001201:rss_new.uc_error_10000001,10000002:rss_new.uc_error_10000001,70001102:rss_new.uc_error_70001102_1,70001104:rss_new.uc_error_70001104_1,"default":rss_new.uc_error_10000001};var s={"userAccount":e,"smsReqType":"3","reqClientType":o,"accountType":2,"siteID":localInfo.countrySiteID,"languageCode":localInfo.lang,"mobilePhone":e,"loginChannel":localInfo.loginChannel,operType:14,session_code_key:localInfo.session_code_key,randomCodeDisplayType:localInfo.randomCodeDisplayType};if(localInfo.displayCaptchaType=="1"){s.randomCode=ramdonCodeImgObj.getRandomCode()}else{s.randomCode=$("#randomCode").val()}n.attr("disabled",true);casAjaxObj.getSMSCodeV3(s,t,l,a);function t(){wapToast(rss.smsHasSendTo.format(getExpressPhone(s.userAccount)));n.addClass("auth_code_grey");n.attr("disabled",true);jsInnerTimeout(n,rss.resend)}function l(e,o){n.removeAttr("disabled");var r=o.errorCode;if("10000201"==r){if(localInfo.displayCaptchaType=="1"&&captchaObj){ramdonCodeImgObj.validateRandomCodeError();ramdonCodeImgObj.resetRandomCode()}else{$("#picAuthCode").addClass("input-error-EMUI5");$("#randomCode_msg").html(e);var a=$("#randomCode");var s=$("#randomCodeImg");chgRandomCode(s[0],localInfo.webssoLoginSessionCode);a.val("");$("#authCodeRight").removeClass("poptips-yes-new")}}else if("70002002"==r){popIsReg()}else{$("#phoneInputDiv-box").addClass("input-error-EMUI5");$("#msg_phone").html(e)}}}function checkRegInput(){if($("#picAuthCode").hasClass("picAuthCodeNoDis")){if($("#username").val()&&$("#password").val()){$("#btnLogin").removeClass("disabled")}else{$("#btnLogin").addClass("disabled")}}else{if($("#username").val()&&$("#password").val()&&$("#randomCode").val()){$("#btnLogin").removeClass("disabled")}else{$("#btnLogin").addClass("disabled")}}}function chgRandomCodeForReg(){var e=$("#randomCode");var o=$("#randomCodeImg");chgRandomCode(o[0],localInfo.webssoLoginSessionCode);e.val("");$("#authCodeRight").removeClass("poptips-yes-new")}function checkExistAuto(e,o){var r=e.val();if(r.length>50||r.length<5){showErrorNew($("#phoneInputDiv-box"),$("#msg_phone"),rss.login_js_accountlength);return}}function fillAccount(e,o){if(e==1&&o){$("#username").val(o)}if(e==2&&o){$("#phone").val(o)}}function postAction(){var e=$("#password");var o=localInfo.agreementContentsStr;var r=localInfo.siteC.split("-")[0];if((r=="7"||r=="5")&&localInfo.agreeAd!="true"){o=checkAdMarketAgreedAgrContent(o)}while(o.indexOf("$countryCode")>-1){o=o.replace("$countryCode",localInfo.siteC)}o=o.replace(/\'/g,'"');$("#next").addClass("send-ajax");var a={70001201:rss_new.uc_error_70001201,10002073:rss_new.uc_error_10002073,70001102:rss_new.uc_error_70001102_1};var s={"password":e.val(),"accountType":1,"reqClientType":localInfo.reqClientType,"registerChannel":localInfo.loginChannel,"languageCode":localInfo.lang,"agrVers":o,"operType":3};if(localInfo.regType=="phone"){a["10000201"]=rss_new.registerbyphone_js_phoneregfail;a["default"]=rss_new.common_should_sec_verify;s.accountType=2}else{a["10000201"]=rss_new.register_js_emailregfail;a["default"]=rss_new.uc_error_10000001;s.accountType=1}casAjaxObj.registerCloudAccount(s,n,t,a);function n(e){$("#next").addClass("send-ajax");$("#register_msg").show().html("");if(localInfo.regType=="phone"&&localInfo.thirdLoginFlag=="true"){s.thirdLoginFlag="true"}remoteLoginFn(e)}function t(e){$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").html(e)}}function remoteLoginFn(e){var o={70001201:rss_new.uc_error_70001201,10002073:rss_new.uc_error_10002073,70001102:rss_new.uc_error_70001102_1,"default":rss_new.uc_error_10000001};var r={submit:localInfo.submit,password:$("#password").val(),reqClientType:localInfo.reqClientType,loginChannel:localInfo.loginChannel,authcode:e.regToken,service:localInfo.service,loginUrl:localInfo.loginUrl,thirdAccountType:localInfo.thirdAccountType,thirdAccountTitle:localInfo.thirdAccountTitle,opType:13,lang:localInfo.lang};if(localInfo.regType=="phone"){o["10000201"]=rss_new.registerbyphone_js_phoneregfail;o["default"]=rss.common_should_sec_verify}else{o["10000201"]=rss_new.register_js_emailregfail;o["default"]=rss_new.uc_error_10000001}if(localInfo.thirdLoginFlag=="true"){r.thirdLoginFlag="true"}casAjaxObj.remoteLogin(r,a,s,o);function a(e){$("#next").addClass("send-ajax");if(e.qrCodeLoginSuccessFlag==true){gotoUrl(localInfo.rQcodeLoginSuccessUrl+"?"+"successFlag="+localInfo.successFlag)}else{gotoUrl(e.callbackURL)}}function s(e){$("#next").removeClass("send-ajax");$("#passwordDiv").addClass("input-error-EMUI5");$("#passwd_msg").html(e)}}