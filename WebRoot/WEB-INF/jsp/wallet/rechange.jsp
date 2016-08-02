<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title></title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <script src="<%=basePath %>js/mui.min.js"></script>
    <script src="<%=basePath %>js/jquery-1.10.1.min.js"></script>
    <link href="<%=basePath %>css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=basePath %>css/style.css" />
     <style type="text/css">
    	.card-list{
    		background: #FD8D74;
    		border-radius: 5px;
    		margin: 10px;
    		padding: 10px;
    	}
    	.card-list span{
    		font-size: 1.2em;
    	}
    	.color-w{
    		color: #fff;
    	}
    	.mui-input-row{
    		height: 60px !important;
    		padding: 10px 0;
    	}
    	.mui-input-row label{
    		width: 30%;
    	}
    	.mui-input-row input{
    		width: 70%!important;
    	}
		
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
  </head>
  
  <body>
  <header class="mui-bar mui-bar-nav">
		<a class="mui-action-back mui-icon " href="javascript:void(0)"><img class="back" src="<%=basePath %>img/back.png"></a>
		<h1 id="title" class="mui-title">零钱充值</h1>		
	</header>
	<div class="mui-content">
		<form class="mui-input-group" method="post" action="<%=basePath%>alipay/addMoney.html">
		    <div class="mui-input-row">
		        <label>金额</label>
		        <input onchange="xx(this.value)" type="text" name="money" class="mui-input-clear" placeholder="请填写充值金额">
		    </div>
		    <div class="p-x-15 m-top-25">
				<button id="rr" disabled="disabled" type="submit" class="mui-btn mui-btn-block mui-btn-success">确定</button>
			</div>
		</form>
	</div>
  </body>
  <script type="text/javascript">
  	function xx(ee){
  			var reg =/^[0-9]*[1-9][0-9]*$/;
  			if (reg.test(ee)) {
				$('#rr').attr("disabled",false); 
			}else{
				$('#rr').attr("disabled",true); 
			}
  	}
  </script>
</html>
