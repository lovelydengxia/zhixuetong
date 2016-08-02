<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>/js/mui.min.js"></script>
    <link href="<%=basePath%>/css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/style.css"/>
    <style type="text/css">
	.table{
    		width: 100%;
    		border: none; 
    		margin-top: 10px;   		
    	}
    	.table td{
    		font-size:0.8em;
    		width: 50%;
    		padding: 6px 0;
    		overflow: hidden;
    		white-space: nowrap;
   			text-overflow: ellipsis;
    	}
    	.table label,.homework label{
    		display: inline-block;
    		font-size:0.8em;
    		width: 70px;
    		text-align: right;
    		
    	}
    	.homework li{
    		padding: 5px 0;
    	}
    	.homework p{
    		padding-left: 20px;
    	}
    	label{
    		font-weight: 600;
    	}
    	.mui-input-row label{
    		font-size: 1.3em;
    		text-align: right;
    	}
    	.mui-input-row{
    		border-bottom: 1px solid #eee;
    	}
    	textarea {
    		border: none;
    		height: 100px;
    	}
    	.mui-btn{
    		padding: 5px 20px;
    	}
    	.mui-btn-warning{
    		
    		margin-right : 10px;
    	}
    	.leave-list{
    		border-top: 1px solid #eee;
    	}
    	.leave-list li{
    		border-bottom: 1px solid #eee;
    		padding:  5px;
    	}
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<header class="mui-bar mui-bar-nav">
		<a class=" mui-icon " href="<%=basePath%>work/homeworklistpar.html"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">作业详情</h1>	
	</header>
	<div class="mui-content">
		<table class="table">
			<tr>
				<td><label>作业标题：</label>${work.hwtitle }</td>
				<td><label>日期：</label>${work.deadline }</td>
			</tr>
			<tr>
				<td><label>科目：</label>${work.subid }</td>
				<td><label>发布者：</label>${publishteaname }</td>
			</tr>
			<tr>
				<td><label>班级：</label>${work.classid }</td>
				<td><label>学生：</label>
						<s:forEach items="${stuname }" var="gb">
							${gb }
						</s:forEach>
				</td>
			</tr>
		</table>
		<ul class="homework">
			<li>
				<label>作业内容：</label>
			</li>
			<li>
				<p>${work.hwcontent }</p>
				
			</li>
			<li>
				<button type="button" id="gubook" class=" mui-btn mui-btn-warning ">
					留言
				</button>
				<span id="msg" style="color:red"></span>
			</li>
			<li class="mesg hide">
					<form action="<%=basePath %>work/addGuest.html" method="post" onsubmit="return check()">
						<input type="hidden" name="hwid" value="${work.id }">
						<input type="text" name="content" id="content1">
						<button type="submit" id="sub" class=" mui-btn mui-btn-warning ">提交</button>
					</form>
			</li>
		</ul>
		<ul class="mui-table-view">
		<s:forEach items="${guestbooks }" var="gb">
				<li class="mui-table-view-cell mui-media">
					
						<img class="mui-media-object mui-pull-left" src="<%=basePath%>/img/patriarch.png">
						<div class="mui-media-body">
							${gb.messager }${gb.toobjid }：
								<p class='mui-ellipsis'>${gb.content }</p><button id="bu" class="mui-btn-sm right" onclick="get('${gb.id}')">回复</button>
						</div>
				</li>
				</s:forEach>
				
				<li class="mui-table-view-cell mui-media mesg2 hide">
					<form action="<%=basePath %>work/replay.html" method="post" class="aa" onsubmit="return check()">
						<input type="hidden" name="hwid" value="${work.id }">
						<input type="hidden" name="toobjid" value="" id="toobjid">
						<input type="text" name="content" id="content2">
						<button type="submit"  id="ss" class=" mui-btn mui-btn-warning ">提交</button>
					</form>
				</li>
			</ul>
		
	</div>
	<script src="<%=basePath%>/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
	function check(){
		var content1=$("#content1").val();
		var content2=$("#content2").val();
		var test=/^[A-Za-z0-9\u4e00-\u9fa5]+$/;
		if((content1!="")&&!test.test(content1)){
			$("#msg").text("请输入中文英文和数字信息");
			return false;
		}
		else if((content2!="")&&!test.test(content2)){
			$("#msg").text("请输入中文英文和数字信息");
			return false;
		}
		else{
			$("#msg").text("");
			return true;
		}
	}
	//获取toobjid
	function get(id){
		$(".mesg2").removeClass("hide");
		$("#toobjid").val(id);
		var sc=$(document).height()
		$(window).scrollTop(sc);
	}
	//点击留言后显示
	$("#gubook").click(function(){
		$(".mesg").removeClass("hide");
	})
	//提交后隐藏
	$("#sub").click(function(){
		$(".mesg").addClass("hide");
	})
	//提交后隐藏
	$("#ss").click(function(){
		$(".mesg2").addClass("hide");
	})
	</script>
</body>
</html>