<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改个人资料</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="./css/uikit.almost-flat.min.css">
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/uikit.min.js"></script>
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
  
  <body>
 

			<form class="uk-form" action="ship/updateadminpwd.do" method="post" >
				<div class="uk-width-1-1 uk-container-center">
					<fieldset>
						<legend>修改个人资料</legend>
					</fieldset>
				</div>
				<div class="uk-width-1-6 uk-container-center "><span id="tishi"></span></div>
				<div class="uk-width-medium-4-5 un-container-center">
					<div class="uk-form-row">
						ID:${admin.admin_id } <input class="uk-width-1-1 uk-form-large" name="admin_id" id="admin_id" type="text" value="${admin.admin_id }" style="display:none" >
					</div>
					<div class="uk-form-row">
						密码： <input class="uk-width-medium-1-1 uk-form-large" name="password"
							id="pwd1" type="password" />
					</div>
					<div class="uk-form-row">
						确认密码： <input class="uk-width-medium-1-1 uk-form-large" 
							id="pwd2" type="password" onkeyup="pw()"/>
					</div>
				</div>
				<br>
				<div class="uk-form-row uk-container-center">
				<input type="submit" class="uk-button uk-button-success uk-width-1-1" value="提交" />
				</div>
			</form>
		
  </body>
</html>