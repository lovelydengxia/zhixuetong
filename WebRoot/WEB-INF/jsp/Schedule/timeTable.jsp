<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%@ include file="../taglibs.jsp"%>
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
		<meta charset="utf-8">
		<title>Hello MUI</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">

		<!--标准mui.css-->
		<link rel="stylesheet" href="<%=basePath%>css/mui.min.css">
		<!--App自定义的css-->
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css"/>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
		
		<style>
			.mui-card .mui-control-content {
				padding: 10px;
			}
			.mui-control-content {
				height: 150px;
			}
			.mui-icon-back:before,
			.mui-icon-left-nav:before {
				content: none;
			}
			
			.mui-content-padded {
				width: 90%;
				margin-left: 5%;
				margin-top: 130px;
				background: #fff;
			}
			
			.mui-btn-primary {
				background: #11C036;
				border: none;
				padding: 5px 0px;
			}
			
			select option {
				width: 80px;
				color: #11C036;
				border-bottom: 1px solid gray;
				height: 30px;
			}
			
			select {
				width: 80px;
				padding: 0px;
			}
			.mui-table-view-cell.mui-collapse .mui-collapse-content {padding: 0;}
			.kqBanner  {border-top: none ;}
			.conRight ul li {text-transform: uppercase;}
			.mui-navigate-right:after, .mui-push-right:after {left: 0%;color: #000;}
			.mui-table-view-cell>a:not(.mui-btn) {padding-left: 20px;}
			.mui-navigate-right span {float: right;}
			.fr-name{font-size: 16px;}
			.mui-pull-left{width: 30px;height: 40px;border-radius: 15px;}
			.time-table{
				width: 100%;
				text-align: center;
			}
			.time-table td{border-bottom: 1px solid #34CB3A;padding: 15px 0;color: #333;font-size: 14px;}
			.time-table td:first-child{border-right: 1px solid #34CB3A;width: 25%;}
			.time-table label{padding: 10px 5px; font-size: 16px; font-weight: 500;}
			.time-table span{padding: 10px 5px; font-size: 14px; color: #bbb; font-weight: 500;}
			body{background: #fff;}
		</style>
	</head>
	<body>
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 class="mui-title">课程表</h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.xgh }">
		</header>
		<div >
			<div style="margin-top: 50px;">
				<div id="segmentedControl" class="mui-segmented-control mui-segmented-control-positive">
					<a class="mui-control-item mui-active" href="#item1">
				一
			</a>
					<a class="mui-control-item" href="#item2">
				二
			</a>
			<a class="mui-control-item" href="#item3">
				三
			</a>
			<a class="mui-control-item" href="#item4">
				四
			</a>
			<a class="mui-control-item" href="#item5">
				五</a>
			<a class="mui-control-item" href="#item6">
				六</a>
			<a class="mui-control-item" href="#item7">
				七</a>
				</div>
			</div>
			<div >
				<div id="item1" class="mui-control-content mui-active">
					<div >
						<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="1_1_1"></label>
								<span id="1_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="1_2_1">数学</label>
								<span id="1_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="1_3_1"></label>
								<span id="1_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="1_4_1">数学</label>
								<span id="1_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="1_5_1">数学</label>
								<span id="1_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="1_6_1">数学</label>
								<span id="1_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="1_7_1">数学</label>
								<span id="1_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="1_8_1">数学</label>
								<span id="1_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="1_9_1">数学</label>
								<span id="1_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="1_10_1">数学</label>
								<span id="1_10_2">王老师</span>
							</td>
						</tr>
					</table>
					</div>
				</div>
				<div id="item2" class="mui-control-content">
					<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="2_1_1"></label>
								<span id="2_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="2_2_1">数学</label>
								<span id="2_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="2_3_1"></label>
								<span id="2_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="2_4_1">数学</label>
								<span id="2_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="2_5_1">数学</label>
								<span id="2_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="2_6_1">数学</label>
								<span id="2_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="2_7_1">数学</label>
								<span id="2_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="2_8_1">数学</label>
								<span id="2_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="2_9_1">数学</label>
								<span id="2_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="2_10_1">数学</label>
								<span id="2_10_2">王老师</span>
							</td>
						</tr>
						
					</table>
				</div>
				<div id="item3" class="mui-control-content">
					<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="3_1_1"></label>
								<span id="3_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="3_2_1">数学</label>
								<span id="3_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="3_3_1"></label>
								<span id="3_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="3_4_1">数学</label>
								<span id="3_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="3_5_1">数学</label>
								<span id="3_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="3_6_1">数学</label>
								<span id="3_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="3_7_1">数学</label>
								<span id="3_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="3_8_1">数学</label>
								<span id="3_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="3_9_1">数学</label>
								<span id="3_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="3_10_1">数学</label>
								<span id="3_10_2">王老师</span>
							</td>
						</tr>
						
					</table>
				</div>
				<div id="item4" class="mui-control-content">
					<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="4_1_1"></label>
								<span id="4_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="4_2_1">数学</label>
								<span id="4_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="4_3_1"></label>
								<span id="4_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="4_4_1">数学</label>
								<span id="4_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="4_5_1">数学</label>
								<span id="4_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="4_6_1">数学</label>
								<span id="4_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="4_7_1">数学</label>
								<span id="4_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="4_8_1">数学</label>
								<span id="4_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="4_9_1">数学</label>
								<span id="4_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="4_10_1">数学</label>
								<span id="4_10_2">王老师</span>
							</td>
						</tr>
						
					</table>
				</div>
				<div id="item5" class="mui-control-content">
					<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="5_1_1"></label>
								<span id="5_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="5_2_1">数学</label>
								<span id="5_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="5_3_1"></label>
								<span id="5_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="5_4_1">数学</label>
								<span id="5_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="5_5_1">数学</label>
								<span id="5_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="5_6_1">数学</label>
								<span id="5_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="5_7_1">数学</label>
								<span id="5_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="5_8_1">数学</label>
								<span id="5_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="5_9_1">数学</label>
								<span id="5_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="5_10_1">数学</label>
								<span id="5_10_2">王老师</span>
							</td>
						</tr>
					</table>
				</div>
				<div id="item6" class="mui-control-content ">
					<div >
						<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="6_1_1"></label>
								<span id="6_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="6_2_1">数学</label>
								<span id="6_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="6_3_1"></label>
								<span id="6_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="6_4_1">数学</label>
								<span id="6_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="6_5_1">数学</label>
								<span id="6_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="6_6_1">数学</label>
								<span id="6_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="6_7_1">数学</label>
								<span id="6_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="6_8_1">数学</label>
								<span id="6_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="6_9_1">数学</label>
								<span id="6_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="6_10_1">数学</label>
								<span id="6_10_2">王老师</span>
							</td>
						</tr>
					</table>
					</div>
				</div>
				<div id="item7" class="mui-control-content ">
					<div >
						<table class="time-table">
						<tr>
							<td >第一节</td>
							<td>
								<label id="7_1_1"></label>
								<span id="7_1_2"></span>
							</td>
						</tr>
						<tr>
							<td >第二节</td>
							<td>
								<label  id="7_2_1">数学</label>
								<span id="7_2_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第三节</td>
							<td>
								<label id="7_3_1"></label>
								<span id="7_3_2"></span>
							</td>
						</tr>
						<tr>
							<td >第四节</td>
							<td>
								<label id="7_4_1">数学</label>
								<span id="7_4_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第五节</td>
							<td>
								<label id="7_5_1">数学</label>
								<span id="7_5_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第六节</td>
							<td>
								<label id="7_6_1">数学</label>
								<span id="7_6_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第七节</td>
							<td>
								<label id="7_7_1">数学</label>
								<span id="7_7_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第八节</td>
							<td>
								<label id="7_8_1">数学</label>
								<span id="7_8_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第九节</td>
							<td>
								<label id="7_9_1">数学</label>
								<span id="7_9_2">王老师</span>
							</td>
						</tr>
						<tr>
							<td >第十节</td>
							<td>
								<label id="7_10_1">数学</label>
								<span id="7_10_2">王老师</span>
							</td>
						</tr>
					</table>
					</div>
				</div>

			</div>
		
			
		</div>
		<script src="<%=basePath%>js/mui.min.js"></script>
		
		<script type="text/javascript">
			$(".time-table").on("click", function(event){
			　　　　event.preventDefault();  //关键是这句
			　　}
			
			);
		</script>
		

	</body>
	<script type="text/javascript">
		$(function(){
			var accountID = $("#accountID").val();
			$.ajax({
				url:"<%=basePath%>schedule/getByTeacherXgh.html",
				type:"POST",
				data:{xgh:accountID},
				dataType:"json",
				async:false,
				success:function(data){
					/* for(var k = 1 ; k <= 2  ; k++){//lable */
						for(var j = 1 ; j <= 7  ; j++){
							for(var i = 1 ; i <= 10 ; i++){
								for(var x = 0 ; x < data.length ; x++){
									if(data[x].weekID == j && data[x].lessonID == i ){
										$("#"+j+"_"+i+"_1").text(data[x].subject);
										$("#"+j+"_"+i+"_2").text(data[x].className);
										break;
									}else{
										$("#"+j+"_"+i+"_1").text("");
										$("#"+j+"_"+i+"_2").text("");
									}
								}
							}
						}
					/* } */
				},
			});
		});
	</script>

</html>