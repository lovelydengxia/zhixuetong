<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>教师个人信息</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before,
			.mui-icon-left-nav:before {
				content: none;
			}
			.form-control {width: 100px;display: inline;}
			select {border: 1px solid darkgray!important;padding: 2px 10px;border-radius: 5px;}
		</style>
	</head>

	<body>
		<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>grade/turn.html"><img class="back" src="<%=basePath%>img/back.png"/></a>
			<h1 id="title" class="mui-title">个人信息</h1>
		</header>
		<!--person info-->
		<div class="infoBox userB" style="margin-top: 45px; padding-top: 5px;">
			<div class="text-center"><img src="${user.img }" width="80" height="80" id="img" onclick="changeImg()"/> </div>
	
		</div>
		<!--chengji  content-->
		<div class="contentPerson">
			<div class="bannerP">基本信息</div>
			<table>
				<tr>
					<td width="20%">昵称</td>
					<td width="80%">${teacher.nickname }</td>
				</tr>
				<tr>
					<td>名称</td>
					<td>${teacher.name }</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>${teacher.sex }</td>
				</tr>
				<tr>
					<td>出生日期</td>
					<td>${teacher.csrq }</td>
				</tr>
				<tr>
					<td>籍贯</td>
					<td>${teacher.jg }</td>
				</tr>
			</table>
			<div class="bannerP">其它</div>
			<table>
			<tr>
					<td>手机</td>
					<td>${teacher.phone }</td>
				</tr>
				<tr>
					<td>QQ</td>
					<td>${teacher.qq }</td>
				</tr>
				<tr>
					<td width="20%">邮箱</td>
					<td width="80%">${teacher.email }</td>
				</tr>
				
				
				<!-- <tr>
					<td>生日</td>
					<td>1212.12.03</td>
				</tr> -->
			</table>
		</div>
		
		<input type="file" value="sdgsdg" id="img_input" hidden="hidden"/>
	</body>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			var input = document.getElementById("img_input");
			if (typeof(FileReader) === 'undefined') {
				alert( "抱歉，你的设备不支持 FileReader，请使用现代设备操作！");
				input.setAttribute('disabled', 'disabled');
			} else {
				input.addEventListener('change', readFile, false);
			}
		}
		
		function readFile() {
			var file = this.files[0];
			//这里我们判断下类型如果不是图片就返回 去掉就可以上传任意文件 
			if (!/image\/\w+/.test(file.type)) {
				alert("请确保文件为图像类型");
				return false;
			}
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e) {
				sendChangeImg(this.result);
				
			}
		}
		
		function sendChangeImg(e){
			$.post('<%=basePath%>Account/changeImg.html',{'img':e},function(){
				$('#img').attr('src',e);
			})
		}
		
		function changeImg(){
			$('#img_input').click();
		}
	</script>
</html>