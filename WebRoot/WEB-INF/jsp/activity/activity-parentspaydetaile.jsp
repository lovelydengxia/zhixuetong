<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
    <%-- <script src="<%=basePath%>js/jquery-1.7.2.min.js" type="text/javascript" charset="utf-8"></script> --%>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="<%=basePath%>css/style.css" />
    <style type="text/css">
    	.pays img{
    		float: left;
    		width: 30px;
    		height: 30px;
    	}
    	.pays label span{
    		display: inline-block;
    		float: left;
    		height: 30px;
    		line-height:30px;
    		margin-left: 5px;
    		font-weight: 500;
    		font-size: 1.3em;
    	}
    	
    </style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class="mui-action-back mui-icon" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">支付详情</h1>
		</header>
		<div class="mui-content">
		    <ul class="mui-table-view m-top-5">
	            <li class="mui-table-view-cell">
	                <span class="left">
	                	学生姓名:
	                </span>
	                <span class="right">
					<select name="student" id="student" onchange="ccc(this)" >
					</select>
	                </span>
	            </li>
	            <li class="mui-table-view-cell">
	                <span class="left">
	                	费用
	                </span>
	                <span class="right mouney-color">￥${chargeItems.fare}元</span>
	            </li>
	        </ul>
	        <div class="mui-input-row mui-checkbox mui-right">
	          
	        </div>
	        <div class="mui-table-view-cell mui-checkbox mui-right">
	        <span>余额</span>
	        <span class="right">￥${user.zfye}元</span>
	        </div>
<%-- 	        <ul class="mui-table-view pays m-top-5">
	            <li class="mui-table-view-cell mui-checkbox mui-right">
	                <label><img src="<%=basePath%>img/zhifubaozhifu.png"/><span>支付宝</span></label>
	          		<input name="checkbox-pay" type="checkbox" >
	            </li>
	            <li class="mui-table-view-cell mui-checkbox mui-right">
	                <label><img src="<%=basePath%>img/weixinzhifu.png"/><span>微信支付</span></label>
	          		<input name="checkbox-pay" type="checkbox" >
	            </li>
	           		          
	        </ul> --%>
	        <div class="p-x-15">
				<a  id="a1" class="mui-btn mui-btn-block mui-btn-success" href="#pay" onclick="go()">去支付</a>
				<a  id="a2" class="mui-btn mui-btn-block mui-btn-success" href="<%=basePath%>wallet/getRechange.html">去充值</a>
			</div>
		</div>
		
		<div id="pay" class="mui-popover mui-popover-action mui-popover-bottom">
			<ul class="mui-table-view">
				<li class="mui-table-view-cell">
					<a href="#pay" class="right"><b class="mui-icon mui-icon-closeempty"></b></a>
				</li>
				<li class="mui-table-view-cell mui-input-row">
					<label>支付密码</label>
		        	<input id="pwd" type="password" maxlength="6" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" class="pay-pwd" placeholder="请输入支付密码">
				</li>
				<li class="mui-table-view-cell ">
					<button class="dd" onclick="checkPwd()">确定支付</button>
				</li>
			</ul>
		</div>
		
		<script>
			if(${chargeItems.fare} > ${user.zfye}){
				$('#a1').hide();
			}else{
				$('#a2').hide();
			}
			$("input[name='checkbox-pay']").on("click",function(){
				$("input[name='checkbox-pay']").attr("checked",false);
				$(this).attr("checked","checked");
			})
			
			function checkPwd(){
			var studentid = $("#student").val();
				$.get(
					"<%=basePath%>article/checkPwd.html",
					{"pwd":$('#pwd').val()},function(data){
						if(data){
							window.location.href="<%=basePath%>article/getSuccess.html?zfye=${user.zfye}&fare=${chargeItems.fare}&userid=${user.id}&id=${article.id}&stuid="+studentid;
						}else{
							mui.alert('密码错误！', '系统消息',null);
						}
					},"json")
				
			}
			
		</script>
</body>
<script type="text/javascript">
	$(function(){
		var userid = ${user.id};
		var articleID = ${article.id};
		$.ajax({
			url:"<%=basePath%>article/getStudentName.html",
			type:"post",
			data:{"userid":userid,"articleID":articleID},
			dataType:"json",
			async:true,
			success:function(data){
				var tbl="";
				for(var i=0;i<data.length;i++){
					tbl +="<option id='"+data[i].id+"' value='"+data[i].id+"' data-paystatus='"+data[i].paymentStatusCD+"'>"+data[i].name+"</option>";
				}
				$("#student").html(tbl);
				ccc('#student');
			},
		});
	});
	function ccc(e){
		var _val = $(e).val();
		var _li = $(e).children('#'+_val).data('paystatus')
        var name= $(e).children('#'+_val).text();
		if(_li=='1'){
			$('#a1').removeAttr('href');
		   mui.alert('您的孩子'+name+'已缴费成功', '系统提示', function() {
				});
		}else{
			$('#a1').attr('href','#pay')
		}
	}
	function go(){
	                      
	}
</script>
</html>