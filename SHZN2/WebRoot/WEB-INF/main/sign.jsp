<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html >
<html>
  <head>
    
    <title>My JSP 'sign.jsp' starting page</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="../css/uikit.almost-flat.min.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/uikit.min.js"></script>
<script type="text/javascript">


 function pw() {
              var pw1 = document.getElementById("pwd1").value;
              var pw2 = document.getElementById("pwd2").value;
              if(pw1 == pw2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次密码相同</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>两次密码不相同</font>";
                document.getElementById("submit").disabled = true;
              }
          }


    </script> 
  </head>
  
<body class="uk-width-*" style="margin:0">
<video autoplay muted loop  style="z-index:-9999;position:fixed;right:0;bottom:0;min-width:100%;min-height:100%;width:auto;height:auto;">
  	<source src="./video/beijin.ogv">
  	<source src="./video/beijin2.mp4">
  </video>
	<div class="uk-width-* uk-margin-large-top">
		<div class="  uk-width-1-1 uk-width-small-2-3 uk-width-medium-3-5 uk-width-large-4-7 uk-container-center uk-panel uk-panel-box-secondary uk-margin-large-top">
			<form class="uk-form" action="sign.do" method="post" name="login_form"
				id="login_form">
				<div class="uk-width-1-1 uk-container-center">
					<fieldset>
						<!-- <h1>注册页面</h1> -->
						<legend>注册页面</legend>
					</fieldset>
				</div>
				<div class="uk-width-1-6 uk-container-center "><span id="tishi"></span></div>
				<div class="uk-width-medium-2-5 uk-vertical-align-middle uk-margin-large-left">
					<div class="uk-form-row">
						帐号： <input class="uk-width-1-1 uk-form-large" name="admin_code"
							id="admin_code" type="text" onkeyup="admincode()"/>
					</div>
					<div class="uk-form-row">
						密码： <input class="uk-width-medium-1-1 uk-form-large" name="password"
							id="pwd1" type="password" />
					</div>
					<div class="uk-form-row">
						确认密码： <input class="uk-width-medium-1-1 uk-form-large" 
							id="pwd2" type="password" onkeyup="pw()"/>
					</div>
					<div class="uk-form-row">
						姓名： <input class="uk-width-medium-1-1 uk-form-large" name="name"
							id="admin_code" type="text" />
					</div>
				</div>
				<div class="uk-width-medium-2-5 uk-vertical-align-middle uk-margin-large-left">
					<div class="uk-form-row">
						电话号码： <input class="uk-width-medium-1-1 uk-form-large" name="telephone"
							id="tellphone" type="text" />
					</div>
					<div class="uk-form-row">
						电子邮件： <input class="uk-width-medium-1-1 uk-form-large" name="email"
							id="s_mail" type="email" />
					</div>

					<div class="uk-form-row">
						地址： <input class="uk-width-medium-1-1 uk-form-large" name="address"
							id="address" type="text" />
					</div>
					<div class="uk-form-row">
						QQ:： <input class="uk-width-medium-1-1 uk-form-large" name="qq" id="qq"
							type="text" />
					</div>

				</div>

				<div class="width-1-1">
					<br> 性别：男<input type="radio" name="gender" value="1" checked="checked"/> 女<input
						type="radio" name="gender" value="2" />
				</div>
				<br>
				<div class="uk-form-row uk-container-center ">
				<input type="submit" class="uk-button uk-button-success uk-width-1-1" value="注册" />
				
				</div>
				<div class="uk-form-row uk-contatiner-center">
					<a href="index.do"><input type="button" class="uk-button uk-button-danger uk-width-1-1" value="返回"/></a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
