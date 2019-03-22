if(!this.JSON2){this.JSON2={}}(function(){function d(f){return f<10?"0"+f:f}function l(n,m){var f=Object.prototype.toString.apply(n);if(f==="[object Date]"){return isFinite(n.valueOf())?n.getUTCFullYear()+"-"+d(n.getUTCMonth()+1)+"-"+d(n.getUTCDate())+"T"+d(n.getUTCHours())+":"+d(n.getUTCMinutes())+":"+d(n.getUTCSeconds())+"Z":null}if(f==="[object String]"||f==="[object Number]"||f==="[object Boolean]"){return n.valueOf()}if(f!=="[object Array]"&&typeof n.toJSON==="function"){return n.toJSON(m)}return n}var c=new RegExp("[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]","g"),e='\\\\\\"\x00-\x1f\x7f-\x9f\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]',i=new RegExp("["+e,"g"),j,b,k={"\b":"\\b","\t":"\\t","\n":"\\n","\f":"\\f","\r":"\\r",'"':'\\"',"\\":"\\\\"},h;
function a(f){i.lastIndex=0;return i.test(f)?'"'+f.replace(i,function(m){var n=k[m];return typeof n==="string"?n:"\\u"+("0000"+m.charCodeAt(0).toString(16)).slice(-4)})+'"':'"'+f+'"'}function g(s,p){var n,m,t,f,q=j,o,r=p[s];if(r&&typeof r==="object"){r=l(r,s)}if(typeof h==="function"){r=h.call(p,s,r)}switch(typeof r){case"string":return a(r);case"number":return isFinite(r)?String(r):"null";case"boolean":case"null":return String(r);case"object":if(!r){return"null"}j+=b;o=[];if(Object.prototype.toString.apply(r)==="[object Array]"){f=r.length;for(n=0;n<f;n+=1){o[n]=g(n,r)||"null"}t=o.length===0?"[]":j?"[\n"+j+o.join(",\n"+j)+"\n"+q+"]":"["+o.join(",")+"]";j=q;return t}if(h&&typeof h==="object"){f=h.length;for(n=0;n<f;n+=1){if(typeof h[n]==="string"){m=h[n];t=g(m,r);if(t){o.push(a(m)+(j?": ":":")+t)}}}}else{for(m in r){if(Object.prototype.hasOwnProperty.call(r,m)){t=g(m,r);if(t){o.push(a(m)+(j?": ":":")+t)}}}}t=o.length===0?"{}":j?"{\n"+j+o.join(",\n"+j)+"\n"+q+"}":"{"+o.join(",")+"}";j=q;
return t}}if(typeof JSON2.stringify!=="function"){JSON2.stringify=function(o,m,n){var f;j="";b="";if(typeof n==="number"){for(f=0;f<n;f+=1){b+=" "}}else{if(typeof n==="string"){b=n}}h=m;if(m&&typeof m!=="function"&&(typeof m!=="object"||typeof m.length!=="number")){throw new Error("JSON.stringify")}return g("",{"":o})}}if(typeof JSON2.parse!=="function"){JSON2.parse=function(o,f){var n;function m(s,r){var q,p,t=s[r];if(t&&typeof t==="object"){for(q in t){if(Object.prototype.hasOwnProperty.call(t,q)){p=m(t,q);if(p!==undefined){t[q]=p}else{delete t[q]}}}}return f.call(s,r,t)}o=String(o);c.lastIndex=0;if(c.test(o)){o=o.replace(c,function(p){return"\\u"+("0000"+p.charCodeAt(0).toString(16)).slice(-4)})}if((new RegExp("^[\\],:{}\\s]*$")).test(o.replace(new RegExp('\\\\(?:["\\\\/bfnrt]|u[0-9a-fA-F]{4})',"g"),"@").replace(new RegExp('"[^"\\\\\n\r]*"|true|false|null|-?\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d+)?',"g"),"]").replace(new RegExp("(?:^|:|,)(?:\\s*\\[)+","g"),""))){n=eval("("+o+")");
return typeof f==="function"?m({"":n},""):n}throw new SyntaxError("JSON.parse")}}}());var _paq=_paq||[],Piwik=Piwik||(function(){var m,w={},d=document,j=navigator,v=screen,I=window,h=false,C=[],e=I.encodeURIComponent,J=I.decodeURIComponent,E=unescape,H,D;function b(i){return typeof i!=="undefined"}function a(i){return typeof i==="function"}function n(i){return typeof i==="object"}function q(i){return typeof i==="string"||i instanceof String}function z(){var K,M,L;for(K=0;K<arguments.length;K+=1){L=arguments[K];M=L.shift();if(q(M)){H[M].apply(H,L)}else{M.apply(H,L)}}}function t(M,L,K,i){if(M.addEventListener){M.addEventListener(L,K,i);return true}if(M.attachEvent){return M.attachEvent("on"+L,K)}M["on"+L]=K}function g(L,O){var K="",N,M;for(N in w){if(Object.prototype.hasOwnProperty.call(w,N)){M=w[N][L];if(a(M)){K+=M(O)}}}return K}function B(){var K;g("unload");if(window.console){console.log("inHandler")}if(m){var L=0;do{K=new Date();L++;if(L>1000){break}}while(K.getTime()<m);if(window.console){console.log(L)
}}if(window.console){console.log("outHandler")}}function k(){var K;if(!h){h=true;g("load");for(K=0;K<C.length;K++){C[K]()}}return true}function x(){var K;if(d.addEventListener){t(d,"DOMContentLoaded",function i(){d.removeEventListener("DOMContentLoaded",i,false);k()})}else{if(d.attachEvent){d.attachEvent("onreadystatechange",function i(){if(d.readyState==="complete"){d.detachEvent("onreadystatechange",i);k()}});if(d.documentElement.doScroll&&I===I.top){(function i(){if(!h){try{d.documentElement.doScroll("left")}catch(L){setTimeout(i,0);return}k()}}())}}}if((new RegExp("WebKit")).test(j.userAgent)){K=setInterval(function(){if(h||/loaded|complete/.test(d.readyState)){clearInterval(K);k()}},10)}t(I,"load",k,false)}function f(){var i="";try{i=I.top.document.referrer}catch(L){if(I.parent){try{i=I.parent.document.referrer}catch(K){i=""}}}if(i===""){i=d.referrer}return i}function A(i){var L=new RegExp("^([a-z]+):"),K=L.exec(i);return K?K[1]:null}function y(i){var L=new RegExp("^(?:(?:https?|ftp):)/*(?:[^@]+@)?([^:/#]+)"),K=L.exec(i);
return K?K[1]:i}function p(L,K){var O=new RegExp("^(?:https?|ftp)(?::/*(?:[^?]+)[?])([^#]+)"),N=O.exec(L),M=new RegExp("(?:^|&)"+K+"=([^&]*)"),i=N?M.exec(N[1]):0;return i?J(i[1]):""}function s(P,M,L,O,K,N){var i;if(L){i=new Date();i.setTime(i.getTime()+L)}d.cookie=P+"="+e(M)+(L?";expires="+i.toGMTString():"")+";path="+(O||"/")+(K?";domain="+K:"")+(N?";secure":"")}function G(L){var i=new RegExp("(^|;)[ ]*"+L+"=([^;]*)"),K=i.exec(d.cookie);return K?J(K[2]):0}function r(i){return E(e(i))}function u(aa){var M=function(W,i){return(W<<i)|(W>>>(32-i))},ab=function(ah){var ag="",af,W;for(af=7;af>=0;af--){W=(ah>>>(af*4))&15;ag+=W.toString(16)}return ag},P,ad,ac,L=[],T=1732584193,R=4023233417,Q=2562383102,O=271733878,N=3285377520,Z,Y,X,V,U,ae,K,S=[];aa=r(aa);K=aa.length;for(ad=0;ad<K-3;ad+=4){ac=aa.charCodeAt(ad)<<24|aa.charCodeAt(ad+1)<<16|aa.charCodeAt(ad+2)<<8|aa.charCodeAt(ad+3);S.push(ac)}switch(K&3){case 0:ad=2147483648;break;case 1:ad=aa.charCodeAt(K-1)<<24|8388608;break;case 2:ad=aa.charCodeAt(K-2)<<24|aa.charCodeAt(K-1)<<16|32768;
break;case 3:ad=aa.charCodeAt(K-3)<<24|aa.charCodeAt(K-2)<<16|aa.charCodeAt(K-1)<<8|128;break}S.push(ad);while((S.length&15)!==14){S.push(0)}S.push(K>>>29);S.push((K<<3)&4294967295);for(P=0;P<S.length;P+=16){for(ad=0;ad<16;ad++){L[ad]=S[P+ad]}for(ad=16;ad<=79;ad++){L[ad]=M(L[ad-3]^L[ad-8]^L[ad-14]^L[ad-16],1)}Z=T;Y=R;X=Q;V=O;U=N;for(ad=0;ad<=19;ad++){ae=(M(Z,5)+((Y&X)|(~Y&V))+U+L[ad]+1518500249)&4294967295;U=V;V=X;X=M(Y,30);Y=Z;Z=ae}for(ad=20;ad<=39;ad++){ae=(M(Z,5)+(Y^X^V)+U+L[ad]+1859775393)&4294967295;U=V;V=X;X=M(Y,30);Y=Z;Z=ae}for(ad=40;ad<=59;ad++){ae=(M(Z,5)+((Y&X)|(Y&V)|(X&V))+U+L[ad]+2400959708)&4294967295;U=V;V=X;X=M(Y,30);Y=Z;Z=ae}for(ad=60;ad<=79;ad++){ae=(M(Z,5)+(Y^X^V)+U+L[ad]+3395469782)&4294967295;U=V;V=X;X=M(Y,30);Y=Z;Z=ae}T=(T+Z)&4294967295;R=(R+Y)&4294967295;Q=(Q+X)&4294967295;O=(O+V)&4294967295;N=(N+U)&4294967295}ae=ab(T)+ab(R)+ab(Q)+ab(O)+ab(N);return ae.toLowerCase()}function o(L,i,K){if(L==="translate.googleusercontent.com"){if(K===""){K=i}i=p(i,"u");L=y(i)}else{if(L==="cc.bingj.com"||L==="webcache.googleusercontent.com"||L.slice(0,5)==="74.6."){i=d.links[0].href;
L=y(i)}}return[L,i,K]}function l(K){var i=K.length;if(K.charAt(--i)==="."){K=K.slice(0,i)}if(K.slice(0,2)==="*."){K=K.slice(1)}return K}function F(ac,az){var N=o(d.domain,I.location.href,f()),aR=l(N[0]),a4=N[1],aF=N[2],aD="GET",M=ac||"",aV=az||"",ap,ag=d.title,ai="7z|aac|ar[cj]|as[fx]|avi|bin|csv|deb|dmg|doc|exe|flv|gif|gz|gzip|hqx|jar|jpe?g|js|mp(2|3|4|e?g)|mov(ie)?|ms[ip]|od[bfgpst]|og[gv]|pdf|phps|png|ppt|qtm?|ra[mr]?|rpm|sea|sit|tar|t?bz2?|tgz|torrent|txt|wav|wm[av]|wpd||xls|xml|z|zip",aB=[aR],Q=[],au=[],ab=[],aA=500,R,ad,S,T,ak=["pk_campaign","piwik_campaign","utm_campaign","utm_source","utm_medium"],af=["pk_kwd","piwik_kwd","utm_term"],a2="_pk_",V,a3,aX,ao,Z=63072000000,aa=1800000,aq=15768000000,Y=d.location.protocol==="https",P=false,av={},aY=200,aL={},aW={},aI=false,aG=false,aE,aw,W,aj=u,aH,am;function aZ(a7){var a8;if(S){a8=new RegExp("#.*");return a7.replace(a8,"")}return a7}function aQ(a9,a7){var ba=A(a7),a8;if(ba){return a7}if(a7.slice(0,1)==="/"){return A(a9)+"://"+y(a9)+a7
}a9=aZ(a9);if((a8=a9.indexOf("?"))>=0){a9=a9.slice(0,a8)}if((a8=a9.lastIndexOf("/"))!==a9.length-1){a9=a9.slice(0,a8+1)}return a9+a7}function aC(ba){var a8,a7,a9;for(a8=0;a8<aB.length;a8++){a7=l(aB[a8].toLowerCase());if(ba===a7){return true}if(a7.slice(0,1)==="."){if(ba===a7.slice(1)){return true}a9=ba.length-a7.length;if((a9>0)&&(ba.slice(a9)===a7)){return true}}}return false}function a6(a7){var a8=new Image(1,1);a8.onLoad=function(){};a8.src=M+(M.indexOf("?")<0?"?":"&")+a7}function aN(a7){try{var a9=I.XDomainRequest?new I.XDomainRequest():I.XMLHttpRequest?new I.XMLHttpRequest():I.ActiveXObject?new ActiveXObject("Microsoft.XMLHTTP"):null;a9.open("POST",M,true);a9.onreadystatechange=function(){if(this.readyState===4&&this.status!==200){a6(a7)}};a9.setRequestHeader("Content-Type","application/x-www-form-urlencoded; charset=UTF-8");a9.send(a7)}catch(a8){a6(a7)}}function al(a9,a8){var a7=new Date();if(!aX){if(aD==="POST"){aN(a9)}else{a6(a9)}m=a7.getTime()+a8}}function aM(a7){return a2+a7+"."+aV+"."+aH
}function O(){var a7=aM("testcookie");if(!b(j.cookieEnabled)){s(a7,"1");return G(a7)==="1"?"1":"0"}return j.cookieEnabled?"1":"0"}function ax(){aH=aj((V||aR)+(a3||"/")).slice(0,4)}function X(){var a8=aM("cvar"),a7=G(a8);if(a7.length){a7=JSON2.parse(a7);if(n(a7)){return a7}}return{}}function L(){if(P===false){P=X()}}function aU(){var a7=new Date();aE=a7.getTime()}function U(bb,a8,a7,ba,a9,bc){s(aM("id"),bb+"."+a8+"."+a7+"."+ba+"."+a9+"."+bc,Z,a3,V,Y)}function K(){var a8=new Date(),a7=Math.round(a8.getTime()/1000),ba=G(aM("id")),a9;if(ba){a9=ba.split(".");a9.unshift("0")}else{if(!am){am=aj((j.userAgent||"")+(j.platform||"")+JSON2.stringify(aW)+a7).slice(0,16)}a9=["1",am,a7,0,a7,"",""]}return a9}function i(){var a7=G(aM("ref"));if(a7.length){try{a7=JSON2.parse(a7);if(n(a7)){return a7}}catch(a8){}}return["","",0,""]}function ah(a9,bx,by,bb){var bv,a8=new Date(),bh=Math.round(a8.getTime()/1000),bA,bw,bd,bo,bs,bg,bq,be,bu,bc=1024,bB,bk,br=P,bm=aM("id"),bi=aM("ses"),bj=aM("ref"),bC=aM("cvar"),bp=K(),bl=G(bi),bt=i(),bz=ap||a4,bf,a7;
if(aX){s(bm,"",-1,a3,V);s(bi,"",-1,a3,V);s(bC,"",-1,a3,V);s(bj,"",-1,a3,V);return""}bA=bp[0];bw=bp[1];bo=bp[2];bd=bp[3];bs=bp[4];bg=bp[5];if(!b(bp[6])){bp[6]=""}bq=bp[6];if(!b(bb)){bb=""}bf=bt[0];a7=bt[1];be=bt[2];bu=bt[3];if(!bl){bd++;bg=bs;if(!ao||!bf.length){for(bv in ak){if(Object.prototype.hasOwnProperty.call(ak,bv)){bf=p(bz,ak[bv]);if(bf.length){break}}}for(bv in af){if(Object.prototype.hasOwnProperty.call(af,bv)){a7=p(bz,af[bv]);if(a7.length){break}}}}bB=y(aF);bk=bu.length?y(bu):"";if(bB.length&&!aC(bB)&&(!ao||!bk.length||aC(bk))){bu=aF}if(bu.length||bf.length){be=bh;bt=[bf,a7,be,aZ(bu.slice(0,bc))];s(bj,JSON2.stringify(bt),aq,a3,V,Y)}}a9+="&idsite="+aV+"&rec=1&r="+String(Math.random()).slice(2,8)+"&h="+a8.getHours()+"&m="+a8.getMinutes()+"&s="+a8.getSeconds()+"&url="+e(aZ(bz))+(aF.length?"&urlref="+e(aZ(aF)):"")+"&_id="+bw+"&_idts="+bo+"&_idvc="+bd+"&_idn="+bA+(bf.length?"&_rcn="+e(bf):"")+(a7.length?"&_rck="+e(a7):"")+"&_refts="+be+"&_viewts="+bg+(String(bq).length?"&_ects="+bq:"")+(String(bu).length?"&_ref="+e(aZ(bu.slice(0,bc))):"")+"&scd="+screen.colorDepth+"&vpr="+an();
var ba=JSON2.stringify(av);if(ba.length>2){a9+="&cvar="+e(ba)}for(bv in aW){if(Object.prototype.hasOwnProperty.call(aW,bv)){a9+="&"+bv+"="+aW[bv]}}if(bx){a9+="&data="+e(JSON2.stringify(bx))}else{if(T){a9+="&data="+e(JSON2.stringify(T))}}if(P){var bn=JSON2.stringify(P);if(bn.length>2){a9+="&_cvar="+e(bn)}for(bv in br){if(Object.prototype.hasOwnProperty.call(br,bv)){if(P[bv][0]===""||P[bv][1]===""){delete P[bv]}}}s(bC,JSON2.stringify(P),aa,a3,V,Y)}U(bw,bo,bd,bh,bg,b(bb)&&String(bb).length?bb:bq);s(bi,"*",aa,a3,V,Y);a9+=g(by);return a9}function an(){var a8=0;var a7=0;if(window.innerWidth){a7=window.innerWidth}else{if(document.body&&document.body.offsetWidth){a7=document.body.offsetWidth}}if(window.innerHeight){a8=window.innerHeight}else{if(document.body&&document.body.offsetHeight){a8=document.body.offsetHeight}}return a7+"x"+a8}function aP(ba,a9,be,bb,a7,bh){var bc="idgoal=0",bd,a8=new Date(),bf=[],bg;if(String(ba).length){bc+="&ec_id="+e(ba);bd=Math.round(a8.getTime()/1000)}bc+="&revenue="+a9;
if(String(be).length){bc+="&ec_st="+be}if(String(bb).length){bc+="&ec_tx="+bb}if(String(a7).length){bc+="&ec_sh="+a7}if(String(bh).length){bc+="&ec_dt="+bh}if(aL){for(bg in aL){if(Object.prototype.hasOwnProperty.call(aL,bg)){if(!b(aL[bg][1])){aL[bg][1]=""}if(!b(aL[bg][2])){aL[bg][2]=""}if(!b(aL[bg][3])||String(aL[bg][3]).length===0){aL[bg][3]=0}if(!b(aL[bg][4])||String(aL[bg][4]).length===0){aL[bg][4]=1}bf.push(aL[bg])}}bc+="&ec_items="+e(JSON2.stringify(bf))}bc=ah(bc,T,"ecommerce",bd);al(bc,aA)}function aO(a7,bb,ba,a9,a8,bc){if(String(a7).length&&b(bb)){aP(a7,bb,ba,a9,a8,bc)}}function a1(a7){if(b(a7)){aP("",a7,"","","","")}}function at(ba,bb){var a7=new Date(),a9=ah("action_name="+e(ba||ag),bb,"log");al(a9,aA);if(R&&ad&&!aG){aG=true;t(d,"click",aU);t(d,"mouseup",aU);t(d,"mousedown",aU);t(d,"mousemove",aU);t(d,"mousewheel",aU);t(I,"DOMMouseScroll",aU);t(I,"scroll",aU);t(d,"keypress",aU);t(d,"keydown",aU);t(d,"keyup",aU);t(I,"resize",aU);t(I,"focus",aU);t(I,"blur",aU);aE=a7.getTime();setTimeout(function a8(){var bc=new Date(),bd;
if((aE+ad)>bc.getTime()){if(R<bc.getTime()){bd=ah("ping=1",bb,"ping");al(bd,aA)}setTimeout(a8,ad)}},ad)}}function ay(a7,ba,a9){var a8=ah("idgoal="+a7+(ba?"&revenue="+ba:""),a9,"goal");al(a8,aA)}function aT(a8,a7,ba){var a9=ah(a7+"="+e(aZ(a8)),ba,"link");al(a9,aA)}function ae(a9,a8){var ba,a7="(^| )(piwik[_-]"+a8;if(a9){for(ba=0;ba<a9.length;ba++){a7+="|"+a9[ba]}}a7+=")( |$)";return new RegExp(a7)}function aS(ba,a7,bb){if(!bb){return"link"}var a9=ae(au,"download"),a8=ae(ab,"link"),bc=new RegExp("\\.("+ai+")([?&#]|$)","i");return a8.test(ba)?"link":(a9.test(ba)||bc.test(a7)?"download":0)}function aK(bc){var ba,a8,a7;while((ba=bc.parentNode)!==null&&b(ba)&&((a8=bc.tagName.toUpperCase())!=="A"&&a8!=="AREA")){bc=ba}if(b(bc.href)){var bd=bc.hostname||y(bc.href),be=bd.toLowerCase(),a9=bc.href.replace(bd,be),bb=new RegExp("^(javascript|vbscript|jscript|mocha|livescript|ecmascript):","i");if(!bb.test(a9)){a7=aS(bc.className,a9,aC(be));if(a7){a9=E(a9);aT(a9,a7)}}}}function a5(a7){var a8,a9;a7=a7||I.event;
a8=a7.which||a7.button;a9=a7.target||a7.srcElement;if(a7.type==="click"){if(a9){aK(a9)}}else{if(a7.type==="mousedown"){if((a8===1||a8===2)&&a9){aw=a8;W=a9}else{aw=W=null}}else{if(a7.type==="mouseup"){if(a8===aw&&a9===W){aK(a9)}aw=W=null}}}}function aJ(a8,a7){if(a7){t(a8,"mouseup",a5,false);t(a8,"mousedown",a5,false)}else{t(a8,"click",a5,false)}}function ar(a8){if(!aI){aI=true;var a9,a7=ae(Q,"ignore"),ba=d.links;if(ba){for(a9=0;a9<ba.length;a9++){if(!a7.test(ba[a9].className)){aJ(ba[a9],a8)}}}}}function a0(){var bb,a8,bd={pdf:"application/pdf",qt:"video/quicktime",realp:"audio/x-pn-realaudio-plugin",wma:"application/x-mplayer2",dir:"application/x-director",fla:"application/x-shockwave-flash",java:"application/x-java-vm",gears:"application/x-googlegears",ag:"application/x-silverlight"};if(j.mimeTypes&&j.mimeTypes.length){for(bb in bd){if(Object.prototype.hasOwnProperty.call(bd,bb)){a8=j.mimeTypes[bd[bb]];aW[bb]=(a8&&a8.enabledPlugin)?"1":"0"}}}if(typeof navigator.javaEnabled!=="unknown"&&b(j.javaEnabled)&&j.javaEnabled()){aW.java="1"
}if(a(I.GearsFactory)){aW.gears="1"}if(j.appName=="Microsoft Internet Explorer"){if(window.ActiveXObject){var a9=null;var be=null;var bc=null;var a7=null;var bg=null;try{a9=new ActiveXObject("AcroPDF.PDF")}catch(bf){}if(!a9){try{a9=new ActiveXObject("PDF.PdfCtrl")}catch(bf){}}if(a9){aW.pdf="1"}try{be=new ActiveXObject("ShockwaveFlash.ShockwaveFlash")}catch(bf){}if(be){aW.fla="1"}try{bc=new ActiveXObject("QuickTime.QuickTime")}catch(bf){}if(!bc){try{bc=new ActiveXObject("QuickTimeCheckObject.QuickTimeCheck")}catch(bf){}}if(bc){aW.qt="1"}var ba=["rmocx.RealPlayer G2 Control","rmocx.RealPlayer G2 Control.1","RealPlayer.RealPlayer(tm) ActiveX Control (32-bit)","RealVideo.RealVideo(tm) ActiveX Control (32-bit)","RealPlayer"];for(var bb=0;bb<ba.length;bb++){try{a7=new ActiveXObject(ba[bb])}catch(bf){continue}if(a7){break}}if(a7){aW.realp="1"}try{bg=new ActiveXObject("WMPlayer.OCX")}catch(bf){}if(bg){aW.wma="1"}}}aW.res=v.width+"x"+v.height;aW.cookie=O()}a0();ax();return{getVisitorId:function(){return(K())[1]
},getVisitorInfo:function(){return K()},getAttributionInfo:function(){return i()},getAttributionCampaignName:function(){return i()[0]},getAttributionCampaignKeyword:function(){return i()[1]},getAttributionReferrerTimestamp:function(){return i()[2]},getAttributionReferrerUrl:function(){return i()[3]},setTrackerUrl:function(a7){M=a7},setSiteId:function(a7){aV=a7},setCustomData:function(a7,a8){if(n(a7)){T=a7}else{if(!T){T=[]}T[a7]=a8}},getCustomData:function(){return T},setCustomVariable:function(a8,a7,bb,a9){var ba;if(!b(a9)){a9="visit"}if(a8>0){ba=[a7.slice(0,aY),bb.slice(0,aY)];if(a9==="visit"||a9===2){L();P[a8]=ba}else{if(a9==="page"||a9===3){av[a8]=ba}}}},getCustomVariable:function(a8,a9){var a7;if(!b(a9)){a9="visit"}if(a9==="page"||a9===3){a7=av[a8]}else{if(a9==="visit"||a9===2){L();a7=P[a8]}}if(!b(a7)||(a7&&a7[0]==="")){return false}return a7},deleteCustomVariable:function(a7,a8){if(this.getCustomVariable(a7,a8)){this.setCustomVariable(a7,"","",a8)}},setLinkTrackingTimer:function(a7){aA=a7
},setDownloadExtensions:function(a7){ai=a7},addDownloadExtensions:function(a7){ai+="|"+a7},setDomains:function(a7){aB=q(a7)?[a7]:a7;aB.push(aR)},setIgnoreClasses:function(a7){Q=q(a7)?[a7]:a7},setRequestMethod:function(a7){aD=a7||"GET"},setReferrerUrl:function(a7){aF=a7},setCustomUrl:function(a7){ap=aQ(a4,a7)},setDocumentTitle:function(a7){ag=a7},setDownloadClasses:function(a7){au=q(a7)?[a7]:a7},setLinkClasses:function(a7){ab=q(a7)?[a7]:a7},setCampaignNameKey:function(a7){ak=q(a7)?[a7]:a7},setCampaignKeywordKey:function(a7){af=q(a7)?[a7]:a7},discardHashTag:function(a7){S=a7},setCookieNamePrefix:function(a7){a2=a7;P=X()},setCookieDomain:function(a7){V=l(a7);ax()},setCookiePath:function(a7){a3=a7;ax()},setVisitorCookieTimeout:function(a7){Z=a7*1000},setSessionCookieTimeout:function(a7){aa=a7*1000},setReferralCookieTimeout:function(a7){aq=a7*1000},setConversionAttributionFirstReferrer:function(a7){ao=a7},setDoNotTrack:function(a7){aX=a7&&j.doNotTrack},addListener:function(a8,a7){aJ(a8,a7)},enableLinkTracking:function(a7){if(h){ar(a7)
}else{C.push(function(){ar(a7)})}},setHeartBeatTimer:function(a9,a8){var a7=new Date();R=a7.getTime()+a9*1000;ad=a8*1000},killFrame:function(){if(I.location!==I.top.location){I.top.location=I.location}},redirectFile:function(a7){if(I.location.protocol==="file:"){I.location=a7}},trackGoal:function(a7,a9,a8){ay(a7,a9,a8)},trackLink:function(a8,a7,a9){aT(a8,a7,a9)},trackPageView:function(a7,a8){at(a7,a8)},setEcommerceView:function(ba,a7,a9,a8){if(!b(a9)||!a9.length){a9=""}av[5]=["_pkc",a9];if(b(a8)&&String(a8).length){av[2]=["_pkp",a8]}if((!b(ba)||!ba.length)&&(!b(a7)||!a7.length)){return}if(b(ba)&&ba.length){av[3]=["_pks",ba]}if(!b(a7)||!a7.length){a7=""}av[4]=["_pkn",a7]},addEcommerceItem:function(bb,a7,a9,a8,ba){if(bb.length){aL[bb]=[bb,a7,a9,a8,ba]}},trackEcommerceOrder:function(a7,bb,ba,a9,a8,bc){aO(a7,bb,ba,a9,a8,bc)},trackEcommerceCartUpdate:function(a7){a1(a7)}}}function c(){return{push:z}}t(I,"beforeunload",B,false);x();H=new F();for(D=0;D<_paq.length;D++){z(_paq[D])}_paq=new c();
return{addPlugin:function(i,K){w[i]=K},getTracker:function(i,K){return new F(i,K)},getAsyncTracker:function(){return H},sha1:function(i){return u(i)}}}()),piwik_track,piwik_log=function(b,f,d,g){function a(h){try{return eval("piwik_"+h)}catch(i){}return}var c,e=Piwik.getTracker(d,f);e.setDocumentTitle(b);e.setCustomData(g);c=a("tracker_pause");if(c){e.setLinkTrackingTimer(c)}c=a("download_extensions");if(c){e.setDownloadExtensions(c)}c=a("hosts_alias");if(c){e.setDomains(c)}c=a("ignore_classes");if(c){e.setIgnoreClasses(c)}e.trackPageView();if(a("install_tracker")){piwik_track=function(i,k,j,h){e.setSiteId(k);e.setTrackerUrl(j);e.trackLink(i,h)};e.enableLinkTracking()}};