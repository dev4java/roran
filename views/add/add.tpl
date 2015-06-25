<!DOCTYPE HTML>
<html>
<head>
<title> story & time & you </title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href="/static/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="/static/css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="/static/css/prettyPhoto.css">
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/ajaxfileupload.js"></script>
</head>
<body>
<div class="contact" id="contact">
		<h3 class="heading">Contact</h3>
		<p class="desc">we would really love to hear from you</p>
		<h6> </h6>
		<div class="contact-bg">
				<div class="tool_tip">
					<a href="#"><img src="/static/img/logo1.png"/></a>
				</div>
			
				<div class="wrap">
					<div class="form">
					<div class="contact-form">
							<form method="post" action="contact-post.html">
								 		 <div>
									    	<span><label>Name</label></span>
									    	<span><input id="uname" name="userName" type="text" class="textbox"></span>
									    </div>
									    <div>
									    	<span><label>Title</label></span>
									    	<span><input id="utitle" name="Title" type="text" class="textbox"></span>
									    </div>
									    <div>
									     	<div><label for="image_file">Please select image file</label></div>
											<div>
												<input type="file" name="image_file" id="image_file" onchange="fileSelected(image_file);" />
												<input type="hidden" id="uimgurl" />
											</div>
									    </div>
									    <div>
									    	<span><label>Content</label></span>
									    	<span><textarea id="umsg" name="userMsg"> </textarea></span>
									    </div>
									   <div>
									   		<span><input type="submit" value="Send" onClick="sub();"></span>
									  </div>
								</form>			
					</div>
				<div class="clear"> </div>
				</div>
			</div>
		</div>
	</div>
	<script>
	function fileSelected(elementId){
	alert("ok");
	alert($('#'+elementId).val());  
    	$.ajaxFileUpload(  
            {  
                url:'/file/upload?dataId='+$('#ID').val()+'&tableName='+tabName,//用于文件上传的服务器端请求地址  
                secureuri:false,//一般设置为false  
                fileElementId:elementId,//文件上传空间的id属性  <input type="file" id="file" name="file" />  
                dataType: 'json',//返回值类型 一般设置为json  
                success: function (data)  //服务器成功响应处理函数  
                {     
                    if(data.result == "success"){  
                        var node = "<div id='"+data.fileId+"'><label ><font size='2'>"+data.fileName+"</font></label><a  href='javascript:void(0)' onclick=removeFile('"+data.fileId+"')><font size='2' style='cursor:pointer;'>删除</font></a></div>";  
                        $('#fileList').append(node);  
                        $('#ID').val(data.recordId);  
                        $('#fileList').show();  
                        $.messager.show({title:'操作提示',msg:'上传成功！',showType:'show'});  
                    }  
                },  
                error: function (data, status, e)//服务器响应失败处理函数  
                {  
                   $.messager.show({title:'操作提示',msg:'上传失败！',showType:'show'});  
                }  
            }  
        )
}
</script>
</body>
</html>