<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
Account account = (Account)session.getAttribute("user");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
    <style type="text/css">
    	.mui-btn-success{
    		padding: 2px 15px;
    	}
    	
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="mui-icon " href="<%=basePath%>leave/getP.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">详情</h1>
		<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>	
	</header>
	<div class="mui-content">
		<ul class="text-center m-top-25">
			<li>
				提交成功！
			</li>
			<li>
				申请结果将在我的请假中查看
			</li>
		</ul>
		
		<div class="p-x-15 m-top-5 text-center">
			<a href="<%=basePath%>leave/getP.html" class="mui-btn mui-btn-success mui-btn-outlined">我的请假</a>
		</div>

		
		
	</div>
</body>
</html>