<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>/js/mui.min.js"></script>
    <link href="<%=basePath%>/css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/style.css"/>
    <style type="text/css">
    	.table{
    		width: 99%;
    		border: none; 
    		margin-top: 10px;   		
    	}
    	.table th,.table td{
    		width: 33%;
    		text-align: center;
    		padding: 8px 0;
    		font-size: 0.8em;
    		border-bottom: 1px solid #eee;
    	}
    	
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class=" mui-icon " href="<%=basePath%>grade/turnparent.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">作业</h1>
		
	</header>
	<div class="mui-content">
	    <table class="table">
	    	<tr>
	    		<th>科目</th>
	    		<th>日期</th>
	    		<th>详情</th>
	    	</tr>
	    	<s:forEach  items="${lists }" var="h">
	    	
	    	<tr>
	    		<td>${h.subid}</td>
	    		<td>${h.deadline}</td>
	    		<td><a href="<%=basePath%>work/hwdetailpar.html?id=${h.id}">查看</a></td>
	    	</tr>
	    	</s:forEach>
	    </table>
	</div>
	
</body>
</html>
