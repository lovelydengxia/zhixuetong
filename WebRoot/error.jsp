<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
    <style type="text/css">
    	.mui-bar {
			    position: fixed;
			    z-index: 10;
			    right: 0;
			    left: 0;
			    top: 0;
			    height: 44px;
			    padding-right: 10px;
			    padding-left: 10px;
			    border-bottom: 0;
			    background-color: #34cb3a;
			    -webkit-box-shadow: 0 0 1px rgba(0,0,0,.85);
			    box-shadow: 0 0 1px rgba(0,0,0,.85);
			    -webkit-backface-visibility: hidden;
			    backface-visibility: hidden;
			}
			.mui-title {
			    font-size: 1.1em;
			    font-weight: 500;
			    line-height: 44px;
			    position: absolute;
			    display: block;
			    width: 100%;
			    margin: 0 -10px;
			    padding: 0;
			    text-align: center;
			    white-space: nowrap;
			    color: #fff;
			}
			.content{margin-top: 120px; text-align: center;}
			.btn-box{text-align: center;margin-top: 30px;}
			.btn-box a{
				display: inline-block; 
				background: #34cb3a;
				color: #fff;
				padding: 15px 25px;
				border-radius: 5px;
				text-decoration: none;
			}
    </style>
</head>
<body>
		<header class="mui-bar mui-bar-nav">
<!--			<a class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left" href="javascript:void(0)"><img class="back" src="img/back.png" /></a>-->
			<h1 id="title" class="mui-title">系统错误</h1>
		</header>
		<div class="content">
			<img src="<%=basePath%>img/err.png" width="80" />
			<div class="btn-box">
				<a href="/SSPhone/">返回主页</a>
			</div>
		</div>
</body>
</html>