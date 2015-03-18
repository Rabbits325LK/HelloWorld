<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<mete charset="utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Loading Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="./css/flat-ui.css" rel="stylesheet">
    <link href="./css/demo.css" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico">
    <script  type="text/javascript">
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
		$.post("login/checkLogin.do", $("#login_form1").serialize(), function(data) {
			if (data == 0) {
				//成功，去向系统首页
				location.href = "./ship/toIndex.do";
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
				"login/createImage.do?date=" + new Date().getTime());
	}
	function come_back(){
		location.href = "login/index.do";
	}
</script>
  </head>
  
  <body>
    <div class="container">
    	<div class="login">
        <div class="login-screen">
          <div class="login-icon">
            <img src="img/login/icon.png" alt="Welcome to Mail App" />
            <h4>Welcome to <small>Mail App</small></h4>
          </div>
          
		<form action="login/checkLogin.do" method="post" class="uk-form" name="login_form1" 
			id="login_form1">
          <div class="login-form" >
            <div class="form-group">
              <input type="text" class="form-control login-field" value="" placeholder="Enter your name" id="adminCode"
              name="adminCode"onfocus="set_msg('admin_code_msg','30长度的字母、数字和下划线');" />
              <label class="login-field-icon fui-user" for="adminCode"><span class="required" id="admin_code_msg" style="font-size:5px"></span></label>
            </div>

            <div class="form-group">
              <input type="password" class="form-control login-field" value="" placeholder="Password" id="password" name="password"
              onfocus="set_msg('password_msg','30长度的字母、数字和下划线');" />
              <label class="login-field-icon fui-lock" for="password"><span class="required" id="password_msg" style="font-size:5px"></span></label>
            </div>
			
			<div class="form-group">
              <input name="code" id="code" type="text" class="form-control login-field" value="" placeholder="code num"
								onfocus="set_msg('image_msg','')" />
			  <label class="login-field-icon fui-lock" for="code"><span class="required" style="font-size:5px" id="image_msg"></span></label>
			</div>
			<div class="form-group"><img src="login/createImage.do"
								alt="验证码" title="点击更换" id="image_code" onclick="change_image();" /></div>					
								
            
			
            <a class="btn btn-primary btn-lg btn-block" href="javascript:check_login();">Log in</a>
           <!--  <a class="btn btn-primary btn-lg btn-block" href="#">back</a> -->
            <a class="login-link" href="login/index.do">come back!</a>
          </div>
          </form>
        
      </div>
      <div ><img src="img/login/power.png" alt="..."width="30px;"height="30px;" style="margin-left:48.5%;margin-top:4%" onclick="come_back()" ></div>
    </div>
  </body>
</html>
