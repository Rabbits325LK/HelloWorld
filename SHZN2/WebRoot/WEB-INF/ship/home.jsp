<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html class="uk-grid-width-small-*">
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'home.jsp' starting page</title>
    
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
function iFrameHeight() { 
var ifm= document.getElementById("iframepage"); 
var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument; 
if(ifm != null && subWeb != null) { 
ifm.height = subWeb.body.scrollHeight; 
} 
} 
</script>
  </head>
  <!-- 
  uk-width-*         对于任何宽度的设备，网格都保持列并排。
  uk-width-small-*   影响宽度在 480px 以上的设备。网格列将在较小的视口中堆叠。
  uk-width-medium-*  影响宽度在 768px 以上的设备。网格列将在较小的视口中堆叠。
  uk-width-large-*   影响宽度在 960px 以上的设备。网格列将在较小的视口中堆叠。
   -->
  <body class="uk-width-*" style="margin:0">
  <!-- <video autoplay muted loop  style="z-index:-9999;position:fixed;right:0;bottom:0;min-width:100%;min-height:100%;width:auto;height:auto;">
  	<source src="./video/beijin.ogv">
  	<source src="./video/beijin2.mp4">
  </video> -->
  	<div class="uk-width-1-1 uk-grid" >
  		<!-- LOGO -->
  		<div class="uk-width-* " >
  			<div class="uk-width-* uk-width-small-4-5 uk-width-medium-3-5 uk-container-center ">
  				<img class="uk-thumbnail"alt="" src="./img/logo.png">
  				<img class="uk-thumbnail" alt="" src="./img/logo2.gif">
  			</div>
  		</div>
 		<!-- LOGO END -->

		<!-- MAIN -->
 		<div class="uk-width-1-1 uk-width-medium-4-5 uk-width-small-1-1 uk-withd-large-4-5 " style="min-height:600px;max-heigth:1000px;">
  		<iframe src="ship/shiphome.do" frameborder="0" scrolling="no"  id="iframepage" width="100%"  name="homepage" onLoad="iFrameHeight()"  class=" uk-width-*"  ></iframe>
  		
  		
  		</div>
  		<!-- MAIN END -->
  		
  		<!-- User -->
  		<div class="uk-width-medium-1-5 uk-width-small-1-1 uk-width-*" >
  		<div class="uk-width-1-1 " >
			<div class="uk-panel uk-panel-box uk-panel-box-secondary">
				
				<c:choose>
					<c:when test="${admin.gender == 1 }">
					<div class="uk-panel-badge uk-badge">
						&nbsp;&nbsp;先生&nbsp;<i class="uk-icon-child"></i>
						</div>
					</c:when>
					<c:otherwise>
					<div class="uk-panel-badge uk-badge uk-badge-danger">
						&nbsp;&nbsp;女士&nbsp;<i class="uk-icon-female"></i>
						</div>
					</c:otherwise>
				</c:choose>
				
				<h3 class="uk-panel-title"><i class="uk-icon-user">&nbsp;&nbsp;</i>${admin.name }</h3><br>
				<i class="uk-icon-phone"></i>&nbsp;:&nbsp;${admin.telephone }<br><br>
				<i class="uk-icon-home"></i>&nbsp;:&nbsp;${admin.address }<br><br>
				<i class="uk-icon-qq"></i>&nbsp;:&nbsp;${admin.qq }<br><br>
				<i class="uk-icon-envelope"></i>&nbsp;:&nbsp;${admin.email }<br><br>
				<a class="uk-icon-button uk-icon-pencil" href="#my-user" data-uk-modal></a>
				<a class="uk-icon-button uk-icon-key" href="#my-pwd" data-uk-modal></a>
				<a class="uk-icon-button uk-icon-power-off" href="login/index.do" ></a>
			</div>
			
		</div>
  		</div>
  		<!-- User END -->
  		<div class="uk-width-1-1 uk-text-center"  style="height:120px;margin:0" >
  			由Rabbits开发制作<br>
  			Email:rabbits325@live.cn<br>
  			QQ:464020173<br>
  			<h3 class="uk-container-center">Rabbits</h3>
  		</div>
  	</div>
  	
  	<!-- User管理窗口 -->
  	<div id="my-user" class="uk-modal" >
  		<div class="uk-modal-dialog uk-modal-dailog-frameless">
    		<a href="" class="uk-modal-close uk-close uk-close-alt"></a>
    		<iframe src="ship/toadminupdate.do?admin_id=${admin.admin_id }" frameborder="0" scrolling="no" height="540px" width="100%" name="homepage"></iframe>
    	</div>
  	</div>
  	<!-- User管理窗口  END-->	
  	<div id="my-pwd" class="uk-modal">
  		<div class="uk-modal-dialog uk-modal-dailog-frameless">
    		<a href="" class="uk-modal-close uk-close uk-close-alt"></a>
    		<iframe src="ship/toupdateadminpwd.do?admin_id=${admin.admin_id }" frameborder="0" scrolling="no" height="300px" width="100%" name="homepage"></iframe>
    	</div>
  	</div>
  	
  </body>
</html>
