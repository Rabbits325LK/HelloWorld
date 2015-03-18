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
  </head>
  
  <body>
 

			<form class="uk-form" action="ship/adminupdate.do" method="post" >
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
						姓名: <input class="uk-width-1-1 uk-form-large" name="name"
							id="name" type="text" value="${admin.name }"/>
					</div>
					<div class="uk-form-row">
						电话: <input class="uk-width-medium-1-1 uk-form-large" name="telephone"
							id="telephone" type="text" value="${admin.telephone }"/>
					</div>
					<div class="uk-form-row">
						email: <input class="uk-width-medium-1-1 uk-form-large" name="email"
							id="email" type="text" value="${admin.email }"/>
					</div>
					<div class="uk-form-row">
						qq:<input class="uk-width-medium-1-1 uk-form-large" name="qq" id="qq" type="text" value="${admin.qq }">
					</div>
					<div class="uk-form-row">
						地址:<input class="uk-width-medium-1-1 uk-form-large" name="address" id="address" type="text" value="${admin.address }">
					</div>
					<div>
						<c:choose>
							<c:when test="${gender == 1 }">
								性别：男<input type="radio" name="gender" value="1" checked="checked"/> 女<input
						type="radio" name="gender" value="2" />
							</c:when>
							<c:otherwise>
								性别：男<input type="radio" name="gender" value="1" /> 女<input
						type="radio" name="gender" value="2" checked="checked"/>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<br>
				<div class="uk-form-row uk-container-center">
				<input type="submit" class="uk-button uk-button-success uk-width-1-1" value="提交" />
				</div>
			</form>
		
  </body>
</html>