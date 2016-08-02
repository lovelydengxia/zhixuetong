<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>修改密码</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" src="<%=basePath%>js/location.js" ></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
			function T_index(){
				window.location.href="login/get.html"
			};
			var flag = ${user.zhtype};
			function toset(){
			if(flag=='2'){
				window.location.href="<%=basePath%>Account/getsettea.html";
			}
			else{
				window.location.href="<%=basePath%>Account/getsetpar.html";
			}
		}
		</script>
		<style type="text/css">
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.mui-content-padded {width: 90%;margin-left: 5%;position: absolute;bottom:80px;background: #fff;height:45px}
			.mui-btn-primary { background: #11C036; border: none;padding: 8px 0px;position: absolute;height: 45px;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<button class=" mui-icon mui-icon-left-nav mui-pull-left" style="background: none;border:none;" onclick="toset()"><img class="back" src="img/back.png" /></button>
			<h1 id="title" class="mui-title">修改密码</h1>
		</header>
	<!--form-->
		<div class="role note">
			<h3 class="notice"><img src="img/clock.png" />&nbsp;&nbsp;修改支付密码成功</h3>
		</div>
	<!--input chengji-->	
		<div class="mui-content-padded" onclick="toset()">
				<button class="mui-btn mui-btn-block mui-btn-primary">确定</button>
		</div>
	</body>
</html>