<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>添加朋友</title>
		<script src="<%=basePath %>js/mui.min.js"></script>
		<link href="<%=basePath %>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath %>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath %>css/basic.css" />
		<script type="text/javascript" src="<%=basePath %>js/location.js" >
			addFD();
		</script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.mui-content-padded {width: 90%;margin-left: 5%;margin-top: 130px;background: #fff;}
			.mui-btn-primary { background: #11C036; border: none;padding: 5px 0px;}
			.addList span{margin-left: 15px;}
			a.addBtn{padding: 3px 8px;width: 40px; text-align: center; font-size: 0.6em;margin-right: 2px;} 
			.addList{height: 60px; border-bottom: 1px solid #ccc;}
			a.addBtn-no{background: red;margin-right: 2px;}
			.addList img {
			    float: left;
			    width: 30px;
			    height: 30px;
			    margin-left: 10px;
			    margin-top: 10px;
			}
		</style>
	</head>
	<body>
	<!--header-->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath %>img/back.png" /></a>
			<h1 id="title" class="mui-title">新的朋友</h1>
			<h1 class="mui-title leftTitle"><a href="<%=basePath %>chat/findFriend.html">添加朋友</a></h1>
		</header>
	<!--input chengji-->
		<div class="addListBox" id="applyList">
			<%-- <div class="addList">
				<img src="<%=basePath %>img/user0.png" />
				<span>张三请求添加您为好友</span>
				<a class="Btn added">通过</a>
				<a class="Btn addBtn addBtn-no">拒绝</a>
			</div>
	
			<div class="addList">
				<img src="<%=basePath %>img/user0.png" />
				<span>张三</span>
				<a class="Btn addBtn" >通过</a>
				<a class="Btn addBtn addBtn-no">拒绝</a>
			</div> --%>
		</div>
	</body>
	<script type="text/javascript" src="<%=basePath %>js/jquery-1.10.1.min.js" ></script>
	<script type="text/javascript">
		var thisId = ${user.id};
		/**
		追加项目
		*/
		function addItem(cont, data){

			var _div1 =$('<div class="addList"></div>');
			var _img1 =$('<img src="<%=basePath %>img/user0.png" />');
			_div1.append(_img1);
			var _span3 
			if (data.toId == thisId) {
				_span3 =$('<span>'+data.fromName+'请求添加您为好友</span>');
			}else{
				_span3 = $('<span>您请求添加'+data.toName+'为好友</span>');
			}
		
			_div1.append(_span3);
			if(data.status == 0){
				if (data.toId == thisId) {
					var _a1 =$('<a class="Btn addBtn " data-id="'+data.id+'"  href="javascript:void(0)" onclick="agree(this)">通过</a>');
					var _a2 =$('<a class="Btn addBtn addBtn-no" data-id="'+data.id+'"  href="javascript:void(0)" onclick="disagree(this)">拒绝</a>');
					_div1.append(_a1);
					_div1.append(_a2);
				}else{
					var _a1 =$('<a class="Btn added" data-id="1">待审中</a>');
					_div1.append(_a1);
				};
				
			}else if (data.status == 1) {
				var _a1 =$('<a class="Btn added" data-id="1">已通过</a>');
				_div1.append(_a1);
			}else if (data.status == 2) {
				var _a1 =$('<a class="Btn added" data-id="1">已拒绝</a>');
				_div1.append(_a1);
			}else{
				return;
			}
			
			cont.append(_div1);

		}

		/**
		获取项目
		*/
		function getItem () {
			$.ajax({
				type:"get",
				url:"<%=basePath%>chat/addFriendIndexData.html",
				async:true,
				success:function(dataString){
					var data = JSON.parse(dataString);	
					var _div = $('#applyList');	
					_div.empty();			
					$.each(data, function(dataIndex,dataItem) {
						addItem(_div,dataItem);
					});
				}
			});
		}

		function agree (e) {
			var _id = $(e).data("id");
			$.ajax({
				type:"get",
				url:"<%=basePath%>chat/applyFriendAgree.html?id="+_id,
				async:true,
				success:function(dataString){
					getItem();
				}
			});		
		}

		function disagree (e) {
			var _id = $(e).data("id");
			$.ajax({
				type:"get",
				url:"<%=basePath%>chat/applyFriendDisagree.html?id="+_id,
				async:true,
				success:function(dataString){
					getItem();
				}
			});		
		}

		$(document).ready(function(){
			getItem();
		});

	</script>
</html>
