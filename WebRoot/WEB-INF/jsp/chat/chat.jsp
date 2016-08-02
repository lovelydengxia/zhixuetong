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
		<!------header------->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" onclick="clicked()" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">${name }</h1>
		</header>
		<!--person info-->
		<div class="infoBox" style="margin-top: 50px;" id="activity">
		 	<iframe id="iframe" frameborder="0" scrolling="no" height="700px" width="100%"></iframe>
	 	</div>
	</body>
	
	<script type="text/javascript">
			$("#iframe").height($(window).height()-50);
			var type = ${type};
			var str = null;
			if(type==-1){
				str = "http://222.19.48.112:10086/?gid=${id }&loginid=${user.id }";
				var ss1 = '<h1 id="title" class="mui-title leftTitle"><a href="<%=basePath%>chat/getGroupUserInfo.html?name='
				var ss2 =encodeURI(encodeURI("${name}"));
				var ss3 = '&id=${id }">查看群组成员</a></h1>';
				$("#header").append(ss1+ss2+ss3);
			}
			else{
				str = "http://222.19.48.112:10086/?to=${id }&loginid=${user.id }";
			}
			$("#iframe").attr("src",str)
		</script>
</html>