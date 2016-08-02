<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>作业详情</title>
    
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
		<a class=" mui-icon " href="<%=basePath%>work/getById.html?id=${hwid }"><img class="back" src="<%=basePath%>img/back.png"></a>
		<h1 id="title" class="mui-title">学生详情</h1>	
	</header>
	<div class="mui-content">
		<ul class="mui-table-view">
		<%-- <s:forEach items="${guestbooks }" var="gb">
				<li class="mui-table-view-cell mui-media">
					
						<img class="mui-media-object mui-pull-left" src="<%=basePath%>/img/patriarch.png">
						<div class="mui-media-body">
							${gb.messager }${gb.toobjid }：
							<input type="hidden" value="${gb.id }" name="gbid" id="gbid">
								<p class='mui-ellipsis'>${gb.content }</p><button  class="mui-btn-sm right bu" onclick="get('${gb.id}')">回复</button>
						</div>
						
				</li>
				</s:forEach> --%>
			
			  <s:forEach items="${detailstus}" var="stu">
			    	<li><span id="stuid" style="display:none;">${stu.id }</span>   ${stu.name }</li>
			   </s:forEach>
				
			</ul>
		
	</div>
	 <a href="<%=basePath%>work/getById.html?id=${hwid }">返回</a>
</body>
<script src="<%=basePath%>/js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	//获取toobjid
	function get(id){
		$(".mesg2").removeClass("hide");
		$("#toobjid").val(id);
		var sc=$(document).height()
		$(window).scrollTop(sc);
	}
	/* $(".bu").click(function(){
		$(this).addClass("hide");
		
	}) */
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
</html>
