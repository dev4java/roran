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
<script src="/static/js/jquery-1.7.1.min.js"></script>
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
												<input type="file" name="UpLoadFile" id="image_file" onchange="fileSelected(image_file);" />
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
	 $.ajaxFileUpload({  
            url:'/file/upload',  
            secureuri:false,  
            fileElementId:'image_file',//file标签的id  
            dataType: 'json',//返回数据的类型  
            data:{name:'logan'},//一同上传的数据  
            success: function (data, status) {
                var obj = jQuery.parseJSON(data);  
                $("#upload").attr("src", "../image/"+obj.fileName);  
      
                if(typeof(data.error) != 'undefined') {  
                    if(data.error != '') {  
                        alert(data.error);  
                    } else {  
                        alert(data.msg);  
                    }  
                }  
            },  
            error: function (data, status, e) {  
                alert(e);  
            }  
        });
	}
</script>
</body>
</html>