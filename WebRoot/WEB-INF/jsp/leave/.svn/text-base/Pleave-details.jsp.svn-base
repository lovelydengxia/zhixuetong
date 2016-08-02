<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%@ include file="../taglibs.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script src="<%=basePath%>layer/layer.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
    <style type="text/css">

    	.table{
    		width: 100%;
    		border: none; 
    		margin-top: 10px;   		
    	}

    	.table label,.homework label{
    		display: inline-block;
    		width: 70px;
    		text-align: right;
    		
    	}
    	.table span{padding-left: 10px;}
    	.homework li{
    		padding: 5px 0;
    	}
    	.homework p{
    		padding-left: 20px;
    	}
    	label{
    		font-weight: 600;
    	}
    	.mui-input-row label{
    		font-size: 1.3em;
    		text-align: right;
    	}
    	.mui-input-row{
    		border-bottom: 1px solid #eee;
    	}
    	textarea {
    		border: none;
    		height: 100px;
    	}
    	.mui-btn{
    		padding: 5px 20px;
    	}
    	.mui-btn-warning{
    		
    		margin-right : 10px;
    	}
    	.leave-list{
    		border-top: 1px solid #eee;
    	}
    	.leave-list li{
    		border-bottom: 1px solid #eee;
    		padding:  5px;
    	}
    	.leave-cont{
    		padding-left: 20px;
    		text-indent: 2em;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class="mui-icon " href="<%=basePath%>leave/getP.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">请假详情</h1>
		<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>	
	</header>
	<div class="mui-content">
		<ul class="table">
			<li>
				<label>申请状态:</label>
				<span>
					<c:if test="${leave.applyStatus == 0 }">等待处理中</c:if>
					<c:if test="${leave.applyStatus == 1 }">已同意</c:if>
					<c:if test="${leave.applyStatus == 2 }">不同意</c:if>
				</span>
			</li>
			<li>
				<label>学生姓名:</label>
				<span>${leave.studentName }</span>
			</li>
			<li>
				<label>班级:</label>
				<span>${leave.className }</span>
			</li>
			<li>
				<label>请假时间:</label>
				<span>${fn:substring(leave.startTime, 0, 16)}到${fn:substring(leave.endTime, 0, 16)}</span>
			</li>
			<li>
				<label>家长电话:</label>
				<span>${leave.phone }</span>
			</li>
			<li>
				<label>申请事由:</label>
				<p class="leave-cont">
					 ${leave.reasons }
				</p>
			</li>
			<c:if test="${leave.applyStatus == 2 }">
				<li>
					<label>不同意请假原因:</label>
					<textarea>
						${leave.mark }
					</textarea>
				</li>
			</c:if>
			
		</ul>
		
		<div class="p-x-15 m-top-25" id="shi-fou-che-xiao">
			<!-- <button class="mui-btn mui-btn-block mui-btn-success mui-btn-outlined">撤销请假</button>
			<button class="mui-btn mui-btn-block mui-btn-grey">撤销请假</button> -->
		</div>

		
		
	</div>
</body>
<script type="text/javascript">
	$(function(){
		if(${leave.sfcx == 0} && ${leave.applyStatus == 0}){
			$("#shi-fou-che-xiao").html("<a id='shi-fou-che-xiao-click' href='<%=basePath%>leave/backOut.html?id=${leave.id}' class='mui-btn mui-btn-block mui-btn-success mui-btn-outlined'>撤销请假</a>");
		}
		<%-- if(${leave.sfcx == 0} && ${leave.applyStatus == 1}){
			$("#shi-fou-che-xiao").html("<a href='<%=basePath%>leave/deleteP.html?id=${leave.id}' class='mui-btn mui-btn-block mui-btn-success mui-btn-outlined'>删除</a>");
		} --%>
		if(${leave.sfcx == 0} && ${leave.applyStatus == 1}){
			$("#shi-fou-che-xiao").html("<button class='mui-btn mui-btn-block mui-btn-grey'>撤销请假</button>");
		}
		if(${leave.sfcx == 1} || ${leave.applyStatus == 2} ){
			$("#shi-fou-che-xiao").html("<a href='<%=basePath%>leave/deleteP.html?id=${leave.id}' class='mui-btn mui-btn-block mui-btn-success mui-btn-outlined'>删除</a>");
			$("#shi-fou-che-xiao").html("<a href='<%=basePath%>leave/againApplication.html?id=${leave.id}' class='mui-btn mui-btn-block mui-btn-success mui-btn-outlined'>再次申请</a>");
		}
	});
	
	$("#shi-fou-che-xiao-click").click(function(){
		layer.confirm('确认要撤销此条数据吗？', {
	        title :['系统提示','font-weight: 600;'],
            btn: ['是','否'] 
        }, function(){
        
           layer.msg('撤销成功！', {icon: 1});
           $("#addForm").submit();
          window.location.href("<%=basePath%>leave/backOut.html?id=${leave.id}");
        });
	});
	
</script>
</html>