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
			<h1 id="title" class="mui-title">活动详情</h1>
		</header>
		<!--person info-->
		
		<div class="mui-content">
		    <div>
		<img src="<%=basePath%>img/u37.png" width="100%" height="150" /> 
		    </div>
		    <input type="hidden" id="msg" name="msg" value="${article.activityStatus }" />
		    <div class="text-cont"> 
		    	<h4 class="text-center">${article.title}</h4>
		   		<p>
		   		${article.context }
		   		</p>
		   		<div class="active-fee">
		   			报名费用：￥${chargeItems.fare}<br/>
		   			活动时间：${fn:substring(article.activityStartTime, 0, 10)} 至 ${fn:substring(article.activityEndTime, 0, 10)}
		   		</div>
		   		<ul class="active-end text-right">
		   			<li>${article.activitySponsor}</li>
		   			<li>${fn:substring(article.subTime, 0, 10)}</li>
		   		</ul>
		    </div>
		    <div class="p-x-15 m-top-25">
	   <a id="a1" class="mui-btn mui-btn-block mui-btn-success" href="<%=basePath%>article/getPayParentsDetails.html?id=${article.id}&userid=${user.id }">我要报名</a>
			</div>
		</div>
	</body>

<script type="text/javascript">
	$("#a1").click(function(){
	var msg = $("#msg").val();
	if(msg == "进行中"){
	}else{
	$('#a1').removeAttr('href');
	 mui.alert('报名已结束', '系统提示');
	}
	});

</script>
</html>
