<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'close.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="./css/uikit.almost-flat.min.css"/>
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/uikit.min.js"></script>
 <script language="JavaScript">
 	var timer;
	//启动跳转的定时器
	function startTimes() {
		timer = window.setInterval(CloseWindow_Click, 1000);
	}
    function CloseWindow_Click(){
    	window.close();
    }
  </script>
  </head>
  
  <body onload="startTimes();">
   <div class="uk-width-medium-* uk-margin-large-top">
	<div class="uk-width-medium-*" style="height:100px;"></div>
	<div class="uk-width-medium-2-3 uk-container-center uk-margin-large-top">
	<div class="uk-width-medium-1-4 uk-container-center uk-margin-large-top">
	<h3 class="uk-text-success uk-text-center" >
		<font style="font-color:green">修改完成,重新登录后生效<i class="uk-icon-spinner uk-icon-spin"></i></font>
	</h3>
	</div>
	
	</div>
	</div>
  </body>
</html>
