<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加船艇</title>
    
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
function comeback(){
	location.href = "root/toshiplist.do";
}
</script>
  </head>
  
  <body>
    <div class="uk-width-medium-1-1 uk-margin-large-top">
		<div
			class="  uk-width-medium-2-3 uk-container-center uk-panel uk-panel-box-secondary uk-margin-large-top">

			<form class="uk-form" action="root/shipadd.do" method="post" >
				<div class="uk-width-1-1 uk-container-center">
					<fieldset>
						<!-- <h1>注册页面</h1> -->
						<legend>添加船艇</legend>
					</fieldset>
				</div>
				<div class="uk-width-1-6 uk-container-center "><span id="tishi"></span></div>
				<div class="uk-width-medium-4-5 un-container-center">
					<div class="uk-form-row">
						船名： <input class="uk-width-1-1 uk-form-large" name="ship_name"
							id="ship_name" type="text"/>
					</div>
					<div class="uk-form-row">
						大小： <input class="uk-width-medium-1-1 uk-form-large" name="ship-size"
							id="ship_size" type="text" />
					</div>
					<div class="uk-form-row">
						类型： <input class="uk-width-medium-1-1 uk-form-large" name="ship_type"
							id="ship_type" type="text" />
					</div>
					<div class="uk-form-row">
						载容量:<input class="uk-width-medium-1-1 uk-form-large" name="ship_Capacity" id="ship_Capacity" type="text">
					</div>
					<div class="uk-form-row">
						图片名:<input class="uk-width-medium-1-1 uk-form-large" name="ship_img" id="ship_img" type="text">
					</div>
				</div>
				<br>
				<div class="uk-form-row uk-container-center">
				<input type="submit" class="uk-button uk-button-success uk-width-1-1" value="创建" />
				<input type="button" class="uk-button uk-button-danger uk-width-1-1 uk-margin-top" value="返回" onclick="comeback()">
				</div>
			</form>
		</div>
	</div>
  </body>
</html>
