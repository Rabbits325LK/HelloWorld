<%@page pageEncoding="utf-8" isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SHZN</title>
<link rel="stylesheet" type="text/css" href="../css/uikit.almost-flat.min.css"/>
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/uikit.min.js"></script>
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
			
		}else{		
		window.clearInterval(timer);
		location.href = "${pageContext.request.contextPath}/login/toSign.do";
		}
		
	}
	/* function showError(){
		error = ["<font color='red'>正在提交</font>","<font color='red'>验证用户名</font>","<font color='red'>...</font>","<font color='red'>用户名已存在</font>","<font color='red'>正在返回注册页面</font>","<font color='red'>进入注册页面</font>"];
		for(var k=1; k<7;k++){
			dicument.getElementById("errortext").innerHTML = error[i];
		}
	} */
	
</script>
</head>
<body class="error_power_page" onload="startTimes();showError();">

	<div class="uk-width-medium-* uk-margin-large-top">
	<div class="uk-width-medium-*" style="height:100px;"></div>
	<div class="uk-width-medium-2-3 uk-container-center uk-margin-large-top">
	<div class="uk-width-medium-1-4 uk-container-center uk-margin-large-top">
	<h3 class="uk-text-success uk-text-center" >
		用户名已存在，正在返回注册页<i class="uk-icon-spin uk-icon-spinner"></i>
	</h3>
	</div>
	<div class="uk-progress uk-progress-small uk-progress-striped uk-active uk-progress-danger">
		<div class="uk-progress-bar" id="divId"><P id="divp"></P></div>
	</div>
	</div>
	</div>
</body>
</html>
