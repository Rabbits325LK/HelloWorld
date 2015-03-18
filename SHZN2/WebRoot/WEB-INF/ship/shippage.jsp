<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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

<title>My JSP 'shippage.jsp' starting page</title>

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
var timenum;
var ship_name;
var admin_name;
function mychange(){
	timenum = document.getElementById("timenum").value;
	/* ship_name = document.getElementById("shipname").value;
	admin_name = doucument.getElementById("adminname").value; */
	alert(timenum);
}
function yd()
{
	location.href = "shipo/shipoadd.do?ship_name=" + ship_name+"&Admin_name="+Admin_name+"&timenum="+timenum;	 
}
function comeback(){
	location.href = "ship/shiplist.do";
}
function toDateShipPage(){
	location.href = "shipo/toDateShipPage.do";
}
</script>
</head>

<body>
	<div class="uk-width-* uk-height-1">
		<div class="uk-width-medium-3-5 uk-container-center">
			<div class="uk-width-medium-1-1 uk-panel uk-panel-box">
				<h1 class="uk-panel-title">船名:${ship.ship_name }</h1>
				<img class="uk-thumbnail" src="./img/ship/${ship.ship_img}" alt="">
				<div>大小:${ship.ship_size }</div>
				<div>类型:${ship.ship_type }</div>
				<div>载容量（人）:${ship.ship_Capacity }</div>
				<br> 请选择预订几天后使用&nbsp;&nbsp;<i class="uk-icon-hand-o-down"></i>
				<br>
				<br> 
				<form action="shipo/shipoadd.do" method="post">
				<input type="text" value="${ship.ship_name }" id="ship_name" name="ship_name" style="display:none">
				<input type="text" value="${admin.name }" id="admin_name" name="Admin_name"style="display:none">	
				<select name="timenum" id="timenum" onchange="mychange()">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
				</select>	
				<input type="submit" class="uk-button-success uk-button" value="预订">
				<input type="button" class="uk-button-danger uk-button" value="返回" onclick="comeback()">
				<input type="button" class="uk-button-warning uk-button" value="预订" onclick="toDateShipPage()">
				</form>
			</div>
		</div>
	</div>

	
</body>
</html>
