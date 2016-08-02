<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
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
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>成绩系统列表</title>
<script src="<%=basePath%>js/mui.min.js"></script>
<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/location.js">
			T_cjP();
		</script>
<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
<style type="text/css">
.mui-icon-back:before,.mui-icon-left-nav:before {
	content: none;
}

.form-control {
	width: 100px;
	display: inline;
}

select {
	border: 1px solid darkgray !important;
	padding: 2px 10px;
	border-radius: 5px;
}
th{font-weight: 500;}
</style>
</head>
<body>
	<!------header------->
	<header class="mui-bar mui-bar-nav">
		<a class="mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>grade/getParentTestName.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
		<h1 id="title" class="mui-title">${testName }</h1>
		<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
	</header>
	<!--chengji  content-->
	<div class="chengjiContent">
		<div class="contentHeader">
			<label style="padding-left: 10px;">请选择学生:</label> <select
				class="form-control" name="xh" id="xh" onChange="getName(this.value);">
				<!-- <option value="英语">大大</option>
				<option value="语文">小小</option>
				<option value="数学">木木</option> -->
			</select>
		</div>
		<div class="contentTable">
			<table id="xxx">
				<!-- <tr>
					<th width="30%">姓名</th>
					<th width="30%">科目</th>
					<th width="30%">名次</th>
				</tr>
				<tr>
					<td>张三</td>
					<td>数学</td>
					<td>1</td>
				</tr>
				<tr>
					<td>张三</td>
					<td>数学</td>
					<td>1</td>
				</tr> -->
				 
			</table>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		var accountID = $("#accountID").val();
		$.ajax({
			url:"<%=basePath%>grade/findStudentByParentId.html",
			type:"post",
			data:{accountID:accountID},
			dataType:"json",
			async:false,
			success:function(data){
				var option = "<option value=''>请选择学生</option>";
				for(var i = 0 ;i<data.length ; i++){
					option += "<option value='"+data[i].xh+"'>"+data[i].name+"</option>";
				}
				$("#xh").html(option);
			},
		});
	});
		
	
</script>
<script type="text/javascript">
	function getName(xh){
		var accountID = $("#accountID").val();
		$.ajax({
			url:"<%=basePath%>grade/findDetailsByParentCondition.html",
			type:"post",
			data:{accountID:accountID,
				testID:${testID},
				xh:xh},
			dataType:"json",
			async:false,
			success:function(data){
				$("#xxx").html("");
				$("#xxx").append("<tr><th width='25%'>考试类型</th><th width='25%'>科目</th><th width='25%'>分数</th><th width='25%'>考试时间</th></tr>");
				for(var i=0;i<data.length;i++){
					$("#xxx").append("<tr><td>"+data[i].testType+"</td><td>"+data[i].subjectName+"</td><td>"+data[i].score+"</td><td>"+data[i].testTime+"</td></tr>");
				}
			},
		});
	}
</script>
</html>