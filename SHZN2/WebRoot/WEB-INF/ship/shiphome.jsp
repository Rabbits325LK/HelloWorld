<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		<header class="body uk-width-*">
		<div class="uk-width-1-* uk-text-center" >
			
		</div>
		</header>
		<!-- MIAN END -->
		<section class="body uk-width-*">
			<div class="uk-width-4-5 uk-width-small-3-4 uk-width-medium-3-4 uk-width-large-4-6 uk-container-center uk-panel uk-panel-box uk-panel-box-secondary">
				<div class="uk-panel-badge uk-badge">news</div>
    <h3 class="uk-panel-title">最新资讯</h3>
    			<table class="uk-table uk-table-striped">
    			<c:forEach items="${news }" var="c">
					<tr>
						<td>${c.news_title }</td>
						<td class="uk-text-right">${c.news_time }</td>
						<td><a href="ship/tonewspage.do?news_id=${c.news_id }"><i class="uk-icon-eye"></i></a></td>
					</tr>
				</c:forEach>
				</table>
			</div>
		</section>	
		
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
