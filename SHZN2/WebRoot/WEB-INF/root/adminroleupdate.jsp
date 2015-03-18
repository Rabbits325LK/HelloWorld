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
    
    <title>修改用户权限</title>
    
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
function adminroleupdateA(id){
var r = window.confirm("确定要 提升吗？");
	if(r){
		window.location.href = "root/adminroleupdateA.do?admin_id=" + id;
	}
}
function adminroleupdateB(id){
var r = window.confirm("确定要 提升吗？");
	if(r){
		window.location.href = "root/adminroleupdateB.do?admin_id=" + id;
	}
}
function adminroleupdateC(id){
var r = window.confirm("确定要 提升吗？");
	if(r){
		window.location.href = "root/adminroleupdateC.do?admin_id=" + id;
	}
}
function back(){
	window.location.href = "root/adminlist.do";
}
</script>
  </head>
  
  <body>
    <div class="uk-width-medium-1-1 uk-margin-large-top">
		<div
			class="  uk-width-medium-2-3 uk-container-center uk-panel uk-panel-box-secondary uk-margin-large-top">

			<form class="uk-form" action="root/shipupdate.do" method="post" >
				<div class="uk-width-1-1 uk-container-center">
					<fieldset>
						<legend>修改用户权限</legend>
					</fieldset>
				</div>
				<div class="uk-width-1-6 uk-container-center "><span id="tishi"></span></div>
				<div class="uk-width-medium-4-5 un-container-center">
					<div class="uk-form-row">
						ID:${admin_id } <input class="uk-width-1-1 uk-form-large" name="ship_id" id="ship_id" type="text" value="${admin_id }" style="display:none" >
					</div>
					
					
					<div class="uk-form-row">
					<c:choose>
						<c:when test="${roleA == 1 }">
							拥有管理员权限
						</c:when>
						<c:otherwise>
							提升为管理员<a><i class="uk-icon-button uk-icon-arrow-up" onclick="adminroleupdateA(${admin_id})"></i></a>
						</c:otherwise>
					</c:choose>
					</div>
					<div class="uk-form-row">
					<c:choose>
						<c:when test="${roleB == 1 }">
							拥有普通会员权限
						</c:when>
						<c:otherwise>
							提升为普通会员<a><i class="uk-icon-button uk-icon-arrow-up" onclick="adminroleupdateB(${admin_id})"></i></a>
						</c:otherwise>
					</c:choose>
					</div>
					<div class="uk-form-row">
					<c:choose>
						<c:when test="${roleC == 1 }">
							拥有付费会员权限
						</c:when>
						<c:otherwise>
							提升为付费会员权限<a><i class="uk-icon-button uk-icon-arrow-up" onclick="adminroleupdateC(${admin_id})"></i></a>
						</c:otherwise>
					</c:choose>
					</div>
					<div class="uk-form-row">
						<input type="button" class="uk-width-1-1 uk-button uk-button-primary" onclick="back()" value="返回" />
					</div>
				</div>
				
			</form>
		</div>
	</div>
  </body>
</html>
