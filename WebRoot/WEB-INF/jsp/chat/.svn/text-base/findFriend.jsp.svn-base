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
		<title>添加好友</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before,
			.mui-icon-left-nav:before {
				content: none;
			}
			
			.mui-content-padded {
				width: 90%;
				margin-left: 5%;
				position: absolute;
				bottom: 80px;
				background: #fff;
			}
			
			.mui-btn-primary {
				background: #11C036;
				border: none;
				padding: 8px 0px;
				position: absolute;
			}
			
			select {
				height: 35px;
				margin-top: 10px;
				padding: 0;
				padding-left: 15px;
				border: 1px solid lightgray!important;
			}
			.bannerP2 {padding-left: 0px;background: #fff;border-top: 1px solid lightgray;border-bottom: 1px solid lightgray;}
			.addList span{font-size: 0.6em;margin-left: 15px;}
			a.added,a.addBtn{padding: 3px 8px;width: 40px; text-align: center; font-size: 0.6em;margin-right: 2px;} 
			.addList{height: 60px; border-bottom: 1px solid #ccc;}
			a.addBtn-no{background: red;margin-right: 2px;}
			.addList img {
			    float: left;
			    width: 30px;
			    height: 30px;
			    margin-left: 10px;
			    margin-top: 10px;
			}
			.addListBox {
				margin-top: 10px;
			}
		</style>
	</head>

	<body>
		<!--header-->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">查找好友</h1>
		</header>
		<!--form-->
		<div class="bannerP bannerP1" style="margin-top: 60px;padding-left: 0px;background-color: transparent;font-size: 14px;">请输入用户手机号/姓名进行查找</div>
		<!--input chengji-->
		<div class="searchBox">
			<input type="text" placeholder="请输入关键字" onkeyup="findFriend(this.value)" />
		</div>
		<div class="addListBox" id="findList">
		
		</div>
	</body>
<script type="text/javascript" src="<%=basePath %>js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
	function applyFirend (e) {
		var _id = $(e).data("id");
		window.location.href='<%=basePath%>chat/applyFriendBefore.html?toId='+_id;
	}

	var canFind = true;
	function findFriend (e) {
		if(e!=''){
			if (canFind) {
				e = encodeURI(encodeURI(e));  
				canFind=false;
					$.ajax({
					type:"get",
					url:"<%=basePath%>chat/friendInfo.html?str="+e,
					contentType: "application/x-www-form-urlencoded; charset=utf-8", 
					async:true,
					success:function(dataString){
						var data = JSON.parse(dataString);	
						toids=[];
						var _div = $('#findList');		
						_div.empty();
						$.each(data, function(dataIndex,dataItem) {
							addItem(_div,dataItem);
						});
						canFind=true;
					}
				});
			};
		}
	}
	var toids = [];
	function addItem(cont,data){
		if(toids.length >= 20){
			return;
		}
		if(!checkToids(data.id)){
			return;
		}
		var _div =$('<div class="addList" id="findList"></div>');
		var _img =$('<img src="<%=basePath%>img/user0.png" />');
		var _span =$('<span>'+data.nickname+'</span>');
		var _a =$('<a href="javascript:void(0)" class="Btn addBtn" onclick="applyFirend(this)" data-id="'+data.id+'">添加</a>');
			
		_div.append(_img);	
		_div.append(_span);
		_div.append(_a);

		cont.append(_div);
		
		toids.push(data.id);
	}
	
	function checkToids(str){
		for(var i = 0 ;i < toids.length ; i++){
			if (str==toids[i]) {
				return false;
			}
		}
		
		return true;
	}

</script>
</html>