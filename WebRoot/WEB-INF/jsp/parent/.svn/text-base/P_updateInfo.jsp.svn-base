<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title></title>
    <script src="<%=basePath%>js/mui.min.js"></script>
    <link href="<%=basePath%>css/mui.min.css" rel="stylesheet"/>
    <link href="<%=basePath%>css/style.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>css/mui.picker.min.css" />
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.7.2.min.js"></script>
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
		</style>
    <script type="text/javascript" charset="UTF-8">
      	mui.init();
    </script>
</head>
<body>
	<!------header------->
		<header class="mui-bar mui-bar-nav" >
			<a class="mui-action-back mui-icon  mui-pull-left" onclick="clicked()" href="javascript:void(0)"><img class="back" src="<%=basePath%>img/back.png" /></a>
			<h1 id="title" class="mui-title">修改个人信息</h1>
			<h1 class="mui-title leftTitle" id="confirmBtn">保存</h1>
			<input type="hidden" id="accountID" name="accountID" value="${user.id }"/>
		</header>
		<div class="mui-content">
		    <form class="mui-input-group" action="<%=basePath%>Account/updateUserInfo.html" method="post" id="addConfirmForm">
		    	<div class="infoBox">
			<div class="infPic1 m_auto"><img src="${user.img }" /> </div>
		</div>
		<div class="bannerP">基本信息</div>
		    <div class="mui-input-row">
		        <label>昵称：</label>
		        <input type="text" class="mui-input-clear" id="nickname" name="nickname" value="${parents.nickname }"/>
		    </div>
		    <div class=" mui-input-row">
		        <label>名称：</label>
		        <input type="text" class="mui-input-clear" id="name" name="name" value=${parents.name } />
		    </div>
		    <div class="mui-input-row">
		        <label>性别：</label>
		        <select id="sex-select" name="sex" value="">
		        	<c:if test="${parents.sex == '男' }">
		        		<option value="男" selected="selected">男</option>
		        		<option value="女">女</option>
		        	</c:if>
		        	<c:if test="${parents.sex == '女' }">
		        		<option value="男">男</option>
		        		<option value="女" selected="selected">女</option>
		        	</c:if>
		        	<c:if test="${teacher.sex == null }">
		        		<option value="男">男</option>
		        		<option value="女">女</option>
		        	</c:if>
		        </select>
		    </div>
		    
		    <div class="mui-input-row">
		    	<label>出生日期：</label>
		        <input type="text" class="mui-input-clear times" data-options='{"type":"date"}'  name="birthday" id="result" value="${parents.birthday }" />
		    </div>	
		    <input type="hidden" id="accountID" name="accountID" value="${user.id }"/>    
		    
		    <div class="mui-input-row">
		        <label>民族：</label>
		        <input type="text" class="mui-input-clear" id="mz" name="mz" value="${parents.mz }" >
		    </div>
		    <div class="bannerP">其它</div>
		    <div class="mui-input-row">
		        <label>手机：</label>
		        <input type="text" class="mui-input-clear" id="phone" name="phone" value="${parents.phone }"/>
		    </div>
		    <div class="mui-input-row">
		        <label>QQ：</label>
		        <input type="text" class="mui-input-clear" id="QQ" name="QQ" value="${parents.QQ }" >
		    </div>
		    <div class="mui-input-row">
		        <label>邮箱：</label>
		        <input type="text" class="mui-input-clear" id="emaile" name="emaile" value="${parents.emaile }" >
		    </div>

		    
		</form>
		</div>
		<script src="<%=basePath%>js/mui.picker.min.js"></script>
				<script>
			(function($) {
				$.init();
				var result = $('#result')[0];
				var btns = $('.times');
				btns.each(function(i, btn) {
					btn.addEventListener('tap', function() {
						var optionsJson = this.getAttribute('data-options') || '{}';
						var options = JSON.parse(optionsJson);
						var id = this.getAttribute('id');
						/*
						 * 首次显示时实例化组件
						 * 示例为了简洁，将 options 放在了按钮的 dom 上
						 * 也可以直接通过代码声明 optinos 用于实例化 DtPicker
						 */
						var picker = new $.DtPicker(options);
						picker.show(function(rs) {
							/*
							 * rs.value 拼合后的 value
							 * rs.text 拼合后的 text
							 * rs.y 年，可以通过 rs.y.vaue 和 rs.y.text 获取值和文本
							 * rs.m 月，用法同年
							 * rs.d 日，用法同年
							 * rs.h 时，用法同年
							 * rs.i 分（minutes 的第二个字母），用法同年
							 */
							result.value = rs.text;
							/* 
							 * 返回 false 可以阻止选择框的关闭
							 * return false;
							 */
							/*
							 * 释放组件资源，释放后将将不能再操作组件
							 * 通常情况下，不需要示放组件，new DtPicker(options) 后，可以一直使用。
							 * 当前示例，因为内容较多，如不进行资原释放，在某些设备上会较慢。
							 * 所以每次用完便立即调用 dispose 进行释放，下次用时再创建新实例。
							 */
							picker.dispose();
						});
					}, false);
				});
			})(mui);
		</script>
</body>
<script type="text/javascript">
	$("#confirmBtn").click(function(){
		var name = $("#name").val();
		var nickname = $("#nickname").val();
		var sex = $("#sex-select").val();
		var phone = $("#phone").val();
		var birthday = $("#result").val();
		var QQ = $("#QQ").val();
		var emaile = $("#emaile").val();
		/* var btnArray = ['否', '是']; */
		if(name == null || name == "" || nickname == null || nickname == "" || sex == null || sex == "" || phone == null || phone == "" || birthday == null || birthday == "" || QQ == null || QQ == "" || emaile == null || emaile == "" ){
			var btnArray = ['确定'];
			mui.confirm('请完善请假信息？', '系统提示', btnArray, function(e) {
				if (e.index == 1) {
				/* $("#addConfirmForm").submit(); */
				}
			});
		}else{
			$("#addConfirmForm").submit();
		}
		
	});
</script>
</html>