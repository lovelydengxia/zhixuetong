<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>关于</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before,
			.mui-icon-left-nav:before {content: none;}
			.form-control {width: 100px;display: inline;}
			select {border: 1px solid darkgray!important;padding: 2px 10px;border-radius: 5px;}
		    .contentPerson	table tr td {padding-top:0px;padding-bottom: 0px; font-size: 15px; padding-left: 40px;background-color: transparent;background-color: transparent;}
		    .contentPerson	table tr {background-color: #EEEEEE;height:40px;}
		    .mui-table-view{margin-top: 30px;}
		</style>
	</head>

	<body>
		<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>Account/getset.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">关于</h1>
		</header>
		<!--person info--> 	
		<div class="infoBox" style="margin-top: 65px;text-align: center;background-color: transparent;">
			<img class="aboutPic" src="<%=basePath%>img/u66.png" />
		</div>
		<!--chengji  content-->
		<div class="contentPerson">
			<div class="bannerP" style="font-size:1.1em;text-align: center;padding-left: 0px;background-color: transparent;">智学通</div>
			<ul class="mui-table-view">
			        <li class="mui-table-view-cell">			            
		          		 <span> 版本 1.0</span>        
			        </li>
			        <li class="mui-table-view-cell">
			            <a class="mui-navigate-right" href="<%=basePath%>About/introduction.html">
		                 	功能介绍
			            </a>
			        </li>
			        <%-- <li class="mui-table-view-cell">
			            <a class="mui-navigate-right" href="<%=basePath%>About/feedback.html">
		                	意见反馈
			            </a>
			        </li> --%>
			        <li class="mui-table-view-cell">
			            <a class="mui-navigate-right" href="<%=basePath%>About/agreement.html">
		                	免责协议
			            </a>
			        </li>
			    </ul>
		</div>
		<!--版权-->
		<div style="font-size: 0.8em" class="cpRight">
			四川龙腾古科技有限公司版权所有
		</div>
	</body>
</html>