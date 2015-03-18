<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 未使用页面 -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
function Delete(id){
	window.location.href = "shipo/toShipoDelete.do?ship_id=" + id;	 
}
</script>
</head>

<body>
	<div class="uk-width-*" >

		<!-- MENU -->
		<div class="uk-width-medium-1-1 uk-container-center uk-margin-bottom" >
			<nav class="uk-navbar uk-margin-large-bottom">
                <a class="uk-navbar-brand uk-hidden-small" href="layouts_frontpage.html">Brand</a>
                <ul class="uk-navbar-nav uk-hidden-small">
                    
                    <li><a href="ship/shiphome.do">首页</a></li>
				<li><a href="ship/shiplist.do">船艇信息</a></li>
				<li><a href="shipo/unshiplist.do">带受理</a></li>
				<li><a href="shipo/ushiplist.do">已预约</a></li>
				<li><a href="ship/help.do">帮助</a></li>
				<li><a href="ship/about.do">关于我们</a></li>
				<li><a href="root/findAllshipo.do">管理员页面</a></li>
                </ul>
                <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a>
                <div class="uk-navbar-brand uk-navbar-center uk-visible-small">Brand</div>
            </nav>
		</div>
		<!-- MENU END -->

		<!-- MAIN -->
		<div class="uk-width-medium-4-5 uk-container-center uk-grid uk-panel" >
		<table class="uk-table uk-table-hover uk-table-striped ">
			<caption>等待受理的预约</caption>
			<thead>
				<tr class="uk-animation-slide-right">
					<th>船名</th>
					<th>预约情况</th>
					<th>预约时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${shipo }" var="c">
			<tfoot>
				<tr class="uk-animation-slide-left">
					<td>${c.ship_name }</td>
					<td><i class="uk-icon-spin uk-icon-spinner"></i>等待受理</td>
					<td>${c.startime }</td>
					<td><a><i class="uk-icon-button uk-icon-times" onclick="delete(${c.ship_id})"></i></a></td>
				</tr>
			</tfoot>
			</c:forEach>
		</table>
		</div>
		
		<!-- MAIN END -->
	</div>
	<div id="offcanvas" class="uk-offcanvas">
            <div class="uk-offcanvas-bar">
                <ul class="uk-nav uk-nav-offcanvas">
                   
                    <li><a href="ship/shiphome.do">首页</a></li>
				<li><a href="ship/shiplist.do">船艇信息</a></li>
				<li><a href="shipo/unshiplist.do">带受理</a></li>
				<li><a href="shipo/ushiplist.do">已预约</a></li>
				<li><a href="ship/help.do">帮助</a></li>
				<li><a href="ship/about.do">关于我们</a></li>
				<li><a href="root/findAllshipo.do">管理员页面</a></li>
                </ul>
            </div>
        </div>
        
        
        
</body>
</html>