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
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
		<script type="text/javascript" src="<%=basePath%>js/location.js" >
			addFD();
		</script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.mui-content-padded {width: 90%;margin-left: 5%;margin-top: 130px;background: #fff;}
			.mui-btn-primary { background: #11C036; border: none;padding: 5px 0px;}
			.mui-table-view .mui-media-object.mui-pull-left{margin-right: 20px;}
			.mui-table-view .mui-media-object {
			    line-height: 60px;
			    max-width: 60px;
			    height: 60px;
			}
			.mui-media-body {font-size: 14px;}
			.mui-media-body label{font-weight: 600;margin-right: 5px;}
			textarea{height: 90px;}
			.mui-table-view:before{background-color:#fff;}
			.mui-btn{padding: 4px 8px !important;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">消息验证</h1>
		</header>
	<!--input chengji-->
		<div class="mui-content">
		    <ul class="mui-table-view">
		        <li class="mui-table-view-cell mui-media">
		            <a href="javascript:;">
		                <img class="mui-media-object mui-pull-left" src="<%=basePath%>img/patriarch.png">
		                
		                <ul class="mui-media-body">
		                    <li>
		                    	<label>姓名:</label><span>${nickname }</span>
		                    </li>
		                    <li>
		                    	<label>性别:</label><span>${sex }</span>
		                    </li>
		                    <li>
		                    	<label>电话:</label><span>${phone }</span>
		                    </li>

		                    
		                </ul>
		                <div class="m-top-25">
		                	<p>请输入验证信息：</p>
		                	<textarea class="m-top-5" id='msg'></textarea>
		                	<div>
		                	<div>
		                	<span style="color:red;" id="error"></span>
		                	</div>
		                		<button class="mui-btn mui-btn-success" type="button" data-id="${id }" onclick="apply(this)">发送</button>
		                	</div>
		                </div>
		            </a>
		        </li>
		       
		    </ul>
		</div>

	</body>
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js" ></script>
	<script type="text/javascript">
		function apply (e) {
			var toId = $(e).data('id');
			var msg = $('#msg').val();
			$.ajax({
				type:"get",
				url:"<%=basePath%>chat/applyFriend.html",
				data:{toId:toId,msg:msg},
				async:true,
				success:function(dataString){
					if(dataString=="null"){
						window.location.href="<%=basePath%>chat/applyFriendList.html";
					}
					else{
						$("#error").text(dataString);
					}
					/* alert(dataString);
					var data = JSON.parse(dataString);	
					alert('success'); */
				}
			});
		}
	</script>
</html>
