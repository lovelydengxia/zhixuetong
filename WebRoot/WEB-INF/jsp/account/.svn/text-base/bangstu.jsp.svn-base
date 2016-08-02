<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>绑定子女</title>
		<script src="js/mui.min.js"></script>
		<link href="css/mui.min.css" rel="stylesheet" />
		<link href="css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="css/basic.css" />
		<script type="text/javascript" src="js/location.js" >
			bChildSus();
		</script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-back:before, .mui-icon-left-nav:before {content: none;}
			.mui-content-padded {width: 90%;margin-left: 5%;position: absolute;bottom:80px;background: #fff;height:45px}
			.mui-btn-primary { background: #11C036; border: none;padding: 8px 0px;position: absolute;height: 45px;}
			select {height: 35px;padding: 0;padding-left: 15px;}
			.mui-input-group{margin-top: 10px;}
			.btns{padding-left: 0  !important;padding-right: 0 !important;}
		</style>
	</head>
	<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav">
			<a class=" mui-icon mui-icon-left-nav mui-pull-left" href="<%=basePath%>Account/findUserInfoByAccountID.html?accountID=${user.id}"><img class="back" src="img/back.png" /></a>
			<h1 id="title" class="mui-title">绑定子女</h1>
		</header>
	<div class="mui-content p-top-5">
			<div class="mui-card">
			    <ul class="mui-table-view" id="bd">
			    	<li >
			    		<h4 class="p-x-15">已绑定学生：</h4>
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
		        <select name="schooldistrict" id="sel1">
		        	
		        </select>
		        <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		    </div>
		        
		    <div class="mui-input-row">
		        <label>班级：</label>
		        <select name="classid" id="sel2">
		        	
		        </select>
		        <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		    </div>
		    
		    
		    
		    <div class="mui-input-row">
		        <label>学生姓名：</label>
		        <input type="text" class="mui-input-clear"  name="name" id="name"/>
		    </div>
		    <div class="mui-input-row">
		        <label>学号：</label>
		        <input type="text" class="mui-input-clear" name="xh" id="xh"/>
		    </div>
		     <div class="mui-input-row">
		        <label>与学生关系：</label>
		        <select name="par" id="par">
		        </select>
		        <!-- <input type="text" class="mui-input-clear"  name="par"/> -->
		    </div>
		</form>
		<div class=" p-x-15">
			<div class="text-center p-y-15">
		    <span style="color:Green;" id="span_error0"></span>
		    <span style="color:red;" id="span_error1">${msg }</span>
		    </div>
			<button class="mui-btn mui-btn-block mui-btn-success" id="sbmit">添加</button>
		</div>
		</div>

</body>
<script type="text/javascript" src="<%=basePath%>js/jquery.mobile.custom.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js" ></script>
<script src="<%=basePath %>layer/layer.js"></script>
<script type="text/javascript">
	var flag=0;
	//获取学校校区班级等信息，方便绑定信息
	
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
		//获取已绑定的学生信息
			
			$.ajax({
				url : "<%=basePath%>Account/getbang2.html",
				dataType:"json",
				type:"POST",
				async:false,
				success:function(data){
					$.each(data,function(i,item){
						$("#bd").append('<li class="mui-table-view-cell"> <span><input type="hidden" class="classid" value="'+item.sid+'" /> '+item.xxname+' '+item.xqmc+' '+item.bjmc+' '+item.name+'</span><span onclick="delete1('+item.sid+')" class="mui-icon mui-icon-closeempty closes deletebt1"></span></li>');
					})
					
				
				}
			})
			//获取亲子关系
			$.ajax({
				url : "<%=basePath%>register/getParetnthood.html",
				dataType:"json",
				type:"POST",
				async:false,
				success:function(data){
					$.each(data,function(i,item){
						$("#par").append("<option value='"+item.name+"'>" + item.name+ "</option>");;
					})
				}
			})
			
		})
	//验证学号是否存在
	$("#xh").blur( function () {  
		var xh= $('#xh').val();
		var name=$('#name').val();
		var classid=$('#sel2').val();
		$.ajax({
			url:"<%=basePath%>register/yzxh.html",
			type:"post",
			data:{xh:xh,name:name,classid:classid},
			datatype:"text",
			success:function(data){
				if(data=="信息正确"){
					flag=1;
					$("#span_error0").text(data);
					$("#span_error1").text("");
				}else{
					flag=2;
					$("#span_error1").text(data);
					$("#span_error0").text("");
				}
			}
		})
	});
	
	//提交表单
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
		else if(flag!=1){
			$("#span_error1").text("请输入正确学号信息");
			$("#span_error0").text("");
		}
		else{
		$("#subForm").attr("action","<%=basePath%>Account/step32.html");
		$("#subForm").submit();
		}	
		})

			
	})
		$(function(){
		
		})
		
		function delete1(sid){
			<%-- href="<%=basePath%>Account/deletebang2.html?sid='+item.sid+'" --%>
		var btnArray = ['否','是'];
			mui.confirm('是否删除？','系统消息',btnArray,function(e){
		if(e.index==1){
		 	window.location.href="<%=basePath%>Account/deletebang2.html?sid="+sid; 
			}	
		})
							
	}//
</script>
</html>
