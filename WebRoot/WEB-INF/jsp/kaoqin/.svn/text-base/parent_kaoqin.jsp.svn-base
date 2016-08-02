<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>考勤记录</title>
		
		<link href="<%=basePath %>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath %>css/style.css" rel="stylesheet" />
		<script src="<%=basePath %>js/mui.min.js"></script>
		<script src="<%=basePath %>js/jquery-1.10.1.min.js"></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		    // 考勤详情
			function detial(id){ 
			    window.location.href="<%=basePath%>kaoqin/details.html?id="+id;
			}
		</script>
		<style type="text/css">
			body {background-color: #fff;}
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">考勤记录</h1>
		</header>
	<!--content-->
	<!--下拉刷新容器-->
		<div id="pullrefresh" class="mui-content mui-scroll-wrapper">
			<div class="mui-scroll">
				<!--数据列表-->
				<ul class="mui-table-view mui-table-view-chevron">
					
				</ul>
			</div>
		</div>
		<%-- <div class="infoBox" style="margin-top: 55px;height: auto;width: auto;">
			<div class="logBox">
			
		<c:forEach items="${page}" var="bean" >
		
				<div class="logList">
					<span class="logTime">
					<fmt:formatDate value="${bean.starttime}" pattern="yyyy-MM-dd HH:mm"/></span>
					<div class="logPic"><img src="<%=basePath%>img/1.jpg" onclick="detial(${bean.id})" /></div>
					<p>${bean.memo }</p>
				</div>
		 </c:forEach>
				
			</div>
		</div> --%>

		<script>
			 mui.init({
				pullRefresh: {
					container: '#pullrefresh',
					
					up: {
						contentrefresh: '正在加载...',
						callback: pullupRefresh
					}
				}
			});
	
			var count = 0;
			/**
			 * 上拉加载具体业务实现
			 */
			 var  pageSize=0;
			 var xgh = ${sessionScope.user.xgh};
			function pullupRefresh() {
				setTimeout(function() {					
					pageSize+=5;
					mui.ajax("<%=basePath%>kaoqin/parentajaxlist.html?pageSize="+pageSize+"&xgh="+xgh,{
										
					dataType:'json',//服务器返回json格式数据
					type:'post',//HTTP请求类型
					timeout:10000,//超时时间设置为10秒；
					success:function(list){
						console.log(list.data[1]);
						mui('#pullrefresh').pullRefresh().endPullupToRefresh((++count > 2)); //参数为true代表没有更多数据了。
						var table = document.body.querySelector('.mui-table-view');
						var cells = document.body.querySelectorAll('.mui-table-view-cell');
						
						for (var i = cells.length, len = i + 5; i < len; i++) {
						
						var li = document.createElement('li');
						li.className = 'mui-table-view-cell';
						li.innerHTML = '<div class="logBox detial" did='+list.data[i].id+'>'
						+'<div class="logList">'
							+'<div  class="logPic detial"  did='+list.data[i].id+'><img src="<%=basePath%>kaoqin/'+list.data[i].images+'" onclick="detial('+list.data[i].id+')"/> </div>'
							+'<p  >'+ (list.data[i].name) +'于'+(list.data[i].time)+'出入了校门</p>'
							+'<span class="logTime">'+ (list.data[i].starttime) +'</span>'
						+'</div></div>';
						table.appendChild(li);}
							$(".detial").bind("tap",function(){
				id = $(this).attr("did");
			    window.location.href="<%=basePath%>kaoqin/details.html?id="+id;
			    });
					
					},
					error:function(list){
						//异常处理；
						
						console.log(list);
					}
				});
					
				}, 1);
			}
			if (mui.os.plus) {
				mui.plusReady(function() {
					setTimeout(function() {
						mui('#pullrefresh').pullRefresh().pullupLoading();
					}, 1);

				});
			} else {
				mui.ready(function() {
					mui('#pullrefresh').pullRefresh().pullupLoading();
				});
			} 
			console.log($(".detial"));
		</script>
	</body>
</html>
