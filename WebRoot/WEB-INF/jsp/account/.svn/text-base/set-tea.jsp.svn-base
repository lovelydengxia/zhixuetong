<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    
    <head>
    <base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>教师设置</title>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/swiper.min.css" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/location.js" >
			about();
			loginOut();
			T_userI();
			
			
		</script>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
			function resetPSD(){
				window.location.href="<%=basePath%>Account/getchangepwd.html"};
			function resetPAYPSD(){
				window.location.href="<%=basePath%>Account/getchangepaypwd.html"};
			function bandClass(){
				window.location.href="<%=basePath%>Account/getbangclass.html"};
			function T_index(){
				window.location.href="<%=basePath%>Account/getindextea.html";};
			function JTX(){
				window.location.href="<%=basePath%>homeschool/getIn.html";};
		</script>
		<style type="text/css">
			body {background: #fff;}
			.mui-icon-home:before,
			.mui-icon-contact:before,
			.mui-icon-gear:before {content: none;}
			.mui-icon-left-nav:before {content: none;}
			.mui-bar-tab {background-color: #fff;}
			.mui-content-padded {background-color: red; border-radius: 8px;margin-left: 0;width: 85%!important;margin: 30px auto;}
			.mui-btn-primary { background: red; border: none;padding: 10px 0px;border-radius: 10px;}
			.infoBox {margin-top:50px ;padding-left: 20px;}
			.formInfo{display: inline-block;height:30px;line-height: 40px;margin-top:6px; float: left;}
			.formPic{float: left;}
			.mui-btn{margin: 0;}
		</style>
	</head>

	<body>
		
		<!------header------->
		<header class="mui-bar mui-bar-nav">
			<h1 id="title" class="mui-title">设置</h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
		</header>
		
		<!--nav-->
		<nav class="mui-bar mui-bar-tab">
			<a id="defaultTab" class="mui-tab-item1" href="javascript:;" onclick="T_index()">
				<span class="mui-icon mui-icon-home" style="background: url(img/user0.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">主页</span>
			</a>
			<a class="mui-tab-item1" href="<%=basePath%>chat/index.html">
				<span class="mui-icon" style="background: url(<%=basePath%>img/message.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">沟通</span>
			</a>
			<a class="mui-tab-item1" href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID=${user.id}">
				<span class="mui-icon" style="background: url(<%=basePath%>img/me.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">我</span>
			</a>
			<a class="mui-tab-item1 mui-active" href="javascript:;" onclick="T_SZ()">
				<span class="mui-icon mui-icon-gear" style="background: url(img/set_act.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #11C036;">设置</span>
			</a>
		</nav>
		
		<%-- <!--person info-->
		<div class="infoBox" onclick="T_update()">
			<div class="infPic" onclick="T_userI()"><img src="${user.img }" /> </div>
			<div class="infIn">
				<h4>${user.nickname }<span>(教师)</span></h4>
				<h4></h4>
			</div>
		</div>
		
		<!--form-->
		
		<div class="setForm">
			<a href="javascript:void(0)" onclick="resetPSD()">
				<span class="formPic" style="background-position-y: 8px;"></span>
				<span class="formInfo">修改密码</span>
			</a>
			<a href="javascript:void(0)" onclick="resetPAYPSD()">
				<span class="formPic" style="background-position-y: 8px;"></span>
				<span class="formInfo">修改支付密码</span>
			</a>
			<a href="javascript:void(0)" onclick="bandClass()">
				<span class="formPic" style="background-position-y: -40px;"></span>
				<span class="formInfo">绑定关联班级</span>
			</a>
			<a href="javascript:void(0)" onclick="about()" >
				<span class="formPic" style="background-position-y: -87px;"></span>
				<span class="formInfo">关于</span>
			</a>
		</div> --%>
		<div class="mui-content">
		<ul class="mui-table-view">
	        <li class="mui-table-view-cell"  onclick="resetPSD()">
	            <a class="mui-navigate-right">
	                修改登录密码
	            </a>
	        </li>
	        <li class="mui-table-view-cell" onclick="resetPAYPSD()">
	            <a class="mui-navigate-right">
	                修改支付密码
	            </a>
	        </li>
	        <li class="mui-table-view-cell"  onclick="about()">
	            <a class="mui-navigate-right">
	                 关于
	            </a>
	        </li>
	    </ul>
	    </div>	
		<!--open chat-->	
		<div class="mui-content-padded " onclick="loginOut()">
				<button class="mui-btn mui-btn-block mui-btn-primary">退出登录</button>
		</div>
  </body>
  <script type="text/javascript">
  	function T_update(){
		var accountID = $("#accountID").val();
		window.location.href="<%=basePath%>Account/findUserInfoByAccountIDTurnUpdate.html?accountID="+accountID;
	}
	
   $(function(){
       <%--  $.ajax({
		url : "<%=basePath%>Account/getbang.html",
		dataType:"json",
		type:"POST",
		async:false,
		success:function(data){
				for(var i=0;i<data.length;i++){
				tb = "<h4>"+data[1].xxname+"</h4>"
				}
				$(".infIn").append(tb);
				}
			}) --%>
    });
  </script>
</html>
