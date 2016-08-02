<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../taglibs.jsp"%>
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
		<title>活动</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			body {background-color: #fff;}
			.mui-icon-back:before,
			.mui-icon-left-nav:before {content: none;}
			.form-control {width: 100px;display: inline;}
		</style>
			
	</head>

	<body>
			<header class="mui-bar mui-bar-nav" >
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" onclick="clicked()" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">支付密码</h1>
		</header>
		<!--person info-->
		<div id="pay2" class="mui-popover mui-popover-action mui-popover-bottom">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					<a href="#pay2" class="right"><b class="mui-icon mui-icon-closeempty"></b></a>
					<a href="#pay" class="left"><b class="mui-icon mui-icon-arrowthinleft"></b></a>
				</li>
				<li class="mui-table-view-cell mui-input-row">
					 <label>支付密码</label>
		        	<input type="text" maxlength="6" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" class="pay-pwd" placeholder="请输入支付密码">
				</li>
				<li class="mui-table-view-cell ">
					<a href="#pay2"><button class="dd">确定支付</button></a>
				</li>
			</ul>
		</div>
	</body>

</html>