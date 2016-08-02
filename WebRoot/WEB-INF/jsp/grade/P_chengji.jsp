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
		<title>成绩系统</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/location.js" ></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			body {background-color: #fff;}
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.chengjiList ul li {height: 40px;line-height: 38px;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>grade/turnparent.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">成绩系统</h1>
			<h1 class="mui-title leftTitle"><a href="javascript:void(0)" onclick="P_cjQ()">成绩趋势</a></h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
		</header>
	<!--chengji list-->
		<div class="chengjiList">
			<ul id="xxx">
				<!-- <a href="javascript:void(0)" onclick="P_cjD()"><li>2016年春(上期)</li></a>
				<a href="javascript:void(0)" onclick="P_cjD()"><li>2016年春(上期)</li></a>
				<a href="javascript:void(0)" onclick="P_cjD()"><li>2016年春(上期)</li></a> -->
			</ul>
		</div>
	</body>
<script type="text/javascript">
	$.ajax({
		url:"<%=basePath%>grade/getParentGradeTestNameByAccountID.html",
		type:"post",
		dataType:"json",
		data:{accountID:${user.id}},
		async:false,
		success:function(data){
			$("#xxx").html("");
			var tbl = "";
			for(var i = 0 ;i<data.length ;i++){
				tbl += "<a href='<%=basePath%>grade/getParentDetails.html?testID="+data[i].testID+"'><li>"+data[i].testName+"</li></a>"
			}
			$("#xxx").append(tbl);
		},
	});
</script>
<script type="text/javascript">
	function P_cjQ(){
		window.location.href="<%=basePath%>grade/findGradeDetailsDevelopments.html";
	}
</script>
</html>
