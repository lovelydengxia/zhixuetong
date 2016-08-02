<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>我</title>
		<link href="<%=basePath%>css/mui.min.css" rel="stylesheet" />
		<link rel="stylesheet" type="text/css" href="<%=basePath%>css/mui.picker.min.css" rel="stylesheet" />
		<script type="text/javascript" src="<%=basePath%>js/jquery-1.10.1.min.js"></script>
		<script src="<%=basePath%>js/mui.min.js"></script>
		<script src="<%=basePath%>js/mui.picker.min.js" type="text/javascript" charset="utf-8"></script>
		
		<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" />
		<link href="<%=basePath%>css/style.css" rel="stylesheet" />
		<link rel="stylesheet" href="<%=basePath%>css/swiper.min.css" />
		<script type="text/javascript" src="<%=basePath%>js/swiper.min.js"></script>
		<script type="text/javascript" src="<%=basePath%>js/location.js"></script>
		<script type="text/javascript" charset="UTF-8">
			mui.init();
		</script>
		<style type="text/css">
			.mui-icon-home:before,
			.mui-icon-contact:before,
			.mui-icon-gear:before {
				content: none;
			}
			
			.mui-bar-tab {
				background-color: #fff;
			}
			
			#banner {
				width: 100%;
				height: 90px;
				overflow: hidden;
				margin-top: 10px;
				position: relative;
			}
			
			#banner .swiper-slide {
				position: relative;
				text-align: center;
			}
			
			#banner img {
				width: 100%;
				max-height: 90px;
			}
			
			.pagination {
				width: 100%;
				position: absolute;
				z-index: 20;
				bottom: 0px;
				text-align: center;
			}
			.mui-table-view-cell img,.mui-table-view-cell span{
				float: right;
				margin-right: 10px;
			}
			#birthday{width: 120px;text-align: right; height: 21px; font-size: 1em; border: none;float: right;padding: 0;margin: 0 10px 0 0;}
			.head-box{
				line-height: 50px;padding: 5px 15px;
			}
		</style>
	</head>

	<body>
		<header class="mui-bar mui-bar-nav">
			<h1 id="title" class="mui-title">我</h1>
		</header>
	
		<div class="mui-content">
		    <ul class="mui-table-view">
	            <li class="mui-table-view-cell head-box" onclick="changeImg()">
	               	头像
	               	<img src="${user.img }" width="50" height="50" class="right" id="img" />
	            </li>
	            <li id="nickname" class="mui-table-view-cell">
                	昵称
                	<span>${parents.nickname }</span>
	            </li>
	            <li id="name" class="mui-table-view-cell">
                	姓名	
                	<span>${parents.name }</span>
	            </li>
	            <li id="sex-box" class="mui-table-view-cell">
                	性别
                	<span id="sex">
                	
                		${parents.sex }
                	</span>
	            </li>
	            <li id="mz" class="mui-table-view-cell">
                	民族
                	<span>${parents.mz }</span>
	            </li>
	            <li id="birth" class="mui-table-view-cell">
                	出生日期
                	<input type="text"  placeholder="请选择出生年月" data-options='{"type":"date"}' name="csrq" id="birthday" value="${parents.birthday }" readOnly/>
                	
	            </li>
	            <li id="phone" class="mui-table-view-cell">
                	电话
                	<span>${parents.phone }</span>
	            </li>
	            <li id="qq" class="mui-table-view-cell">
                	QQ
                	<span>${parents.QQ }</span>
	            </li>
	            <li id="email" class="mui-table-view-cell">
                	邮箱
                	<span>${parents.emaile }</span>
	            </li>
	            <li class="mui-table-view-cell">
                	 <a class="mui-navigate-right" href="<%=basePath%>Account/getbangstu.html">
						绑定关联学生	
                    </a>
	            </li>
	        </ul>
	        
		</div>
		<!--nav-->
		<nav class="mui-bar mui-bar-tab">
			<a id="defaultTab" class="mui-tab-item1" href="<%=basePath%>Account/getindexpar.html">
				<span class="mui-icon " style="background: url(<%=basePath%>img/user0.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">主页</span>
			</a>
			<a class="mui-tab-item1" href="<%=basePath%>chat/index.html" >
				<span class="mui-icon " style="background: url(<%=basePath%>img/message.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">家长通</span>
			</a>
			<a class="mui-tab-item1 mui-active" href="javascript:void(0)" >
				<span class="mui-icon mui-icon-home" style="background: url(<%=basePath%>img/me_act.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #11C036;">我</span>
			</a>
			<a class="mui-tab-item1" href="<%=basePath%>Account/getsetpar.html">
				<span class="mui-icon " style="background: url(<%=basePath%>img/set.png) no-repeat; background-size: 100%;"></span>
				<span class="mui-tab-label" style="color: #929292;">设置</span>
			</a>
		</nav>
		<!--person info-->
	
		<!---->
	<script type="text/javascript">
		document.getElementById("nickname").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.nickname}', '修改昵称', btnArray, function(e) {
					if (e.index == 1) {
						if(e.value.length < 1 || e.value.length > 10){
							var btnArray = ['确定'];
							mui.alert('昵称只能在1-10位字符!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						if(1 <= e.value.length <= 10){
							$.post('<%=basePath%>Account/updateUserInfo.html',{key:'nickname',val:e.value,type:'String'},function(){
								window.location.reload();
							});
						}
					} else {
						//取消
					}
				})
			});
			document.getElementById("name").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.name}', '更改姓名', btnArray, function(e) {
					if (e.index == 1) {
						if(!e.value.match(/^[\u4e00-\u9fa5]+$/)){
							var btnArray = ['确定'];
							mui.alert('姓名只能为中文!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						if(e.value.length < 1 || e.value.length > 10){
							var btnArray = ['确定'];
							mui.alert('姓名只能在1-10位字符!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						if(1 < e.value.length <= 10){
							$.post('<%=basePath%>Account/updateUserInfo.html',{key:'name',val:e.value,type:'String'},function(){
								window.location.reload();
							});
						}
					} else {
						//取消
					}
				})
			});
			document.getElementById("mz").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.mz}', '更改民族', btnArray, function(e) {
					if (e.index == 1) {
						if(!e.value.match(/^[\u4e00-\u9fa5]+$/)){
							var btnArray = ['确定'];
							mui.alert('民族只能为中文!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						if(e.value.length < 1 || e.value.length > 8){
							var btnArray = ['确定'];
							mui.alert('民族只能在1-8位字符!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						if(1 <= e.value.length <= 8){
							$.post('<%=basePath%>Account/updateUserInfo.html',{key:'mz',val:e.value,type:'String'},function(){
								window.location.reload();
							});
						}
					} else {
						//取消
					}
				})
			});
			document.getElementById("qq").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.QQ}', '更改QQ', btnArray, function(e) {
					if (e.index == 1) {
						if(!e.value.match(/^[1-9]\d{4,}$/)){
							var btnArray = ['确定'];
							mui.alert('QQ格式不正确!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						$.post('<%=basePath%>Account/updateUserInfo.html',{key:'QQ',val:e.value,type:'String'},function(){
							window.location.reload();
						});
					} else {
						//取消
					}
				})
			});
			document.getElementById("email").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.emaile}', '更改邮箱', btnArray, function(e) {
					if (e.index == 1) {
						if(!e.value.match(/^[\w\+\-]+(\.[\w\+\-]+)*@[a-z\d\-]+(\.[a-z\d\-]+)*\.([a-z]{2,4})$/i)){
							var btnArray = ['确定'];
							mui.alert('邮箱格式不正确!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						$.post('<%=basePath%>Account/updateUserInfo.html',{key:'emaile',val:e.value,type:'String'},function(){
							window.location.reload();
						});
					} else {
						//取消
					}
				})
			});
			document.getElementById("phone").addEventListener('tap', function(e) {
				e.detail.gesture.preventDefault(); //修复iOS 8.x平台存在的bug，使用plus.nativeUI.prompt会造成输入法闪一下又没了
				var btnArray = ['取消', '确定'];
				mui.prompt('', '${parents.phone}', '修改手机', btnArray, function(e) {
					if (e.index == 1) {
						if(!e.value.match(/^1[3-9]\d{9}$/)){
							var btnArray = ['确定'];
							mui.alert('手机格式不正确!', '系统提示', btnArray, function(e) {
							});
							return false;
						}
						$.post('<%=basePath%>Account/updateUserInfo.html',{key:'phone',val:e.value,type:'String'},function(){
							window.location.reload();
						});
					} else {
						//取消
					}
				})
			});
			(function($, doc) {
				$.init();
				$.ready(function() {
					//普通示例
					var userPicker = new $.PopPicker();
					userPicker.setData([{
						value: '1',
						text: '男'
					}, {
						value: '0',
						text: '女'
					}]);
					var showUserPickerButton = doc.getElementById('sex-box');
					var userResult = doc.getElementById('sex');
					showUserPickerButton.addEventListener('tap', function(event) {
						userPicker.show(function(items) {
							userResult.innerText = JSON.stringify(items[0].text).replace(/\"/g,"");
							//返回 false 可以阻止选择框的关闭
							//return false;
							$.post('<%=basePath%>Account/updateUserInfo.html',{key:'sex',val:userResult.innerText,type:'String'},function(){
								window.location.reload();
							});
						});
					}, false);
					//-----------------------------------------
					//级联示例
					
				});
			})(mui, document);
			(function($) {
				
				var result = $('#birthday')[0];
				var btns = $('#birth');
				btns.each(function(i, btn) {
					btn.addEventListener('tap', function() {
						var optionsJson = this.getAttribute('data-options') || '{}';
						var options = {type:'date',beginYear:'1900',endYear:'2050'};
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
							var select = (new Date(result.value)).getTime();
							var	current = (new Date(new Date().toLocaleDateString())).getTime();
							if((new Date(result.value)).getTime() >= (new Date(new Date().toLocaleDateString())).getTime()){
								var btnArray = ['确定'];
								mui.alert('出生日期不能大于当前系统日期!', '系统提示', btnArray, function(e) {
								});
								return false;
							}
							$.post('<%=basePath%>Account/updateUserInfo.html',{key:'birthday',val:result.value,type:'String'},function(){
								window.location.reload();
							});
							picker.dispose();
						});
					}, false);
				});
			})(mui);
	</script>
	<input type="file" value="sdgsdg" id="img_input" hidden="hidden"/>
	</body>
	<script type="text/javascript">
		window.onload = function() {
			var input = document.getElementById("img_input");
			if (typeof(FileReader) === 'undefined') {
				alert( "抱歉，你的设备不支持 FileReader，请使用现代设备操作！");
				input.setAttribute('disabled', 'disabled');
			} else {
				input.addEventListener('change', readFile, false);
			}
		}
		
		function readFile() {
			var file = this.files[0];
			//这里我们判断下类型如果不是图片就返回 去掉就可以上传任意文件 
			if (!/image\/\w+/.test(file.type)) {
				alert("请确保文件为图像类型");
				return false;
			}
			var reader = new FileReader();
			reader.readAsDataURL(file);
			reader.onload = function(e) {
				sendChangeImg(this.result);
				
			}
		}
		
		function sendChangeImg(e){
			$.post('<%=basePath%>Account/changeImg.html',{'img':e},function(){
				$('#img').attr('src',e);
			})
		}
		
		function changeImg(){
			$('#img_input').click();
		}
	</script>

</html>