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
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>成绩系统</title>
<script src="<%=basePath%>js/mui.min.js"></script>
<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/location.js"></script>
<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
<style type="text/css">
body {background-color: #fff;}
.mui-icon-back:before,.mui-icon-left-nav:before {
	content: none;
}
.chengjiList ul li {height: 40px;line-height: 38px;}
</style>
</head>
<body>
	<!------header------->
	<header class="mui-bar mui-bar-nav"> <a
		class="mui-icon mui-icon-left-nav mui-pull-left"
		href="<%=basePath%>grade/turn.html"><img class="back" src="<%=basePath%>img/back.png" />
		<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
	</a>
	<h1 id="title" class="mui-title">成绩系统</h1>
	</header>
	<!--chengji list-->
	<div class="chengjiList">
		<ul id="xxx">
			<!-- <a href="javascript:void(0)" onclick="T_cjD()"><li>2016年春季期末成绩</li>
			</a>
			<a href="javascript:void(0)" onclick="T_cjD()"><li>2016年春季期末成绩</li>
			</a>
			<a href="javascript:void(0)" onclick="T_cjD()"><li>2016年春季期末成绩</li>
			</a> -->
		</ul>
	
	</div>
</body>
<script type="text/javascript">
	$.ajax({
		url:"<%=basePath%>grade/getGradeTestNameByAccountID.html",
		type:"post",
		dataType:"json",
		data:{accountID:${user.id}},
		async:false,
		success:function(data){
			$("#xxx").html("");
			var tbl = "";
			for(var i = 0 ;i<data.length ;i++){
				tbl += "<a href='<%=basePath%>grade/getDetails.html?testID=\""+data[i].testID+"\"'><li>"+data[i].testName+"</li></a>"
			}
			$("#xxx").append(tbl);
		},
	});
</script>

<!-- 
	
	var pathName = window.document.location.pathname;
	var proJectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
	function T_cjD(testId,tId) {
		postmit(proJectName + "/grade/getDetails.html", {
			"testId": testId, 
			"tid": tId
		});
	}
	function postmit(url, params) {
	var temp = document.createElement("form");
	temp.action = url;
	temp.method = "post";
	for(var i in params) {
		var input = document.createElement("input");
		input.setAttribute("name", i);
		input.setAttribute("value", params[i]);
		temp.appendChild(input);
	}
	document.body.appendChild(temp);
	temp.submit();
	document.body.removeChild(temp);
 -->

</html>
