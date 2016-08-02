<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%@ include file="../taglibs.jsp"%>
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
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
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
		<a class="mui-icon " href="<%=basePath%>grade/turnparent.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">我的请假</h1>
		<h1 id="title" class="mui-title leftTitle"><a href="<%=basePath%>leave/getAddLeave.html">请假</a></h1>
		<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
	</header>
	<div class="mui-content">
	    <table class="table" id="xxx">
	    	<!-- <tr>
	    		<th>学生姓名</th>
	    		<th>申请结果</th>
	    		<th>详情</th>
	    	</tr>
	    	<tr>
	    		<td>语文</td>
	    		<td>正在处理中</td>
	    		<td><a href="#">查看</a></td>
	    	</tr>
	    	<tr>
	    		<td>语文</td>
	    		<td>申请通过</td>
	    		<td><a href="#">查看</a></td>
	    	</tr>
	    	<tr>
	    		<td>语文</td>
	    		<td>2016-5-14</td>
	    		<td>查看</a></td>
	    	</tr> -->
	    </table>
	</div>
	
</body>
<script type="text/javascript">
	$(function(){
		var accountID = $("#accountID").val();
		$.ajax({
			url:"<%=basePath%>leave/findAllByAccountID.html",
			type:"post",
			data:{accountID:accountID},
			dataType:"json",
			async:false,
			success:function(data){
			/* debugger; */
				$("#xxx").html("");
				if(data.length != 0){
					var option = "<tr><th>学生姓名</th><th>申请时间</th><th>申请结果</th></tr>";
					for(var i = 0 ;i<data.length ; i++){
						if(data[i].applyStatus == 0 && data[i].sfcx == 0){
							option += "<tr data-id='"+data[i].id+"' onclick='trOnclick(this)'><td>"+data[i].studentName+"</td><td>"+data[i].applyTime+","+data[i].leaveTime+"</td><td>正在处理中</td></tr>";
						}
						if(data[i].applyStatus == 1 && data[i].sfcx == 0){
							option += "<tr data-id='"+data[i].id+"' onclick='trOnclick(this)'><td>"+data[i].studentName+"</td><td>"+data[i].applyTime+","+data[i].leaveTime+"</td><td>申请通过</td></tr>";
						}
						if(data[i].applyStatus == 2 && data[i].sfcx == 0){
							option += "<tr data-id='"+data[i].id+"' onclick='trOnclick(this)'><td>"+data[i].studentName+"</td><td>"+data[i].applyTime+","+data[i].leaveTime+"</td><td>申请未通过</td></tr>";
						}
						if(data[i].applyStatus == 0 && data[i].sfcx == 1){
							option += "<tr data-id='"+data[i].id+"' onclick='trOnclick(this)'><td>"+data[i].studentName+"</td><td>"+data[i].applyTime+","+data[i].leaveTime+"</td><td>已撤销</td></tr>";
						}
					}
				}
				if(data.length == 0){
					var option = "<tr><th></th><th>你当前还没有请假信息！</th><th></th></tr>";
				}
				$("#xxx").html(option);
			},
		});
	});
	
	function trOnclick(e){
		window.location.href="<%=basePath%>leave/getById.html?id="+$(e).data("id");
	}
</script>
</html>