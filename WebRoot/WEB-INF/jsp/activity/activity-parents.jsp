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
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" onclick="clicked()" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">活动</h1>
		</header>
		<!--person info-->
		<div class="infoBox" style="margin-top: 50px;" id="activity">
		 	
		 	</div>
	</body>
	</body>
	<script type="text/javascript">

	$.ajax({
	url:"<%=basePath%>article/getActivityParents.html",
		type:"post",
		dataType:"json",
		async:false,
		success:function(list){
		for(var i=0;i<list.length;i++){
		$("#activity").append('<div class="activeBox"><img src="<%=basePath%>img/1.jpg" /><div class="activeInfo"><h4><a href="article/getActivityParentsDetails.html?id='+list[i].id+'">'+list[i].title+'</a></h4><p>'+list[i].context+'</p><span class="logTime">'+list[i].subTime+'</span></div>');
		}
		}	
	});

	</script>
</html>

