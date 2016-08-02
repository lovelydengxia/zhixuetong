<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	//TODO
	String basePath2 = "http://"
			+ request.getServerName() + ":8282" 
			+ path + "/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>联系人</title>
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-card .mui-control-content {
				padding: 10px;
			}
			body{background: #fff;}

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
			.mui-bar-tab{background: #fff;}
			.mui-bar-tab .mui-icon{margin-bottom: -5px!important;}
		</style> 
	</head>

	<body>
		<!--header-->
		<header class="mui-bar mui-bar-nav">
			<h1 id="title" class="mui-title">联系人</h1>
			<h1 id="title" class="mui-title leftTitle"><a href="<%=basePath2%>chat/addGroup.html">新建群组</a></h1>
			
		</header>
		<div>
			<div style="padding: 10px 10px; margin-top: 50px;">
				<div id="segmentedControl" class="mui-segmented-control mui-segmented-control-positive">
					<a class="mui-control-item mui-active" href="#item1">联系人</a>
					<a class="mui-control-item" href="#item2">消息列表</a>
				</div>
			</div>
<div id="item1" class="mui-control-content mui-active">
	<!--左边-->
			<div class="conLeft" style="margin-top: 5px;">
				<!--添加联系人-->
				<div class="addCntact" onclick="addF()">
					<img src="<%=basePath%>img/teacher.png" /><span>添加新朋友</span>
				</div>
				<!--群组-->
<!-- 				<div class="groupCntact" onclick="groupList()"><img src="img/teacher.png" /><span class="qunzhu">群主</span></div> -->
				<!--联系人列表-->
				<div class="contactList">
					<div class="mui-card" style="border-left: none;border-right: none;">
						<ul class="mui-table-view" style="border-radius: 0px;">
							<li class="mui-table-view-cell mui-collapse">
								<a class="mui-navigate-right" href="#">老师</a>
								<div class="mui-collapse-content" style="background-color: #efeff4;"  id="a1">
									
								</div>
							</li>							
							<li class="mui-table-view-cell mui-collapse">
								<a class="mui-navigate-right" href="#">家长</a>
								<div class="mui-collapse-content" style="background-color: #efeff4;" id="a2">
									
								</div>
								
							</li>
							
							<li class="mui-table-view-cell mui-collapse">
								<a class="mui-navigate-right" href="#">群组</a>
								<div class="mui-collapse-content" style="background-color: #efeff4;"  id="g1">
									
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
</div>
<div id="item2" class="mui-control-content"><ul class="mui-table-view" id="hists">
					</ul></div>
		</div>
		<!--nav-->
 		<nav class="mui-bar mui-bar-tab">
			<a  class="mui-tab-item1 " onclick="toindex()">
				<span class="mui-icon " style="background: url(<%=basePath%>img/user0.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">主页</span>
			</a>
			<a id="defaultTab" class="mui-tab-item1 mui-active" href="<%=basePath%>chat/index.html">
				<span class="mui-icon" style="background: url(<%=basePath%>img/message_act.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #11C036;">沟通</span>
			</a>
			<a class="mui-tab-item1" href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID=${user.id}">
				<span class="mui-icon" style="background: url(<%=basePath%>img/me.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">我</span>
			</a>
			<a class="mui-tab-item1" onclick="toset()">
				<span class="mui-icon " style="background: url(<%=basePath%>img/set.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">设置</span>
			</a>
		</nav> 
		
		
	</body>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
		function getFr(){
			try{
			
				$.get(
				    "<%=basePath%>chat/getFriends.html",
				    function(dataString) {     
				       var data = JSON.parse(dataString);
						var d1 = [];
						var d2 = [];
						var g1 = [];
						$.each(data, function(dataIndex,dataItem) {
						if(dataItem!=null)
							if(dataItem.type!=undefined&&dataItem.type!=null){
								if(dataItem.type=="2"){//老师
									d1.push(dataItem);
								}
								if(dataItem.type=="4"){//家长
									d2.push(dataItem);
								}
								if(dataItem.type=="-1"){//群组
									g1.push(dataItem);
								}
							}
						});
						
						var a1 = $('#a1');
						var a2 = $('#a2');
						var gg = $('#g1');
						a1.empty();
						a2.empty();
						gg.empty();
						addList(a1,d1);
						addList(a2,d2);
						addList(gg,g1);
				    },
				    "text"
				);
// 				$.ajax({
// 					type:"get",
// 					url:"<%=basePath%>chat/getFriends.html",
// 					dataType:'text',
// 					async:true,
// 					success:function(dataString){
// 						var data = JSON.parse(dataString);
// 						var d1 = [];
// 						var d2 = [];
// 						var g1 = [];
// 						$.each(data, function(dataIndex,dataItem) {
// 						if(dataItem!=null)
// 							if(dataItem.type!=undefined&&dataItem.type!=null){
// 								if(dataItem.type=="2"){//老师
// 									d1.push(dataItem);
// 								}
// 								if(dataItem.type=="4"){//家长
// 									d2.push(dataItem);
// 								}
// 								if(dataItem.type=="-1"){//群组
// 									g1.push(dataItem);
// 								}
// 							}
// 						});
						
// 						var a1 = $('#a1');
// 						var a2 = $('#a2');
// 						var gg = $('#g1');
// 						a1.empty();
// 						a2.empty();
// 						gg.empty();
// 						addList(a1,d1);
// 						addList(a2,d2);
// 						addList(gg,g1);
// 					},
// 					error:function(){
// 						getFr();
// 					}
// 				});
			}catch (e) {
				getFr();
			}
		}
		$(document).ready(function(){
			getFr();
			getMsg();
		});
	
		function addList(cont,data){
			$.each(data, function(dataIndex,dataItem) {
				addItem(cont,dataItem);
			});
		}
		
		function addItem(cont,data){
			var _div1 =$('<div class="kaoqingBox T_kaoqingList"></div>');
			var _div2 =$('<div class="kqBanner kqnormol" data-id="'+data.id+'"  data-type="'+data.type+'" data-name="'+data.name+'" onclick="gotoChat(this)"></div>');
			var _div3 =$('<span class="kqLogo"></span>');
			var _div4 =$('<span>'+data.name+'</span>');
				
			_div1.append(_div2);
			_div2.append(_div3);
			_div2.append(_div4);
			
			cont.append(_div1);
		}
		
		function gotoChat(e){
			var _id = $(e).data("id");
			var _type = $(e).data("type");
			var _name = $(e).data("name");
			window.location.href='<%=basePath2%>chat/chat.html?'+
				'id='+_id+'&type='+_type+'&name='+encodeURI(encodeURI(_name));
		}
		
		function addF(){
			window.location.href='<%=basePath%>chat/applyFriendList.html';
		}
		
		function toindex(){
			var zhtype = ${user.zhtype};
			if(zhtype=='2'){
				window.location.href='<%=basePath%>grade/turn.html';
			}
			else{
				window.location.href='<%=basePath%>parent/get.html';
			}
		}
		
		function toset(){
			var zhtype = ${user.zhtype};
			if(zhtype=='2'){
				window.location.href='<%=basePath%>Account/getsettea.html';
			}
			else{
				window.location.href='<%=basePath%>Account/getsetpar.html';
			}
		}
		
		function getMsg(){
			try{
			 $.get(
			    "<%=basePath%>chat/hist.html",
			    function(dataString) {     
			        var _hists = $('#hists');
					_hists.empty();
					var data = JSON.parse(dataString);
					$.each(data, function(dataIndex,dataItem) {
					if(dataItem!=null)
						addItem2(_hists,dataItem);
					});
			    },
			    "text"
			);
// 				$.ajax({
// 					type:"get",
// 					url:"<%=basePath%>chat/hist.html",
// 					dataType:'text',
// 					async:true,
// 					success:function(dataString){
// 						var _hists = $('#hists');
// 						_hists.empty();
// 						var data = JSON.parse(dataString);
// 						$.each(data, function(dataIndex,dataItem) {
// 						if(dataItem!=null)
// 							addItem2(_hists,dataItem);
// 						});
// 					},
// 					error:function(){
// 						getMsg();
// 					}
// 				});
				setTimeout(getMsg,1000*60);
			}catch (e) {
				getMsg();
			}
		}
		
		function addItem2(cont,data){
			var oDate = new Date(data.ctime); //实例一个时间对象；
			var _li =$('<li class="mui-table-view-cell mui-media" data-id="'+data.dialoguid+'"  data-type="'+data.zhtype+'" data-name="'+data.name+'" onclick="gotoChat(this)"> </li>');
			var _img =$('<img class="mui-media-object mui-pull-left" src="../img/teacher.png">');
			
			var _div =$('<div class="mui-media-body">  </div>');
			var _label =$('<label class="fr-name">'+data.name+'</label>');
			var _p1 =$('<p class="mui-ellipsis">'+data.message+'</p>');
			var _p2 =$('<p class="right">'+oDate.getFullYear()+'-'+(oDate.getMonth()+1)+'-'+
			oDate.getDate()+'  '+
			oDate.getHours()+':'+
			oDate.getMinutes()+':'+
			oDate.getSeconds()+'</p>');
					
			_div.append(_label);   
			_div.append(_p1);   
			_div.append(_p2);          
		
			_li.append(_img);
			_li.append(_div);
			
			cont.append(_li);
		}
		
		
	</script>
</html>
