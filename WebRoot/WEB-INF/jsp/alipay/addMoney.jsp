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
			<h1 id="title" class="mui-title">充值</h1>
		</header>
		<!--person info-->
		<div class="infoBox" style="margin-top: 50px;" id="activity">
		 	<form action="https://openapi.alipay.com/gateway.do">
		 		<input name="timestamp" value="${timestamp }"/>
		 		<input name="method" value="${method }"/>
		 		<input name="app_id" value="${app_id }"/>
		 		<input name="sign_type" value="${sign_type }"/>
		 		<input name="sign" value="${sign }"/>
		 		<input name="version" value="${version }"/>
		 		<input name="biz_content" value='${biz_content }'/>
		 		<button type="submit">充值</button>
		 	</form>
		 	<form action="https://mapi.alipay.com/gateway.do?sign=7f24207bae0f21a49b19dd728b2d7517&body=One-card&_input_charset=utf-8&total_fee=50.0&subject=%E8%B4%A6%E6%88%B7%E5%85%85%E5%80%BC&sign_type=MD5&service=create_direct_pay_by_user&notify_url=http%3A%2F%2Fepay.scgsxy.cn%2Fonely%2FalipayNotify.servlet&partner=2088021780420723&seller_email=longtenggu@yeah.net&out_trade_no=201605191657052274&payment_type=1&return_url=http%3A%2F%2Fepay.scgsxy.cn%2Fonely%2FalipaySucces.jsp">
		 	<button type="submit">充值2</button>
		 	</form>
	 	</div>
	</body>
</html>
