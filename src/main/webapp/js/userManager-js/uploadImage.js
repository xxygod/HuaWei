/**
 * 评论上传图片
 */
ec.pkg("ec.member.remark");
ec.load("ajax");
ec.load("ec.box", {
	loadType : "lazy"
});

var maxNum = 6;
var ua = window.navigator.userAgent;
/**
 * 评价:上传图片
 */

ec.member.remark.checkUpload=function(thix){
	if($(thix).hasClass("disabeld")){
		ec.remark.common.showErrorMsg("您选择的图片还未上传完成，请稍后", 1);
		return;
	}
}
ec.member.remark.uploadImg = function(thix) {
	// 商品skucode
	var skucode = ec.encodeForHTML($(thix).attr('skucode'));

	$("#remark-add-image-"+skucode).addClass("disabeld");
	
	// 判断文件数量是否到达最大值
	var fileSize = parseInt($(thix).attr("file_size"));
	if (fileSize == maxNum) {
		ec.remark.common.showErrorMsg("您最多只可上传" + maxNum + "张图片", 1);
		document.getElementById("formUploadtmp-"+skucode).reset();
		$("#remark-add-image-"+skucode).removeClass("disabeld");
		return;
	}
	// 取得索引下标
	var index = parseInt($(thix).attr("file_index"));
	
	var path = $(thix).attr("value");
	var splitorIndex = path.lastIndexOf("\.");
	var fileName = path;
	if (splitorIndex > 0) {
		fileName = path.substring(splitorIndex + 1);
	}
	if(null != fileName)
	{
		fileName = fileName.toUpperCase();
	}
	//校验文件名
	if (fileName != "PNG" && fileName != "JPG" && fileName != "JPEG") {
		ec.remark.common.showErrorMsg("您上传的图片格式有误，请重新上传", 1);
		document.getElementById("formUploadtmp-"+skucode).reset();
		$("#remark-add-image-"+skucode).removeClass("disabeld");
		return;
	}
	//ie版本不支持，过滤掉ie版本
	var maxsize = 5 * 1024 * 1024;
	var browserCfg = false;
	var ua = window.navigator.userAgent;
	if (ua.indexOf("MSIE") < 1) {
		var file = $(thix).attr("files")[0];
		var size = file.fileSize || file.size;
		if (size > maxsize) {
			ec.remark.common.showErrorMsg("您上传的单张图片不能超过5M，请重新上传", 1);
			document.getElementById("formUploadtmp-"+skucode).reset();
			$("#remark-add-image-"+skucode).removeClass("disabeld");
			return false;
		}
	}
	
	
//	var fileObj = $("#remarkUploadImage-" + skucode);
//	var obj = fileObj[0];
//	var val = obj.value, html = '', i = 0;
//	var s = val.lastIndexOf("\.");
//	var name = val;
//	if (s > 0) {
//		name = val.substring(s + 1);
//	} else {
//		return;
//	}
//
//	if (null != name) {
//		name = name.toUpperCase();
//	}
//
//	if (name != "PNG" && name != "JPG" && name != "JPEG") {
//		ec.remark.common.showErrorMsg("您上传的图片格式有误，请重新上传", 1);
//		document.getElementById("formUploadtmp").reset();
//		$("#remark-add-image-"+skucode).removeClass("disabeld");
//		return;
//	}
//
//	var maxsize = 5 * 1024 * 1024;
//	var browserCfg = false;
//	var ua = window.navigator.userAgent;
//	if (ua.indexOf("MSIE") < 1) {
//		var size = obj.files[0].fileSize || obj.files[0].size;
//		if (size > maxsize) {
//			ec.remark.common.showErrorMsg("您上传的单张图片不能超过5M，请重新上传", 1);
//			document.getElementById("formUploadtmp").reset();
//			$("#remark-add-image-"+skucode).removeClass("disabeld");
//			return false;
//		}
//	}
	
	

	max = index + 1;
	var html = [];
	html.push('<a href="javascript:;" ' + ec.remark.common.privewMin() + ' id="add-remark-image-' + skucode + '-' + index + '" >	');
	html.push('<span class="hide" skucode="' + skucode + '" pic_index="' + index + '">删除</span>');
	html.push('<em>上传中</em>');
	html.push('</a>');

	// 大于6张时，隐藏添加
	if (fileSize >= maxNum) {
		$("#remark-add-image-" + skucode).hide();
	}

	// 添加上传中效果
	$('#remark-content-images-' + skucode).append(html.join(""));
	ec.member.remark.bindPreviewEvent($('#add-remark-image-' + skucode+'-'+index));
	
	//截取rms返回
	function getRmsReturnJson(html){
		reg = /<body>([\s\S]+)<\/body>/gi
		var result;
		if ((result = reg.exec(html)) != null) {
		   return result[1];
		}
		try {
	        JSON.parse(html);
	    } catch (e) {
	        return html;
	    }
	}
	
	//$(thix).attr("disabled","disabled");
	//ajax Form 提交，rms增加ducoment.domain配置
	document.domain = 'vmall.com';
	var ajaxFormOption = {
		type : "post",
		contentType:"multipart/form-data",
		data : $("#formUploadtmp-"+skucode).serialize(),
		url : domainRms + "/comment/uploadImage.json?userClient=1",
		success : function(html) {
			var jsonStr = getRmsReturnJson(html);
			$("#remarkUploadImage-" + skucode).attr("file_index",index+1);
			$("#remarkUploadImage-" + skucode).attr("file_size",fileSize+1);
			ec.member.remark.appendImage(JSON.parse(jsonStr), skucode, index);
			document.getElementById("formUploadtmp-"+skucode).reset();
			$("#remark-add-image-"+skucode).removeClass("disabeld");
			document.domain = 'www.vmall.com';
		},
		error : function(json) {
			$('#add-remark-image-' + skucode+'-'+index).remove();
			//$("#file-image-" + n).remove();
			$("#remarkUploadImage-" + skucode).attr("file_index",index);
			$("#remarkUploadImage-" + skucode).attr("file_size",fileSize);
			ec.remark.common.showErrorMsg("上传图片失败，请稍后重试",1);
			document.getElementById("formUploadtmp-"+skucode).reset();
			$("#remark-add-image-"+skucode).removeClass("disabeld");
			document.domain = 'www.vmall.com';
		}
	};
	$("#formUploadtmp-"+skucode).ajaxSubmit(ajaxFormOption);
	
}

ec.member.remark.showLocalImg = function(fileSelector,picSrc,callback){
	var imgData = fileSelector.attr("value");
	if(ua.indexOf("MSIE") < 1){
		var file = fileSelector[0].files[0];
 		var picSrc = window.URL.createObjectURL(file);
        	callback(picSrc);
		//var reader = new FileReader()
	//	reader.readAsDataURL(file);
	 //   reader.onload = function(e) {
	  //      var src = e.target.result;
	   //     if(typeof(callback) == 'function'){
	    //      callback(src);
	     //   }
	   // }
	}else{
		var imgData = fileSelector.attr("value");
		callback(imgData);
	}
	
};
ec.member.remark.appendImage = function(rspData,skucode,index) {
	var currentTagName = '#add-remark-image-' + skucode + '-' + index;
	var processResult = ec.remark.result(rspData, true);
	if (processResult.result && rspData.data) {
		// 取得上成功后返回的完整URL
		var picUrl = rspData.data.small;
		var largeUrl = rspData.data.large;
		var fileSelector = $("#remarkUploadImage-" + skucode);
		var picSrc = undefined;
		ec.member.remark.showLocalImg(fileSelector, picSrc, function(base64) {
//			ec.member.remark.dealImage(base64, name,
//					function(picUrl) {
						// 显示删除按钮
						$(currentTagName).find("span").show();
						// 展示上传成功后的图片
						$(currentTagName).append('<img src="' + base64 + '" bigPic="' + base64 + '" class="smallPic">');
						// 上传成功后，记录图片返回的URL
						// var inputValue = $('<input type="hidden"
						// name="content-images-'+ skucode +'"
						// id="content-images-'+ skucode +'-'+ index +'"
						// value="'+ largeUrl +'">');
						// inputValue.appendTo($("#remark-content-images-" +
						// skucode));
//						$("#remark-content-images-" + skucode).append(
//								'<input type="hidden" name="content-images-' + skucode + '" id="content-images-' + skucode + '-' + index + '" value="' + largeUrl + '">');
						$(currentTagName).append(
								'<input type="hidden" name="content-images-' + skucode + '" id="content-images-' + skucode + '-' + index + '" value="' + largeUrl + '">');
						// 上传成功后删除em上传中的提示信息
						$(currentTagName).find("em").remove();
						// 更新索引下标
						fileSelector.attr("file_index", parseInt(index) + 1);
						// 取得已经上传的图片数量
						var fileSize = parseInt(fileSelector.attr("file_size"));
						// 更新文件数量
						fileSelector.attr("file_size", fileSize);
						var fileNum = 0;
						if (maxNum - fileSize > 0) {
							fileNum = maxNum - fileSize;
						}

						// 达到可上传的图片最大上限时,隐藏提示
						if (fileNum <= 0) {
							// $("#image-num-tips-" + skucode).hide();
							// 还可以上传的提示
							$('#image-uploaded-num-tips-file-' + skucode).html("");
							// 更新图片数量
							$('#image-num-uploaded-file-' + skucode).html("");
							// 更新已上传图片数量
							$('#image-num-max-' + skucode).html(maxNum);
							$("#remark-add-image-"+skucode).addClass("hide");
//							$("#remark-add-image-"+skucode).css("display","none");
							
						} else {
							// 更新提示
							$('#image-num-tips-max-file-' + skucode).html("已经上传");
							// 更新已上传图片数量
							$('#image-num-max-' + skucode).html(fileSize);
							// 还可以上传的提示
							$('#image-uploaded-num-tips-file-' + skucode).html("张，还能上传");
							// 更新图片数量
							$('#image-num-uploaded-file-' + skucode).html(fileNum + "&nbsp;");
							$("#remark-add-image-"+skucode).removeClass("hide");
						}
						if(ua.indexOf("MSIE") < 1 && picSrc!=undefined){
						        window.URL.revokeObjectURL(picSrc);
							
						}
//					});
		});
		
		return;
	} else {
		// 删除添加的节点信息
		$(currentTagName).remove();

		// 未登陆执行异步登陆
		if (processResult.code == "42003") {
			ec.account.loginName = "";
			// 登录
			ec.account.afterLogin(function() {

			});
		} else {
			// 展示提示信息
			ec.remark.common.showErrorMsg(processResult.msg, 1);
		}
		return;
	}
	return;

}


/**
 * 图片压缩，默认同比例压缩
 * 
 * @param {Object}
 *            path pc端传入的路径可以为相对路径，但是在移动端上必须传入的路径是照相图片储存的绝对路径
 * @param {Object}
 *            obj obj 对象 有 width， height， quality(0-1)
 * @param {Object}
 *            callback 回调函数有一个参数，base64的字符串数据
 * @author zhaiyu
 */    
ec.member.remark.dealImage = function(path, type, callback) {
  var img = new Image();
//设置图片跨域访问
  img.src = path;
  img.onload = function() {
      //默认按比例压缩    
      var w = this.width,
          h = this.height;
      //生成canvas    
      var canvas = document.createElement('canvas');
      var ctx = canvas.getContext('2d');
      if (!canvas.getContext){
    	  ec.remark.common.showErrorMsg("您当前的浏览器版本不支持上传图片，请升级到最新版本后再试一次吧",1);
      }else{
        var rate = ec.member.remark.getRateByImgSize(w,h);
        // 创建属性节点    
        canvas.setAttribute("width", parseInt(w * rate));
        canvas.setAttribute("height", parseInt(h * rate));
  
        ctx.drawImage(this, 0, 0, parseInt(w * rate), parseInt(h * rate));
        //rate值越小，所绘制出的图像越模糊 
        var base64 = canvas.toDataURL(type || 'image/jpeg', rate);
        // 回调函数返回base64的值    
        callback(base64);
      }
  };
}; 

/**  
 * 根据图片尺寸获取压缩比例
 * @param w{Number} 图片宽
 * @param h{Number} 图片高
 * @return rate{Number} 压缩比例
 * @author zhaiyu
 */  
ec.member.remark.getRateByImgSize = function(w,h){ 
  //默认图片比率0.5
  var rate = 0.5; 
  if(w>0 && h>0){
    if(w<=750 && h<1400){rate = 1}
    if(w>2000||h>2000){rate = 0.35}
    if(w>3500||h>3500){rate = 0.2}
    if(w>5000||h>5000){rate = 0.15}
    if(w>7000||h>7000){rate = 0.1}
    if(w>10000||h>10000){rate = 0.07}
  }
  return rate;
}
/**
 * 图片上传预览 preview
 * @param {Object} file文件对象
 * @param {Function} 回调
 * @return {null}
 */
ec.member.remark.preview = function(file,callback) {
    var reader = new FileReader()
    reader.onload = function(e) {
        var src = e.target.result;
        if(typeof(callback) == 'function'){
          callback(src);
        }
    }
    reader.readAsDataURL(file);
}
/**
 * 删除图片
 */
ec.member.remark.deleteImg = function(obj) {
	//取得skucode
	var skucode = obj.attr("skucode");
	//取得点击的第几张图片
	var pic_index = obj.attr("pic_index");
	//删除存储的值
	$("#content-images-" + skucode + "-" + pic_index).remove();
	//删除上伟 的图片节点
	obj.parent().remove();
	//取得文件总数量
//	var fileNum = parseInt($("#remarkUploadImage-" + skucode).attr("file_size"));
	var fileNum = $("#remark-content-images-"+skucode).find("a").length;
	fileNum = fileNum == undefined ? 0 : fileNum;
	if (fileNum > 0) {
		//更新文件数量
		$("#remarkUploadImage-" + skucode).attr("file_size", fileNum);
		
		//更新提示
		$('#image-num-tips-max-file-' + skucode).html("已经上传");
		//还可以上传的提示
		$('#image-uploaded-num-tips-file-' + skucode).html("张，还能上传");
		
		//更新已上传图片数量
		$('#image-num-max-' + skucode).html(fileNum);
		//更新还可上传图片数量
		$('#image-num-uploaded-file-' + skucode).html(((maxNum - fileNum)) + "&nbsp;");
	}
	
	if (fileNum == 0) {
		//更新提示
		$('#image-num-tips-max-file-' + skucode).html("最多图片数量");
		$("#remarkUploadImage-" + skucode).attr("file_size", fileNum);
		//更新已上传图片数量
		$('#image-num-max-' + skucode).html(maxNum);
		//还可以上传的提示
		$('#image-uploaded-num-tips-file-' + skucode).html("");
		//更新图片数量
		$('#image-num-uploaded-file-' + skucode).html("");
	} else {
		//展示图片上传提示信息
		$("#image-num-tips-" + skucode).show();
		//展示继续上传按钮
		$("#remark-add-image").show();
	}
};
