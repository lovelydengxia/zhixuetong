<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	Account account = (Account) session.getAttribute("user");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>成绩趋势图</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<!--标准mui.css-->
<link rel="stylesheet" href="<%=basePath%>css/mui.min.css" />
<link href="<%=basePath%>css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
<script src="<%=basePath%>js/mui.min.js"></script>
<script src="<%=basePath%>js/echarts-all.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<!--App自定义的css-->

<style>
.chart {
	height: 200px;
	margin: 0px;
	padding: 0px;
}
</style>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
	 <a class="mui-icon " href="<%=basePath%>grade/getParentTestName.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
	<h1 class="mui-title">成绩趋势图</h1>
	<input type="hidden" id="accountID" name="accountID" value="${user.id }" /> 
	</header>
	<div class="mui-content">
		<div class="contentHeader">
			<label style="font-weight: bold;padding-left: 10px;">请选择学生:</label> <select
				class="form-control" name="xh" id="xh" style="width: 60%"
				onChange="getName(this.value);">
				<!-- <option value="英语">大大</option>
				<option value="语文">小小</option>
				<option value="数学">木木</option> -->
			</select>
		</div>
		<div class="chart" id="lineChart"></div>
	</div>
</body>
<script type="text/javascript">
			var kemu = new Array();
			var grades = ['13期中','13期末','14期中','14期末'];
			var prams = [{name:'语文',type:'line',data:[70, 72, 81, 94]},
						 {name:'数学',type:'line',data:[82, 93, 91, 93]}
						];
			$(document).ready(function(){
					$.ajax({
					url:"<%=basePath%>grade/findAllValidSubjectName.html",
					type:"post",
					//data:{accountID:66},
					dataType:"json",
					async:false,
					success:function(data){
						for(var i = 0; i < data.length; i ++) {
								kemu.push(data[i].subjectName);
						}
					},
				});
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
				var byId = function(id) {
					return document.getElementById(id);
				};
				var lineChart = echarts.init(byId('lineChart'));
				lineChart.setOption(getOption('line',grades,prams));
				}
			);
			function getOption(chartType,grades,prams) {
					var chartOption = {
						    title: {
						        text: ''
						    },
						    tooltip: {
						        trigger: 'axis'
						    },
						    legend: {
						        data:kemu
						    },
						    grid: {
						        left: '3%',
						        right: '4%',
						        bottom: '3%',
						        containLabel: true
						    },
						    toolbox: {
						        feature: {
						            saveAsImage: {}
						        }
						    },
						    xAxis: {
						        type: 'category',
						        boundaryGap: false,
						        data: grades
						    },
						    yAxis: {
						        type: 'value'
						    },
						    series: prams
						};
					return chartOption;
				};
	function getName(xh){
		//查询单个成绩
		var accountID = $("#accountID").val();
		var gradeStr = new Array();
		$.ajax({
			url:"<%=basePath%>grade/findScoreGradeCondition.html",
			type : "post",
			data : {accountID:accountID,
				xh : xh
			},
			dataType : "json",
			async : false,
			success : function(data) {//"score","testID","subjectName","testType"
				var jqscore = new Array();
				for ( var i = 0; i < data.length; i++) {
					gradeStr.push(data[i].testName);
					jiequStr(data[i].subjectName);
					jqscore.push(jiequScore(data[i].score));
				}
				var aParam = new Array();
				for(var i = 0; i < kemu.length; i++) {
					var lineData = new Array();
					for(var j = 0; j < jqscore.length; j ++) {
						lineData.push(jqscore[j][i]);
					}
					aParam.push({
						"name": kemu[i], 
						"type": "line", 
						"data": lineData
					});
				}
				var byId = function(id) {
					return document.getElementById(id);
				};
				var lineChart = echarts.init(byId('lineChart'));
				lineChart.setOption(getOption('line',gradeStr,aParam));
			},
		});
	}
	//处理科目,使其长度等于总科目长度,并按总科目排序
	var start = -1;
	function jiequStr (str) {
		var arr = str.split(",");
		var reArr = new Array();
		if(arr.length != kemu.length) {
			for(var j = 0; j < kemu.length; j ++) {
				if(arr[0] == kemu[j]) {
					start = j;
				}
			}
		}
	}
	//处理成绩,使其长度等于总科目长度,并按总科目排序
	function jiequScore (score) {
		var arr = score.split(",");
		var reArr = new Array(kemu.length);
		if (start == -1) {
			return arr;
		}else {
			for (var i = 0; i < kemu.length; i ++) {
				if(start > i) {
					reArr[i] = "0";
				}else {
					if(arr[i-start] == null) {
						reArr[i] = "0";
					}else{
						reArr[i] = arr[i-start];
					}
				}
			}
		}
		return reArr;
	}

</script>
</html>