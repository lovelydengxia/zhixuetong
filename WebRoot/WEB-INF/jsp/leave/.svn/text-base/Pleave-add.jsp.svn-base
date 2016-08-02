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
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/mui.picker.min.css" />
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/style.css" />
    <style type="text/css">
    	.leavelen{
    		
    		font-weight: 600;
    		padding-right: 5px;
    	}
    	.mui-input-row label{
    		text-align: right;
    	}
    	.mui-input-row{
    		border-bottom: 1px solid #eee;
    	}
    	textarea {
    		border: none;
    		height: 100px;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
			<a class="mui-icon " href="<%=basePath%>leave/getP.html"><img class="back" src="<%=basePath%>img/back.png"></a>
			<h1 id="title" class="mui-title">请假</h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
	</header>
		<div class="mui-content">
		    <!-- <div class="mui-input-row p-y-10">
		        <label>选择整天</label>
		        <div class="mui-switch">
		            <div class="mui-switch-handle"></div>
		        </div>
		    </div> -->
		    <form action="<%=basePath%>leave/insert.html" method="post" id="addConfirmForm" >
		    <input type="hidden" id="accountID" name="accountID" value="${user.id }"/>

		    <ul class="mui-table-view">
		    	<li class="mui-input-row">
			    	<label>请选择学生：</label> 
					<select class="form-control" name="xh" id="student-xh" ">
					<!-- <option value="英语">大大</option>
					<option value="语文">小小</option>
					<option value="数学">木木</option> -->
					</select>
		    	</li>
		    	
		    	<li class="mui-input-row">
		    	<label>开始时间：</label>
		        <input type="text" class="mui-input-clear startime color-success"  name="startTime" id="result" placeholder="请选择时间" value="" />
		    	</li>
		    	<li class="mui-input-row ">
		    	<label>截止时间：</label>
		        <input type="text" class="mui-input-clear endtime color-success"  name="endTime" id="result1" placeholder="请选择时间" value="" />
		    	</li>
		    	<li class=" mui-input-row ">
		    		<label>请假时长：</label>
		    		<input type="text" name="leaveTime" id="leaveTime" readonly="readonly" value="" />
		    	</li>
		    	<li class="mui-input-row ">
		    		<label>请假类型：</label>
		    		<select name="leaveStatus" id="leaveStatus">
		    			<option value="不明">请选择类型</option>
		    			<option value="事假">事假</option>
		    			<option value="病假">病假</option>
		    			<option value="其他">其他</option>
		    		</select>
		    	</li>
		    	<li class="mui-input-row">
		    		<label>家长电话：</label>
		    		<input type="text" value=""  name="phone" id="phone"/>
		    	</li>
		    	<li class="mui-input-row">
		    		<textarea placeholder="请填写请假事由" name="reasons" id="reasons"></textarea>
		    	</li>
		    </ul>
		    <div class="m-top-25">
				<button type="button" id="confirmBtn" class="mui-btn mui-btn-block mui-btn-success mui-btn-outlined">提交</button>
			</div>
			</form>
		</div>
		
		
		<script src="<%=basePath%>js/mui.picker.min.js"></script>
		<script>
		$(function(){
		    $("#leaveStatus").click(function(){
		    var startTime = $("#result").val();
		    startTime = startTime.replace(new RegExp("-","gm"),"/");
		    var sT = (new Date(startTime)).getTime();//得到毫秒数
		    var endTime = $("#result1").val();
		    endTime = endTime.replace(new RegExp("-","gm"),"/");
		    var eT = (new Date(endTime)).getTime();
		    if(startTime == "" && endTime ==""){
		    	var btnArray = ['确定'];
					mui.alert('请选择请假时间!', '系统提示', btnArray, function(e) {
					});
	        	/* alert("请选择请假时间"); */
		    }else{
		    	if(sT>eT){
		    	var btnArray = ['确定'];
					mui.alert('请输入正确时间段!', '系统提示', btnArray, function(e) {
					});
		    	/* alert("请输入正确时间段"); */
		    	}else{
		    		var time = (eT-sT)/(3600000);
		    		time = Math.round(time);
		     		document.getElementById("leaveTime").value=(time+"小时");
		  		}
		   }
	  		})
		});
			(function($) {
				$.init();
				var result = $('#result')[0];
				var btns = $('.startime');
				btns.each(function(i, btn) {
					btn.addEventListener('tap', function() {
						var optionsJson = this.getAttribute('data-options') || '{}';
						var options = { beginYear : '1900', endYear : '2050'};
						var id = this.getAttribute('id');
						/*
						 * 首次显示时实例化组件
						 * 示例为了简洁，将 options 放在了按钮的 dom 上
						 * 也可以直接通过代码声明 optinos 用于实例化 DtPicker
						 */
						var picker = new $.DtPicker(options);
						picker.show(function(rs) {
							/*
							 * rs.value 拼合后的 value
							 * rs.text 拼合后的 text
							 * rs.y 年，可以通过 rs.y.vaue 和 rs.y.text 获取值和文本
							 * rs.m 月，用法同年
							 * rs.d 日，用法同年
							 * rs.h 时，用法同年
							 * rs.i 分（minutes 的第二个字母），用法同年
							 */
							result.value = rs.text;
							/* 
							 * 返回 false 可以阻止选择框的关闭
							 * return false;
							 */
							/*
							 * 释放组件资源，释放后将将不能再操作组件
							 * 通常情况下，不需要示放组件，new DtPicker(options) 后，可以一直使用。
							 * 当前示例，因为内容较多，如不进行资原释放，在某些设备上会较慢。
							 * 所以每次用完便立即调用 dispose 进行释放，下次用时再创建新实例。
							 */
							picker.dispose();
						});
					}, false);
				});
			})(mui);
			
			(function($) {
				$.init();
				var result = $('#result1')[0];
				var btns = $('.endtime');
				btns.each(function(i, btn) {
					btn.addEventListener('tap', function() {
						var optionsJson = this.getAttribute('data-options') || '{}';
						var options = { beginYear : '1900', endYear : '2050'};
						var id = this.getAttribute('id');
						/*
						 * 首次显示时实例化组件
						 * 示例为了简洁，将 options 放在了按钮的 dom 上
						 * 也可以直接通过代码声明 optinos 用于实例化 DtPicker
						 */
						var picker = new $.DtPicker(options);
						picker.show(function(rs) {
							/*
							 * rs.value 拼合后的 value
							 * rs.text 拼合后的 text
							 * rs.y 年，可以通过 rs.y.vaue 和 rs.y.text 获取值和文本
							 * rs.m 月，用法同年
							 * rs.d 日，用法同年
							 * rs.h 时，用法同年
							 * rs.i 分（minutes 的第二个字母），用法同年
							 */
							result.value = rs.text;
							/* 
							 * 返回 false 可以阻止选择框的关闭
							 * return false;
							 */
							/*
							 * 释放组件资源，释放后将将不能再操作组件
							 * 通常情况下，不需要示放组件，new DtPicker(options) 后，可以一直使用。
							 * 当前示例，因为内容较多，如不进行资原释放，在某些设备上会较慢。
							 * 所以每次用完便立即调用 dispose 进行释放，下次用时再创建新实例。
							 */
							picker.dispose();
						});
					}, false);
				});
			})(mui);
//			
//			(function($) {
//				$.init();
//				var result = $('#leavelen')[0];
//				var btns = $('.leavelen');
//				btns.each(function(i, btn) {
//					btn.addEventListener('tap', function() {
//						var optionsJson = this.getAttribute('data-options') || '{}';
//						var options = JSON.parse(optionsJson);
//						var id = this.getAttribute('id');
//						/*
//						 * 首次显示时实例化组件
//						 * 示例为了简洁，将 options 放在了按钮的 dom 上
//						 * 也可以直接通过代码声明 optinos 用于实例化 DtPicker
//						 */
//						var picker = new $.DtPicker(options);
//						picker.show(function(rs) {
//							/*
//							 * rs.value 拼合后的 value
//							 * rs.text 拼合后的 text
//							 * rs.y 年，可以通过 rs.y.vaue 和 rs.y.text 获取值和文本
//							 * rs.m 月，用法同年
//							 * rs.d 日，用法同年
//							 * rs.h 时，用法同年
//							 * rs.i 分（minutes 的第二个字母），用法同年
//							 */
//							result.innerText = rs.text;
//							/* 
//							 * 返回 false 可以阻止选择框的关闭
//							 * return false;
//							 */
//							/*
//							 * 释放组件资源，释放后将将不能再操作组件
//							 * 通常情况下，不需要示放组件，new DtPicker(options) 后，可以一直使用。
//							 * 当前示例，因为内容较多，如不进行资原释放，在某些设备上会较慢。
//							 * 所以每次用完便立即调用 dispose 进行释放，下次用时再创建新实例。
//							 */
//							picker.dispose();
//						});
//					}, false);
//				});
//			})(mui);
		</script>
</body>
<script type="text/javascript">
	$(function(){
		var accountID = $("#accountID").val();
		$.ajax({
			url:"<%=basePath%>leave/findStudentByAccountID.html",
			type:"post",
			data:{accountID:accountID},
			dataType:"json",
			async:false,
			success:function(data){
				var option = "<option value=''>请选择学生</option>";
				for(var i = 0 ;i<data.length ; i++){
					option += "<option value='"+data[i].xh+"'>"+data[i].name+"</option>";
				}
				$("#student-xh").html(option);
			},
		});
	});
</script>
<!-- <script type="text/javascript">
	mui.init({
				swipeBack: true //启用右滑关闭功能
			});
			document.getElementById("confirmBtn").addEventListener('tap', function() {
				
			});
</script> -->
<script type="text/javascript">
	$("#confirmBtn").click(function(){
		var xh = $("#student-xh").val();
		var startTime = $("#result").val();
		var endTime = $("#result1").val();
		var leaveTime = $("#leaveTime").val();
		var leaveStatus = $("#leaveStatus").val();
		var phone = $("#phone").val();
		var reasons = $("#reasons").val();
		/*  alert(xh);
		alert(startTime);
		alert(endTime);
		alert(leaveTime);
		alert(leaveStatus);
		alert(phone);
		alert(reasons);  */
		/* var btnArray = ['否', '是']; */
		if(xh == null || xh == "" || startTime == null || startTime == "" || endTime == null || endTime == "" || leaveTime == null || leaveTime == "" || leaveStatus == null || leaveStatus == "" || reasons == null || reasons == "" || phone == null || phone == "" ){
			var btnArray = ['确定'];
			mui.confirm('请完善请假信息？', '系统提示', btnArray, function(e) {
				if (e.index == 1) {
				/* $("#addConfirmForm").submit(); */
				}
			});
		}else{
			$("#addConfirmForm").submit();
		}
		
	});
</script>
<!-- onsubmit="return checked();" -->
</html>