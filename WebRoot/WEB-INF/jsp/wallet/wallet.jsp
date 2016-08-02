<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <script src="<%=basePath %>js/mui.min.js"></script>
    <link href="<%=basePath %>css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=basePath %>css/style.css" />
    <style type="text/css">
    	.mui-content{
    		margin-top: -14px;
    	}
    	.border-none{
    		border: none !important;
    	}
    	.serve{
    		padding: 10px 5px;
    		background: #D7D7D7;
    		margin:  0;
    		font-weight: 500;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
  </head>
  <body>
    <header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon " href="javascript:void(0)"><img class="back" src="<%=basePath %>img/back.png"></a>
		<h1 id="title" class="mui-title">钱包</h1>
	</header>
	<div class="mui-content">
	    <div class="text-center m-top-25">
	    	<img src="<%=basePath %>img/jewel.png" width="100" />
	    	<p>我的零钱</p>
	    	<h4>￥${user.zfye }</h4>
	    </div>
	    <div class="p-x-15">
			<a href="<%=basePath %>wallet/getRechange.html" class="mui-btn mui-btn-block mui-btn-success">去充值</a>
			<%--<a href="<%=basePath %>article/getActivity.html" class="mui-btn mui-btn-block ">活动缴费</a>
		--%></div>
	</div>
  </body>
</html>
