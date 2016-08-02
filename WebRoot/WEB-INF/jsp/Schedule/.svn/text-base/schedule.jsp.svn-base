<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>家长课程表</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
<script src="<%=basePath%>js/mui.min.js"></script>
<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
<link href="<%=basePath%>css/style.css" rel="stylesheet" />
<link rel="stylesheet" href="<%=basePath%>css/basic.css" />
<script type="text/javascript" charset="UTF-8">
	mui.init();
</script>
<style type="text/css">
.mui-icon-back:before,.mui-icon-left-nav:before {
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
	font-size:24px;
	color: #11C036;
	border-bottom: 1px solid gray;
	height: 30px;
}

select {

	padding: 0px;
}
table td{
	padding: 10px 0;
	
}
table td p{
	padding: 5px;
}
.select-icc{
	top:36%;
	right: 86px;
}
#sel_child{
	background-color: transparent; font-size: 26px; width: 200px;height: 30px;border: 1px solid #ccc !important; margin:10px 80px; padding: 0;
}
</style>
</head>

<body>
	<!------header------->
	<header class="mui-bar mui-bar-nav"> <a
		class="mui-action-back mui-icon mui-icon-left-nav mui-pull-left"
		href="javascript:void(0)"><img class="back" src="img/back.png" />
	</a>
	<h1 id="title" class="mui-title">课程表</h1>

	</header>
	<!--input chengji-->
	<div class="classTable">
			<div class="text-right " style="position: relative;">
				
		<input type="hidden" id="hide_id" value="${user.id }">
		<select id="sel_child">
		</select>
 <span class="mui-icon mui-icon-arrowdown select-icc"></span>
		</div>
		 <table>
			<tr>
				<td>课堂</td>
				<td>星期一</td>
				<td>星期二</td>
				<td>星期三</td>
				<td>星期四</td>
				<td>星期五</td>
			</tr>
			<tr>
				<td>第一节</td>
				<td id="1_1"></td>
				<td id="1_2"></td>
				<td id="1_3"></td>
				<td id="1_4"></td>
				<td id="1_5"></td>
			</tr>
			<tr>
				<td>第二节</td>
				<td id="2_1"></td>
				<td id="2_2"></td>
				<td id="2_3"></td>
				<td id="2_4"></td>
				<td id="2_5"></td>
			</tr>
			<tr>
				<td>第三节</td>
				<td id="3_1"></td>
				<td id="3_2"></td>
				<td id="3_3"></td>
				<td id="3_4"></td>
				<td id="3_5"></td>
			</tr>
			<tr>
				<td>第四节</td>
				<td id="4_1"></td>
				<td id="4_2"></td>
				<td id="4_3"></td>
				<td id="4_4"></td>
				<td id="4_5"></td>
			</tr>
			<tr>
				<td>第五节</td>
				<td id="5_1"></td>
				<td id="5_2"></td>
				<td id="5_3"></td>
				<td id="5_4"></td>
				<td id="5_5"></td>
			</tr>
			<tr>
				<td>第六节</td>
				<td id="6_1"></td>
				<td id="6_2"></td>
				<td id="6_3"></td>
				<td id="6_4"></td>
				<td id="6_5"></td>
			</tr>
			<tr>
				<td>第七节</td>
				<td id="7_1"></td>
				<td id="7_2"></td>
				<td id="7_3"></td>
				<td id="7_4"></td>
				<td id="7_5"></td>
			</tr>
			<tr>
				<td>第八节</td>
				<td id="8_1"></td>
				<td id="8_2"></td>
				<td id="8_3"></td>
				<td id="8_4"></td>
				<td id="8_5"></td>
			</tr>
			<tr>
				<td>第九节</td>
				<td id="9_1"></td>
				<td id="9_2"></td>
				<td id="9_3"></td>
				<td id="9_4"></td>
				<td id="9_5"></td>
			</tr>
			<tr>
				<td>第十节</td>
				<td id="10_1"></td>
				<td id="10_2"></td>
				<td id="10_3"></td>
				<td id="10_4"></td>
				<td id="10_5"></td>
			</tr>
		</table>

	</div>
<script type="text/javascript">
var tid=$("#hide_id").val();
$.ajax({
	url:"<%=basePath%>schedule/getScheduleByParentAccountID.html",
	type:"POST",
	data:{id:tid},
	async:false,
	success:function(data){
		var d=$.parseJSON(data);
			for(var i=1;i<=10;i++){
				for(var j=1;j<=5;j++){
					$("#"+i+"_"+j).text("");
					$.each(d,function(n,item){
						if(item.weekID==j&&item.lessonID==i){
								$("#"+i+"_"+j).html('<p>'+item.subject+'</p><p>'+item.teacherName+'</p>');
						}
					})
				}
			}
	}
})
</script>
<script type="text/javascript">
$(function(){
	var id=$("#hide_id").val();
	$.ajax({
		url:"<%=basePath%>schedule/getChildrenByParentID.html",
		type:"POST",
		data:{id:id},
		success:function(data){
			var list = JSON.parse(data);
			var op="";
			$.each(list,function(i,item){
				op+="<option value='"+item.classID+"'>"+item.name+"</option>";
			})
			$("#sel_child").html(op);
			$("#sel_child").on("change",function(){
				var cid=$("#sel_child").val();
				$.ajax({
					url:"<%=basePath%>schedule/getByClassID.html",
					type:"POST",
					data:{cid:cid},
					success:function(data){
						var d=$.parseJSON(data);
						for(var i=1;i<=10;i++){
							for(var j=1;j<=5;j++){
								$("#"+i+"_"+j).text("");
								$.each(d,function(n,item){
									if(item.weekID==j&&item.lessonID==i){
										
										$("#"+i+"_"+j).html('<p>'+item.subject+'</p><p>'+item.teacherName+'</p>');
									}
								})
							}
						}
					}
				});
			})
		}
	})
})
</script>
</body>
</html>
