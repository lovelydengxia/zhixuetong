<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=basePath%>css/style.css" />
    <style type="text/css">
    	label{
    		font-weight: 600;
    		font-size: 1.2em;
    		line-height: 30px;
    	}
    	.pay-success{
    		font-size: 30px;
    		font-weight: 500;
    	}
    	.mui-table-view-cell:after{
    		background: none;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">支付成功</h1>
		</header>
		<div class="mui-content m-top-25 text-center">
		   	<ul>
		   		<li>
		   			 <label class="color-success pay-success">支付成功!</label>
		  
		   		</li>
		   		<li class="m-top-5"> 
		   			 <label class="color-red">￥${chargeItems.fare}元</label>
		  
		   		</li>
		   		
		   	</ul>
		   	 <ul class="mui-table-view m-top-25">
	            <li class="mui-table-view-cell">
	                <span class="left">
	                	交易时间
	                </span>
	                <span class="right">2016-6-5</span>
	            </li>
	            <li class="mui-table-view-cell">
	                <span class="left">
	                	支付方式
	                </span>
	                <span class="right">支付宝</span>
	            </li>
	            <li class="mui-table-view-cell">
	                <span class="left">
	                	交易单号
	                </span>
	                <span class="right">201545121546</span>
	            </li>
		            
	       </ul>
	       <div class="p-x-15 m-top-25">
		<a class="mui-btn mui-btn-block mui-btn-success" href="<%=basePath%>parent/get.html">返回</a>
			</div>
		</div>
</body>
</html>
