<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加作业</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath %>/js/mui.min.js"></script>
    <link href="<%=basePath %>/css/mui.min.css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="<%=basePath %>/css/mui.picker.min.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath %>/css/style.css"/>
    <style type="text/css">
    	.mui-input-row label{
    		font-size: 1em;
    		text-align: right;
    	}
    	.mui-input-row{
    		border-bottom: 1px solid #eee;
    	}
    	textarea {
    		border: none;
    		height: 200px;
    		overflow: auto;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class=" mui-icon " href="<%=basePath%>work/getWorkByTeacher.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">新增作业</h1>	
	</header>
	<div class="mui-content">
	<form action="<%=basePath%>work/addWork1.html" method="post" id="postform">
	     <ul class="mui-table-view">
	     		<li class="mui-input-row">
		    	<label>作业标题：</label>
		        <input type="text" class="mui-input-clear "  id="ti" name="hwtitle" placeholder="请填写作业标题" value="" />
		    	</li>
		    	<li class="mui-input-row">
		    	<label>提交时间：</label>
		        <input type="text" class="mui-input-clear startime "  readonly="readonly" name="deadline" id="result" placeholder="请选择时间" value="" />
		    	</li>
		    	<li class="mui-input-row">
		    		<textarea placeholder="请填写作业内容" id="content" name="hwcontent"></textarea>
		    	</li>
		    	<li class="mui-input-row">
		    		<span id="msg" style="color:red;">${msg }</span>
		    	</li>
		    	<li>
		    		<button type="button" class="mui-btn mui-btn-success mui-btn-block mui-btn-outlined" onclick="check()">选择班级</button>
		    	</li>
	     </ul>
	     </form>
	</div>
	<script src="<%=basePath %>/js/mui.picker.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=basePath%>/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	function check(){
			
			var date = new Date();
		    var seperator1 = "-";
		    var seperator2 = ":";
		    var month = date.getMonth() + 1;
		    var strDate = date.getDate();
		    if (month >= 1 && month <= 9) {
		        month = "0" + month;
		    }
		    if (strDate >= 0 && strDate <= 9) {
		        strDate = "0" + strDate;
		    }
		    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
		            + date.getHours() + seperator2 + date.getMinutes();
			var s=$("#result").val();
			
			currentdate = currentdate.replace(/[&\|\\\*^%$#:@\-]/g,"");
			s = s.replace(/[&\|\\\*^%$#:@\-]/g,"");
			s = s.replace(/\s+/g,"");
			
			
			
			var title=$("#ti").val();
			var content=$("#content").val();
			if(title==null||""==title){
				$("#msg").text("请输入作业标题")
			}
			else if(s==""){
				$("#msg").text("请输入作业提交时间")
			}
			else if(currentdate>s){
				$("#msg").text("作业提交时间应该大于当前时间")
			}
			else if(content==""){
				$("#msg").text("请输入作业内容");
			}
			else{
				$("#postform").submit();
			}
	}
	
		(function($) {
				$.init();
				var result = $('#result')[0];
				var btns = $('.startime');
				btns.each(function(i, btn) {
					btn.addEventListener('tap', function() {
						var optionsJson = this.getAttribute('data-options') || '{}';
						var options = JSON.parse(optionsJson);
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
	</script>
</body>
</html>