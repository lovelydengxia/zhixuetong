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
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>家长主页</title>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/swiper.min.css" />
		<script type="text/javascript" src="<%=basePath%>js/location.js" ></script>
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/swiper.min.js"></script>
		<script type="text/javascript">
		
		/*轮播图*/
			window.onload = function() {
				var mySwiper1 = new Swiper('#header', {
					freeMode: true,
					slidesPerView: 'auto',
				});
				
				if ($('.lunbo').length===1) {
					var mySwiper2 = new Swiper('#banner', {
					autoplay: 5000,
					visibilityFullFit: true,
					loop: false,
				});
				} else{
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
			}
			/*链接*/
			function Pkq(){
			window.location.href="<%=basePath%>kaoqin/parentlist.html";
			}
			
			function P_cj(){
				window.location.href="<%=basePath%>grade/getParentTestName.html";
			};
			function P_kc(){
				window.location.href="<%=basePath%>schedule/getStudent.html";
			};
			function JTX(){
				window.location.href="<%=basePath%>homeschool/getIn.html";
			};
			
		</script>
		
		<script type="text/javascript" src="<%=basePath%>js/mui.min.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(function(){
				 //mui初始化
				mui.init();
				var subpages = ['about.html', 'about.html', 'about.html'];
				var subpage_style = {
					top: '45px',
					bottom: '51px'
				};
				
				var aniShow = {};

				 //创建子页面，首个选项卡页面显示，其它均隐藏；
				mui.plusReady(function() {
					alert("in");
					var self = plus.webview.currentWebview();
					for (var i = 0; i < 3; i++) {
						var temp = {};
						var sub = plus.webview.create(subpages[i], subpages[i], subpage_style);
						if (i > 0) {
							sub.hide();
						}else{
							temp[subpages[i]] = "true";
							mui.extend(aniShow,temp);
						}
						self.append(sub);
					}
				});
				 //当前激活选项
				var activeTab = subpages[0];
				var title = document.getElementById("title");
				 //选项卡点击事件
				mui('.mui-bar-tab').on('click', 'a', function(e) {
					
					var targetTab = this.getAttribute('href');
					console.info(targetTab);
					console.info(activeTab);
					console.info(targetTab == activeTab);
					if (targetTab == activeTab) {
						return;
					}
					//更换标题
					//title.innerHTML = this.querySelector('.mui-tab-label').innerHTML;
					//显示目标选项卡
					//若为iOS平台或非首次显示，则直接显示
					if(mui.os.ios||aniShow[targetTab]){
						plus.webview.show(targetTab);
					}else{
						//否则，使用fade-in动画，且保存变量
						var temp = {};
						temp[targetTab] = "true";
						mui.extend(aniShow,temp);
						plus.webview.show(targetTab,"fade-in",300);
					}
					//隐藏当前;
					plus.webview.hide(activeTab);
					//更改当前活跃的选项卡
					activeTab = targetTab;
				});
				 //自定义事件，模拟点击“首页选项卡”
			/* 	document.addEventListener('gohome', function() {
					var defaultTab = document.getElementById("defaultTab");
					//模拟首页点击
					mui.trigger(defaultTab, 'tap');
					//切换选项卡高亮
					var current = document.querySelector(".mui-bar-tab>.mui-tab-item.mui-active");
					if (defaultTab !== current) {
						current.classList.remove('mui-active');
						defaultTab.classList.add('mui-active');
					}
				}); */
			});
			function info(){
				var accountID = $("#accountID").val();
				window.location.href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID="+accountID;
			};
			function P_SZ(){
				window.location.href="<%=basePath%>Account/getsetpar.html";
			};
			function P_index(){
				window.location.href="<%=basePath%>Account/getindexpar.html";
			};
			function activity(){
			window.location.href="<%=basePath%>article/getActivityParentsPage.html"
			};
		</script>

		<style type="text/css">
			.mui-icon-home:before,
			.mui-icon-contact:before,
			.mui-icon-gear:before {
				content: none;
			}
			
			.mui-bar-tab{
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
				max-height:120px ;
			
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
			<a id="defaultTab" class="mui-tab-item1 " href="javascript:void(0)" onclick="P_index()">
				<span class="mui-icon " style="background: url(<%=basePath%>img/user_act.png) no-repeat; background-size: 100%;"></span>
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
			<a class="mui-tab-item1" href="javascript:void(0)" onclick="P_SZ()">
				<span class="mui-icon " style="background: url(<%=basePath%>img/set.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">设置</span>
			</a>
		</nav>
			<header class="mui-bar mui-bar-nav">
			<h1 id="title" class="mui-title">主页</h1>			
		</header>
		<!--person info-->
		<%-- <div class="infoBox" onclick="info()" style="padding-left: 20px; margin-top: 50px;">
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
			<div class="infPic"><img src="${user.img }" /></div>
			<div class="infIn">
				<h4>${user.nickname }<span>(家长)</span></h4>
			</div>
		</div> --%>
				<div id="banner">
			<div class="swiper-wrapper">
				<s:forEach items="${imgs }" var="img">
					<div class="swiper-slide lunbo"><img src="${img }" /></div>
				</s:forEach>
<!-- 				<div class="swiper-slide lunbo"><img src="<%=basePath%>img/1.jpg" /></div> -->
			</div>
			<div class="pagination"></div>
		</div>
		<!--detial-->
		<div class="bannerBox">
			<div class="bannerSingle" onclick="Pkq()"><img src="<%=basePath%>img/u23.png" width="53px" height="50px"/><br/><span>考勤</span></div>
			<div class="bannerSingle" onclick="P_cj()" id="cheng-ji-system"><img src="<%=basePath%>img/u25.png" width="53px" height="50px"/><br/><span>成绩</span></div>
			<div class="bannerSingle" onclick="P_kc()"><img src="<%=basePath%>img/u27.png" width="53px" height="50px"/><br/><span>课表</span></div>
			<div class="bannerSingle" ><a href="<%=basePath %>notice/getIn.html"><img src="<%=basePath%>img/u29.png" width="53px" height="50px"/></a><br/><span>通知</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>leave/getP.html"><img src="<%=basePath%>img/u55.png" width="53px" height="50px"/></a><br/><span>请假</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>work/homeworklistpar.html"><img src="<%=basePath%>img/u56.png" width="53px" height="50px"/></a><br/><span>作业</span></div>
			<div class="bannerSingle"><a href="<%=basePath %>wallet/getIn.html"><img src="<%=basePath%>img/u57.png" width="53px" height="50px"/></a><br/><span>钱包</span></div>
			<div class="bannerSingle"><a href="<%=basePath%>article/getActivityParentsPage.html"><img src="<%=basePath%>img/star.png" width="53px" height="50px"/></a><br/><span>活动</span></div>
			<div class="clear"></div>
		</div>
		<!--picture range-->

		<!--- class active--->
<%-- 		<div class="classActive" onclick="activity()">
			<img src="<%=basePath%>img/star.png" /> <span>班级活动</span>
		</div> --%>
		<!--tongzhi -->
		<div class="tongzhi" id="notice">
			
			
		</div>
		<!---->
	</body>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url:"<%=basePath%>notice/getAll.html",
		type:"POST",
		dataType:"json",
		success:function(data){
		for(var i=0 ; i < 3; i++){
	 $("#notice").append("<a href='<%=basePath%>notice/getById.html?id="+data[i].id+"' class='tongzhiList'><img src='<%=basePath%>img/clock.png' /><p>"+data[i].context+"</p></a>");
		}
	
	}
});
});

   <%-- $(function(){
        $.ajax({
		url : "<%=basePath%>Account/getbang2.html",
		dataType:"json",
		type:"POST",
		success:function(data){
		for(var i=0;i<data.length;i++){
		tb = "<h4>"+data[0].xxname+"</h4>"
	         }
		$(".infIn").append(tb);
		}
			})
    }); --%>
</script>
</html>