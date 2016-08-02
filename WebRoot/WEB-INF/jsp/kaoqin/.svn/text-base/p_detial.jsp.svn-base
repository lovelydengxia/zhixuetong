<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>考勤详情</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			body{font-size: 12px;}
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">考勤详情</h1>
		</header>
	<!--content-->
		<div class="infoBox" style="margin-top: 50px;padding-top: 10px;height: auto;">
		 	<div class="kaoqingBox">
		 		<div class="kqBanner unnormol">
		 			<span style="margin-left: 10px;">时间：<fmt:formatDate value="${kaoqin.starttime}" pattern="yyyy-MM-dd HH:mm"/></span>
		 			<span class="kqRight"><c:if test="${kaoqin.status=='1'}">迟到</c:if>
		 			<c:if test="${kaoqin.status=='0'}">正常</c:if>
		 			</span>
		 			
		 		</div>
		 		<div  class="kqPic1" >
		 		<span>${student.name}于${kaoqin.time}出入了校门</span>
		 		</div>
		 		<div class="kqPic1">
		 			<img src="<%=basePath%>kaoqin/${kaoqin.images}" />
		 		</div>
		 	</div>
		 	   
		
		 	
		
		 	
		</div>
	</body>
</html>
