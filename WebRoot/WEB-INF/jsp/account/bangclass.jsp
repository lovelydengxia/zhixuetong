<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>绑定班级</title>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="<%=basePath%>stylesheet" href="css/basic.css" />
		
		<script type="text/javascript" src="js/location.js" >
			bclassSus();
		</script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.mui-content-padded {width: 90%;margin-left: 5%;position: absolute;bottom:80px;background: #fff;}
			.mui-btn-primary { background: #11C036; border: none;padding: 8px 0px;position: absolute;}
			select {height: 35px; padding: 0;padding-left: 15px;}
			.mui-input-group{margin-top: 10px;}
			.btns{padding-left: 0  !important;padding-right: 0 !important;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class=" mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID=${user.id}"><img class="back" src="img/back.png" /></a>
			<h1 id="title" class="mui-title">绑定班级</h1>
		</header>
	<!--form-->
		<!-- <div class="bannerP bannerP1" style="margin-top: 50px;">请选择班级</div> -->
		<div class="mui-content p-top-5">
			<div class="mui-card">
			    <ul class="mui-table-view" id="bd">
			    	<li >
			    		<h4 class="p-x-15">已绑定班级：</h4>
			    	</li>
			        
			    </ul>
			</div>
		    <form class="mui-input-group" action=" " method="post" id="subForm">
		    <div class="mui-input-row">
		        <label>学校：</label>
		        <select name="school" id="sel0">
		        	
		        </select>
		        <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		    </div>
		    <div class="mui-input-row">
		        <label>校区：</label>
		        <select name="" id="sel1">
		        	
		        </select>
		        <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		    </div>
		        
		    <div class="mui-input-row">
		        <label>班级：</label>
		        <select name="classid" id="sel2">
		        	
		        </select>
		        <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		    </div>
		    <ul class="mui-table-view">
		       <li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" style="padding:2px;" href="#">
						<span class="mui-input-row"><label>所教学科：</label></span>
						
					</a>
					<div class="mui-collapse-content">
				
					<s:forEach items="${infos }" var="sub">
						<div class="mui-input-row mui-checkbox ">
							<label>${sub.name }</label>
							<input  type="checkbox" name="subfxk" value="${sub.cid }">
						</div>
					</s:forEach>
					<!-- <div class="mui-input-row mui-checkbox ">
							<label>语文</label>
							<input  type="checkbox" name="subfxk" value="313">
						</div>
						<div class="mui-input-row mui-checkbox ">
							<label>数学</label>
							<input  type="checkbox" name="subfxk" value="314">
						</div>
						<div class="mui-input-row mui-checkbox " >
							<label>英语</label>
							<input  type="checkbox" name="subfxk" value="315">
						</div>
						<div class="mui-input-row mui-checkbox ">
							<label>物理</label>
							<input  type="checkbox" name="subfxk" value="316">
						</div>
						<div class="mui-input-row mui-checkbox ">
							<label>化学</label>
							<input  type="checkbox" name="subfxk" value="317">
						</div>
						<div class="mui-input-row mui-checkbox ">
							<label>生物</label>
							<input  type="checkbox" name="subfxk" value="318">
						</div> -->
				
					</div>
				</li>
		        
		    </ul>
		    
		    
		    
		    
		    
		    <div class="mui-input-row">
		        <label>是否班主任：</label>
		        <select name="ishead">
		        	<option value="0">否</option>
		        	<option value="1">是</option>
		        </select>
		    </div>
		    
		</form>
		<div class="text-center p-y-15"><span style="color:red;" id="msg">${msg }</span></div>
		<div class="p-x-15">
			<button class="mui-btn mui-btn-block mui-btn-success" id="sbmit">添加</button>
		</div>
		</div>

</body>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.mobile.custom.js" ></script>

<script src="<%=basePath %>layer/layer.js"></script>
<script type="text/javascript">
	$.ajax({
			url:"register/getschool.html",
			type:"POST",
			dataType:"json",
			success:function(data){
				$("#sel0").html("");
				$("#sel0").html("<option value=''>" + "请选择"+ "</option>");
				$.each(data,function(i,item){
					$("#sel0").append("<option value='"+item.id+"'>"+item.xxname+"</option>");
				})
			}
		})
			
			$("#sel0").on("change",function() {
				$("#sel1").html("");
				$("#sel2").html("");
				var xxid = $("#sel0").val();
				$.ajax({
				url:"register/getDistrict.html",
				type:"POST",
				data : {id : xxid},
				dataType:"json",
				success:function(data){
					$("#sel1").html("");
					$("#sel1").html("<option value=''>" + "请选择"+ "</option>");
					$.each(data,function(i,item){
					$("#sel1").append("<option value='"+item.id+"'>"+item.xqmc+"</option>");
				})
				}
			})
			})
			
		
  			$("#sel1").on("change",function() {
				$("#sel2").html("");
				var xqid = $("#sel1").val();
				$.ajax({
					url : "register/getClassByDistrictId.html",
					type : "POST",
					data : {id : xqid},
					dataType : "json",
					success : function(data) {
							$("#sel2").html("");
							$.each(data, function(i, item) {
							$("#sel2").append("<option value='"+item.cid+"'>" + item.bjmc+ "</option>");
						})
					}
				})
			})
	
			
	$(function(){
		
	$.ajax({
		url : "<%=basePath%>Account/getbang.html",
		dataType:"json",
		type:"POST",
		async:false,
		success:function(data){
			$.each(data,function(i,item){
				$("#bd").append('<li class="mui-table-view-cell"> <span> <input type="hidden" id="classid" value="'+item.cid+'" />'+item.xxname+' '+item.xqmc+' '+item.bjmc+' '+item.subname+   '</span><span id="deletebt" onclick="delete1('+item.cid+',' +item.subid+'         )" class="mui-icon mui-icon-closeempty closes "></span></li>');
				});
				}
			})
		})
	$(function(){
	$("#sbmit").click(function(){
		var chk_value =[]; 
		var claid=$("#sel2").val();
		var xqid=$("#sel1").val();
		var xxid=$("#sel0").val();
		$('input[name="subfxk"]:checked').each(function(){
		chk_value.push($(this).val());
		});
		if(xxid==null || xxid==""){
			$("#msg").text("请选择学校信息");
		} 
		else if(xqid==null || xqid==""){
			$("#msg").text("请选择校区信息");
		}
		else if(claid==null || claid==""){
			$("#msg").text("请选择班级信息");
		}
		else if(chk_value.length==0){
			$("#msg").text("请输入学科信息");
		}
		else{
		$("#subForm").attr("action","<%=basePath%>Account/step31.html");
		$("#subForm").submit();
		}	
		})

			
	})
	function delete1(cid,subid){
		var btnArray = ['否','是'];
		mui.confirm('是否删除？','系统消息',btnArray,function(e){
			if(e.index==1){
				window.location.href="<%=basePath%>Account/deletebang.html?cid="+cid+"&subid="+subid;
			}	
		})
		
	<%-- href="<%=basePath%>Account/deletebang2.html?sid='+item.sid+'" --%>
// 		layer.confirm("你确定要删除吗", {
// 		btn :['是','否']
// 		},function(){
// 		window.location.href="<%=basePath%>Account/deletebang.html?cid="+cid;
// 		layer.msg("删除成功",{icon:1});
							    	
// 		});
}
</script>
</html>
