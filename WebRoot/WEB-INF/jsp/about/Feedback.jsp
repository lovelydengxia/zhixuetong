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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet"/>
	<link href="<%=basePath%>css/style.css" rel="stylesheet" />
	<style type="text/css">
		.content{margin-top: 55px;}
		.content textarea{
			border-radius: 0;
			border-bottom: 1px solid #dedede;
			border-top: 1px solid #dedede;
			background: #fff;
			min-height: 100px;
			font-size: 1.2em;
			
		}
		.content .mui-input-row{
			font-size: 1.2em;
			border-radius: 0;
			border-bottom: 1px solid #dedede;
			border-top: 1px solid #dedede;
			margin-top: -5px;
			background: #fff;
		}
	</style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
			<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-action-back mui-icon " href="<%=basePath%>About/index.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">意见反馈</h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
			<h1 class="mui-title leftTitle">提交</h1>
		</header>
		<div class="content">
		    <textarea placeholder="请输入反馈意见，我们将不断为您改进"></textarea>
		    <input type="text" placeholder="你的邮箱或手机号(必填)" class="mui-input-row" />
		</div>
</body>
</html>