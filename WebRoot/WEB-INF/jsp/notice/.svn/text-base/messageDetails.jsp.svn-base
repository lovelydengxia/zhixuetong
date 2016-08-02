<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>通知详情</title>
		<script src="<%=basePath %>js/mui.min.js"></script>
		<link href="<%=basePath %>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath %>css/style.css" rel="stylesheet" />
		<link rel="<%=basePath %>stylesheet" href="css/basic.css" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			body {background-color: #fff;}
			.mui-icon-back:before,
			.mui-icon-left-nav:before {content: none;}
			.form-control {width: 100px;display: inline;}
			.leftd {margin-top:-40px;padding-left: 50px;}
			div.speech,div.speech.left {background: none;}
			div.speech.left {border: 1px solid #FABF52;box-shadow: none;width: 85%;}
			div.speech.left:after {border-color:transparent #fff}
			div.speech.left:before {border-color:transparent #FABF52}
		</style>
	</head>

	<body>
		<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath %>img/back.png" /></a>
			<h1 id="title" class="mui-title">通知详情</h1>
		</header>
		<!--person info-->
		<div class="infoBox" style="margin-top: 70px;">
			<div class="messageBox">
					<img src="<%=basePath %>img/mesg.png" />
					<div class="leftd">
	              		<div class="speech left" >
	              		${notice.title }&nbsp&nbsp&nbsp&nbsp 作者：${notice.author }</br>
	              		${notice.context }
						</div>
					</div>
			</div>
		</div>
	</body>
</html>