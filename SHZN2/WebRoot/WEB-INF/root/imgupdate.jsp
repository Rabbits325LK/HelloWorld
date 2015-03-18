<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'imgupdate.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="./css/uikit.almost-flat.min.css" />
<script language="javascript" type="text/javascript"
	src="./js/jquery.min.js"></script>
<script language="javascript" type="text/javascript"
	src="./js/uikit.min.js"></script>
<script type="text/javascript">
function comeback(){
	location.href = "roots/toimglist.do";
}
</script>
</head>
<body class="uk-width-*">
	<header class="body uk-width-* uk-text-center">
		<h1>图片管理</h1>
	</header>
	<section class="uk-width-* uk-margin-large-top">
		<div
			class="uk-width-2-3 uk-width-small-1-2 uk-width-medium-3-5 uk-width-large-2-5
			uk-panel uk-panel-box uk-panel-secondary uk-container-center uk-margin-large-top uk-margin-large-bottom">
			<form class="uk-form-row " action="roots/imgupdate.do" method="post"
				enctype="multipart/form-data">
				<div class="uk-form-row">
					<h3 class="uk-panel-title">船艇图片:</h3> 
					<!-- <input type="text" name="ima_name" class="uk-width-*"> -->
				</div>
				<div class="uk-form-row">
					<input type="file" name="myfile"
						class="uk-button uk-width-*">
				</div>
				<div class="uk-form-row">
					<input type="submit" value="add"
						class="uk-button uk-button-success uk-width-*">
				</div>
				<!-- <div class="uk-form-row">
					<input type="button" value="come back" class="uk-button uk-button-danger" onclick="comeback()">
				</div> -->
			</form>
		</div>
		
		<div
			class="uk-width-2-3 uk-width-small-1-2 uk-width-medium-3-5 uk-width-large-2-5
			uk-panel uk-panel-box uk-panel-secondary uk-container-center uk-margin-large-top uk-margin-large-bottom">
			<form class="uk-form-row " action="roots/newsimgupdate.do" method="post"
				enctype="multipart/form-data">
				<div class="uk-form-row">
					<h3 class="uk-panel-title">资讯图片:</h3> 
					<!-- <input type="text" name="ima_name" class="uk-width-*"> -->
				</div>
				<div class="uk-form-row">
					 <input type="file" name="myfile"
						class="uk-button uk-width-*">
				</div>
				<div class="uk-form-row">
					<input type="submit" value="add"
						class="uk-button uk-button-success uk-width-*">
				</div>
				
			</form>
		</div>
		<div class="uk-width-1-2 uk-container-center">
					<input type="button" value="come back" class="uk-button uk-button-danger" onclick="comeback()">
				</div>
	</section>
	<footer class="body"> </footer>
</body>
</html>
