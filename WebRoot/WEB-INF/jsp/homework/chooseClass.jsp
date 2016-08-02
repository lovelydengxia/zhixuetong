<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>绑定班级</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	  <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath %>js/mui.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>css/zTreeStyle.css">
    <link href="<%=basePath %>css/mui.min.css" rel="stylesheet"/>
    <link href="<%=basePath %>css/style.css" rel="stylesheet" />
    <style>
			html,
			body,
			.mui-content {
				height: 0px;
				margin: 0px;
				background-color: #efeff4;
			}
			h5.mui-content-padded {
				margin-left: 3px;
				margin-top: 20px !important;
			}
			h5.mui-content-padded:first-child {
				margin-top: 12px !important;
			}
			.mui-btn {
				font-size: 16px;
				padding: 8px;
				margin: 3px;
			}
			.ui-alert {
				text-align: center;
				padding: 20px 10px;
				font-size: 16px;
			}
			* {
				-webkit-touch-callout: none;
				-webkit-user-select: none;
			}
			.ztree{
				padding: 15px 55px;
			}
			.mui-checkbox input[type=checkbox]:checked:before {
			    content: '\e442';
			}
			.mui-checkbox input[type=checkbox]:before, .mui-radio input[type=radio]:before {
			    font-family: Muiicons;
			    font-size: 28px;
			    font-weight: 400;
			    line-height: 1;
			    text-decoration: none;
			    color: #aaa;
			    border-radius: 0;
			    background: 0 0;
			    -webkit-font-smoothing: antialiased;
			}
		</style>
    <script type="text/javascript" charset="UTF-8">mui.init();</script>
</head>
<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-icon  mui-pull-left"  href="<%=basePath%>work/getWorkByTeacher.html"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">选择班级</h1>
		</header>
		<div class="mui-content p-top-5">
		    <form class="mui-input-group" action="<%=basePath%>work/addWork2.html" method="post" id="postform">
		    <div class="mui-input-row">
		        <label>选择科目：</label>
		        <select id="sub" name="sub" onchange="getClassInfo(this.value)">
		        	<option value="">请选择相关科目</option>
		        </select>
		    </div>
		    	<!-- <div class="mui-input-row" style="border: none;">
		       	 <label>选择班级：</label>
		        <select id="cla" name="cla">
		        	
		        </select>
		    </div> -->
		    <ul id="treeDemo" class="ztree">
                    <!-- 关系树 -->
                </ul>
		   <!--  <ul class="mui-table-view">
		       <li class="mui-table-view-cell mui-collapse">
					<div class="mui-input-row" style="border: none;">
		       	 <label>选择班级：</label>
		        <select id="cla" name="cla">
		        	
		        </select>
		    </div>
				</li>
		         <li class="mui-table-view-cell mui-collapse">
					<a class="mui-navigate-right" href="#">选择学生:</a>
					<div class="mui-collapse-content">
						<div class="mui-input-row mui-checkbox mui-left" id="stu">
							<label>全选</label>
							<input name="Checkbox" type="checkbox">
						</div>
					</div>
				</li>
		    </ul>-->
		        <div >
					<span id="msg" style="color:red;"></span>
				</div> 
		    <input id="students" name="students" type="hidden">
		     <input id="classinfos" name="classinfos" type="hidden">
		<div class="p-x-15 m-top-25">
			<button type="button" onclick="check()" class="mui-btn mui-btn-block mui-btn-success">确定</button>
		</div>
		</form>
		</div>

</body>

<script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js" ></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.mobile.custom.js" ></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.ztree.core-3.5.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.ztree.excheck-3.5.js"></script>
<script src="<%=basePath %>layer/layer.js"></script>
<script type="text/javascript">
var ztreeObj = null;
function initZtree(data){
	//加载树节点
	var setting = {
		view : {
			selectedMulti : true,
			showIcon:false,
			showLine: false
		},
		check: {
		enable: true,
		chkStyle: "checkbox",
		chkboxType: { "Y": "ps", "N": "ps" }
	},
		data : {
			simpleData : {
				enable : true
			}
		}
	};


	
	 //节点数据
	ztreeObj = $.fn.zTree.init($("#treeDemo"), setting, data);
}


	function check(){
 		var sub=$("#sub").val();
// 		var cla=$("#cla").val();
// 		var stu=$("input:checked").length; 
 		if(sub==null||sub==""||sub=="null"){
 			$("#msg").text("请选择科目");
 		}
// 		else if(cla==null||cla==""||sub=="null"){
// 			$("#msg").text("请选择班级");
// 		}
// 		else if(stu==0||stu==null||sub=="null"){
// 			$("#msg").text("请选择学生");
// 		}else{
// 			$("#postform").submit();
// 		}
		var nodes = ztreeObj.getCheckedNodes(true);
		var ss = [];
		var ss2 = [];
		for(var i = 0 ; i < nodes.length ; i++){
			var node = nodes[i];
			if(!node.isParent){
				ss.push(node.id);
			}
			else{
				ss2.push(node.id);
			}
		}
		var x = '';
		var x2 = '';
		for(var i = 0 ; i < ss.length ; i++){
			x+=',';
			x+=ss[i];
		}
		for(var i = 0 ; i < ss2.length ; i++){
			x2+=',';
			x2+=ss2[i];
		}
		$('#students').val(x.substr(1));
		$('#classinfos').val(x2.substr(1));
		if(x==""||x2==""){
 			$("#msg").text("请选择所教学科的班级或学生");
 		}
		else{
			$('#postform').submit();
		}
	}

function getClassInfo(e){
	$.ajax({
		url : "<%=basePath%>work/getstubysub.html",
		data:{subid:e},
		type : "POST",
		dataType : "json",
		success : function(data) {
			initZtree(data);
		}
	});
}
		$.ajax({
			url : "<%=basePath%>work/getsub.html",
			type : "POST",
			dataType : "json",
			success : function(data) {
				$.each(data, function(i, item) {
				$("#sub").append("<option value='"+item.cid+"'>" + item.name+ "</option>");
				
			})
			}
   			});
			<%-- $("#sub").on("change",function() {
				var subid = $("#sub").val();
				$.ajax({
					url : "<%=basePath%>work/getClass.html",
					type : "POST",
					data : {id : subid},
					dataType : "json",
					success : function(data) {
						$("#cla").html("");
						$.each(data, function(i, item) {
							$("#cla").append("<option value='"+item.cid+"'>" + item.bjmc+ "</option>");
						})
						
						$("#cla").on("change",function() {
						var cid = $("#cla").val();
						$.ajax({
							url : "<%=basePath%>work/getStuByClassId.html",
							type : "POST",
							data : {id : cid},
							dataType : "json",
							success : function(data) {
							$("#stu").html("");
							$.each(data, function(i, item) {
								$("#stu").append('<div class="mui-input-row mui-checkbox mui-left"><label>'+item.xh+' '+item.name+'</label><input  name="stuid" type="checkbox" value="'+item.id+'"></div>');
								})
							}
						})
						})
						
					}
				})
			})
			
			 --%>
	
		
</script>
</html>