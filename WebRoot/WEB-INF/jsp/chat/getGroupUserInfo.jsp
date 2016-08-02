<%@page import="com.alibaba.fastjson.JSON"%>
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
			.friend-group{background: #fff;padding: 5px;}
	    	.friend-group li{width: 60px;height: 60px;display: inline-block; border-radius: 50%; margin:10px 15px;text-align: center;}
	    	.friend-group li img{width: 40px;height: 40px;border-radius: 50%;}
	    	.friend-group p{text-align: center;white-space:nowrap;  overflow: hidden;}
	    	h4{font-weight: 500;padding:10px 5px;}
	    	#name{width: 200px; margin-top: 5px; border: 1px solid #eee;}
    		.group-name{margin-left: 10px;}
		</style>
	</head>

	<body>
		<!------header------->
		<header class="mui-bar mui-bar-nav" id="header">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" onclick="clicked()" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">${name }</h1>
		</header>
		<!--person info-->
		<div class="mui-content">
		<%--<div class="group-name">
		<label>群组名称：</label> <input  type="text" name="name" id="name" value="多人聊天群">
		</div>
			--%><h4>群成员信息</h4>
			<ul id="users" class="friend-group">
				<%
					List<Map> li =(List<Map>) request.getAttribute("li");
					StringBuffer sb = new StringBuffer();
					for (Map map : li) {
						if (map!=null) {
							sb.append("<li><img  src=\"");
							if (map.get("img")!=null) {
								sb.append(new String(((byte[])map.get("img"))));
							}else{
								sb.append(basePath);
								sb.append("img/user_head.png");
							}
							sb.append("\"><p>");
							sb.append(map.get("nickname"));
							sb.append("</p></li>");
						}
					}
				%>
				<%=sb %>
			</ul>
		</div>
	</body>
</html>
