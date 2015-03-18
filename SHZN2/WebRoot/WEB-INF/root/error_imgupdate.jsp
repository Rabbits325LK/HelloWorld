<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'error_imgupdate.jsp' starting page</title>
    
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
<script language="javascript" type="text/javascript">
	var timer;
	//启动跳转的定时器
	function startTimes() {
		timer = window.setInterval(showSecondes, 1000);
	}
	var i = 0;
	function showSecondes() {
		cars = ["10%","20%","40%","60%","90%","100"];
		if(i < 7){
			i++;
			document.getElementById("divId").style.width = cars[i];
			dicument.getElementById("divp").innerHTML = cars[i];
		}else{		
		window.clearInterval(timer);
		location.href = "${pageContext.request.contextPath}/roots/toimgupdate.do";
		}
		
	}

	
</script>
</head>
<body class="error_power_page" onload="startTimes();">

	<div class="uk-width-medium-* uk-margin-large-top">
	<div class="uk-width-medium-*" style="height:100px;"></div>
	<div class="uk-width-medium-2-3 uk-container-center uk-margin-large-top">
	<div class="uk-width-medium-1-4 uk-container-center uk-margin-large-top">
	<h3 class="uk-text-success uk-text-center" >
		文件太大<i class="uk-icon-spin uk-icon-spinner"></i>
	</h3>
	</div>
	<div class="uk-progress uk-progress-small uk-progress-striped uk-active">
		<div class="uk-progress-bar" id="divId"><P id="divp"></P></div>
	</div>
	</div>
	</div>
</body>
</html>
