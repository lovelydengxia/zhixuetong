<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>主页</title>
		<link rel="stylesheet" href="<%=basePath%>css/style.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
	</head>
<style>
	.bg {
	background: url('${img}');
	background-size: 100% 100%;
}
</style>
	<body>
		<div class="bg start">
		</div>
	</body>
	<script type="text/javascript">
		$(document).ready(function() {
			function Pages() {
				var H = $(window).height();
				W = $(window).width();
				$('.bg').css('height', H);
				$('.bg').css('width', W);
			}
			$(window).on('resize', function() {
				Pages();
			});
			Pages();
			setTimeout('window.location.href="<%=basePath%>login/get.html"',3000);
		});
	</script>

</html>