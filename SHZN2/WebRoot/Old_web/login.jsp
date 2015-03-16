<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="../css/uikit.almost-flat.min.css" />

<script language="javascript" type="text/javascript"
	src="../js/jquery.min.js"></script>
<script language="javascript" type="text/javascript"
	src="。./js/uikit.min.js"></script>
<script language="javascript" type="text/javascript">
	//登录验证
	function check_login() {
		//验证账号是否为空	
		var admin_code = $("#admin_code").val();
		if (admin_code == "") {
			$("#admin_code_msg").text("请输入账号.");
			return;
		}
		//验证密码是否为空
		var password = $("#password").val();
		if (password == "") {
			$("#password_msg").text("请输入密码.");
			return;
		}
		//验证验证码是否为空
		var image_code = $("#code").val();
		if (image_code == "") {
			$("#image_msg").text("请输入验证码.");
			return;
		}
		//提交表单，验证账号密码是否正确
		$.post("checkLogin.do", $("#login_form1").serialize(), function(data) {
			if (data == 0) {
				//成功，去向系统首页
				location.href = "../ship/toIndex.do";
			} else if (data == 1) {
				$("#admin_code_msg").text("账号错误.");
			} else if (data == 2) {
				$("#password_msg").text("密码错误.");
			} else {
				$("#image_msg").text("验证码错误.");
			}
		});
	}
	//重置提示信息
	function set_msg(id, txt) {
		$("#" + id).text(txt);
	}
	//刷新验证码图片
	function change_image() {
		$("#image_code").attr("src",
				"createImage.do?date=" + new Date().getTime());
	}
</script>
</head>
<body class="uk-width-*" style="margin:0">
	<video autoplay muted loop  style="z-index:-9999;position:fixed;right:0;bottom:0;min-width:100%;min-height:100%;width:auto;height:auto;">
  	<source src="../video/beijin.ogv">
  	<source src="../video/beijn2.mp4">
  </video>
	<div
		class=" uk-width-3-4 uk-wdith-small-1-2 uk-width-medium-1-3 uk-width-large-1-5 uk-container-center uk-panel uk-panel-box uk-panel-box-secondary uk-margin-large-top">
		<form action="checkLogin.do" method="post" class="uk-form" name="login_form1" 
			id="login_form1">
			<div class="uk-form-row">
				<fieldset>
					<legend>用户登录</legend>
					<div class="uk-form-row">
						<i class="uk-icon-user"></i>帐号：<input name="adminCode" type="text"
							onfocus="set_msg('admin_code_msg','30长度的字母、数字和下划线');"
							 /> 
					</div>
					<div class="uk-form-row">		
							<span class="required" id="admin_code_msg" style="font-size:5px"></span>
					</div>
					<div class="uk-form-row">
						<i class="uk-icon-key"></i>密码：<input name="password" id="password" type="password"
							onfocus="set_msg('password_msg','30长度的字母、数字和下划线');"
							 />
					</div><div class="uk-form-row">		
							<span class="required" id="password_msg" style="font-size:5px"></span></div>
						<div class="uk-form-row">
							验证码：  <img src="createImage.do"
								alt="验证码" title="点击更换" id="image_code" onclick="change_image();" />
								<span class="required" style="font-size:5px" id="image_msg"></span>
						</div>
						<div class="uk-form-row ">
						<input name="code" id="code" type="text" 
								onfocus="set_msg('image_msg','')" />
						</div>
						<div class="uk-form-row ">
							<a href="javascript:check_login();"><input type="button" class="uk-button uk-button-success uk-width-1-1" value="登陆"/></a>
						</div>
						<div class="uk-form-row">
							<a href="index.do"><input type="button" class="uk-button uk-button-danger uk-width-1-1" value="返回"/></a>
						</div>
					
				</fieldset>
			</div>
		</form>
	</div>
</body>
</html>
