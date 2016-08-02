<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.piend.FastPay.bean.Account"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
Account account = (Account)session.getAttribute("user");
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title>教师主页</title>
<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/swiper.min.css" />
<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/swiper.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/location.js"></script>
<script type="text/javascript">
			window.onload = function() {
				var mySwiper1 = new Swiper('#header', {
					freeMode: true,
					slidesPerView: 'auto',
				});
				if ($('.lunbo').length === 1) {
					var mySwiper2 = new Swiper('#banner', {
						autoplay: 5000,
						visibilityFullFit: true,
						loop: false,
					});
				} else {
					var mySwiper2 = new Swiper('#banner', {
						autoplay: 5000,
						visibilityFullFit: true,
						loop: true,
						pagination: '.pagination',
					});
				}
				var tabsSwiper = new Swiper('#tabs-container', {
					speed: 500,
					onSlideChangeStart: function() {
						$(".tabs .active").removeClass('active')
						$(".tabs a").eq(tabsSwiper.activeIndex).addClass('active')
					}
				})
				$(".tabs a").on('touchstart mousedown', function(e) {
					e.preventDefault()
					$(".tabs .active").removeClass('active')
					$(this).addClass('active')
					tabsSwiper.slideTo($(this).index())
				})
				$(".tabs a").click(function(e) {
					e.preventDefault()
				})
				$("#cheng-ji-system").click(function(){
					window.location.href="<%=basePath%>grade/getTestName.html";
				});
			}
			
			//考勤
			function T_kq(){
			    window.location.href="<%=basePath%>kaoqin/list.html";
			}
		
		</script>
<script src="<%=basePath%>js/mui.min.js"></script>
<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
<style type="text/css">
.mui-icon-home:before,.mui-icon-contact:before,.mui-icon-gear:before {
	content: none;
}

.mui-bar-tab {
	background-color: #fff;
}

#banner {
	width: 100%;
	height: 120px;
	overflow: hidden;
	position: relative;
}

#banner .swiper-slide {
	position: relative;
	text-align: center;
}

#banner img {
	width: 100%;
	max-height: 120px;
}

.pagination {
	width: 100%;
	position: absolute;
	z-index: 20;
	bottom: 5px;
	text-align: center;
}
</style>
</head>

<body>
	<!--nav-->
	<nav class="mui-bar mui-bar-tab"> 
		<a id="defaultTab" class="mui-tab-item1 mui-active" href="javascript:void(0)" onclick="T_index()"> 
			<span class="mui-icon mui-icon-home" style="background: url(<%=basePath%>img/user_act.png) no-repeat; background-size: 100%;"></span>
			<span class="mui-tab-label" style="color: #11C036;">主页</span>
		</a> 
		<a class="mui-tab-item1" href="<%=basePath%>chat/index.html">
				<span class="mui-icon" style="background: url(<%=basePath%>img/message.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">沟通</span>
		</a>
		<a class="mui-tab-item1" href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID=${user.id}">
				<span class="mui-icon" style="background: url(<%=basePath%>img/me.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">我</span>
		</a>
		<a class="mui-tab-item1" href="javascript:void(0)" onclick="T_SZ()"> 
			<span class="mui-icon mui-icon-gear" style="background: url(<%=basePath%>img/set.png) no-repeat; background-size: 100%;"></span>
			<span class="mui-tab-label" style="color: #929292;">设置</span> 
		</a> 
	</nav>
	<header class="mui-bar mui-bar-nav">
			<h1 id="title" class="mui-title">主页</h1>			
		</header>
	<!--person info-->
	<%-- <form action="<%=basePath%>Account/findUserInfoByAccountID.html" id="addForm" method="post"> --%>
	<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
	<%-- <div class="infoBox userB"  style="margin-top: 50px;" onclick="T_userI()">
		<div class="infPic">
			<img src="${user.img }" />
		</div>
		<div class="infIn">
			<h4>
				${user.nickname }<span>(教师)</span>
			</h4>
			
		</div>
	</div> --%>
		<!--picture range-->
		
	<div id="banner">
		<div class="swiper-wrapper">
			
				<s:forEach items="${imgs }" var="img">  <div class="swiper-slide lunbo"> <img src="${img }" />	</div></s:forEach>
		
<!-- 			<div class="swiper-slide lunbo"> -->
<!-- 				<img src="<%=basePath%>img/1.jpg" /> -->
<!-- 			</div> -->
		</div>
		<div class="pagination"></div>
	</div>
	<!-- </form> -->
	<!--detial-->
	<div class="bannerBox">
			<div class="bannerSingle" onclick="T_kq()"><img src="<%=basePath%>img/u23.png" width="53px" height="50px"/><br/><span>考勤</span></div>
			<div class="bannerSingle" onclick="T_cj()" id="cheng-ji-system"><img src="<%=basePath%>img/u25.png" width="53px" height="50px"/><br/><span>成绩</span></div>
			<div class="bannerSingle" onclick="T_kc()"><img src="<%=basePath%>img/u27.png" width="53px" height="50px"/><br/><span>课表</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>notice/getIn.html"><img src="<%=basePath%>img/u29.png" width="53px" height="50px"/></a><br/><span>通知</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>leave/get.html"><img src="<%=basePath%>img/u55.png" width="53px" height="50px"/></a><br/><span>请假</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>work/getWorkByTeacher.html"><img src="<%=basePath%>img/u56.png" width="53px" height="50px"/></a><br/><span>作业</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>wallet/getIn.html"><img src="<%=basePath%>img/u57.png" width="53px" height="50px"/></a><br/><span>钱包</span></div>
			<div class="bannerSingle"><a href="<%=basePath%>article/getActivity.html"><img src="<%=basePath%>img/star.png" width="53px" height="50px"/></a><br/><span>活动</span></div>
			<div class="clear"></div>
		</div>

	<!--- class active--->
<!-- 	<div class="classActive" onclick="T_active()">
		<img src="" /><span>班级活动</span>
	</div> -->
	<!--tongzhi -->
	<div class="tongzhi" id="notice">

	</div>
	<!---->

<script type="text/javascript">
	function T_cj(){
		/* $("#start").click(function(){ */
		$("#cheng-ji-submit").attr("action","<%=basePath%>grade/getGradeByTestName.html");
		$("#cheng-ji-submit").submit;
	/* }) */
	}
	
	function T_kc(){
		window.location.href="<%=basePath%>schedule/getTeacher.html";
	}

	function T_active(){
	    window.location.href="";
	}

	function T_userI(){
		var accountID = $("#accountID").val();
		window.location.href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID="+accountID;
	}
	function T_SZ(){
		window.location.href="<%=basePath%>Account/getsettea.html";
	};
	function T_index(){
		window.location.href="<%=basePath%>Account/getindextea.html";
	}
	function JTX(){
		window.location.href="<%=basePath%>homeschool/getIn.html";
	}

</script>
</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$(function(){

	$.ajax({
		url:"<%=basePath%>notice/getAll.html",
		type:"POST",
		dataType:"json",
		success:function(data){
		for(var i=0 ; i < 3; i++){

				 $("#notice").append("<div><a href='<%=basePath%>notice/getById.html?id="+data[i].id+"' class='tongzhiList'><img src='<%=basePath%>img/clock.png' /><p>"+data[i].context+"</p></a><div>");
		}
	
	}
});

       <%-- $.ajax({
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