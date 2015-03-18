<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	window.location.href = "root/tonewsDelete.do?news_id=" + id;	 
}
function addnews(){
	location.href = "root/toaddnews.do";
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
				<li><a href="root/findAllshipo.do">所有请求信息</a></li>
				<li><a href="root/toshiplist.do">所有船艇</a></li>
				<li><a href="root/adminlist.do">所有用户</a></li>
				<li><a href="roots/toimglist.do">图片管理</a></li>
				<li><a href="root/tonewslist.do">资讯管理</a></li>
                </ul>
                <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a>
                <div class="uk-navbar-brand uk-navbar-center uk-visible-small">Brand</div>
            </nav>
		</div>
		<!-- MENU END -->

		<!-- MAIN -->
		<div class="uk-width-medium-4-5 uk-container-center uk-grid uk-panel" >
		<table class="uk-table uk-table-hover uk-table-striped ">
			
			<c:forEach items="${news }" var="c">
			<tfoot>
				<tr>
					<td class="uk-animation-slide-right">${c.news_id }</td>
					<td class="uk-animation-scale-down">
					${c.news_title }
					</td >
					<td class="uk-animation-scale-down">${c.news_time }</td>
					<td class="uk-animation-slide-left">
						<a><i class="uk-icon-button uk-icon-times" onclick="Delete(${c.news_id})"></i></a>
					</td>
				</tr>
			</tfoot>
			</c:forEach>
		</table>
		</div>
		
		<!-- MAIN END -->
		<!-- pages -->
			<div id="pages" class="uk-width-1-* uk-width-samll-2-3 uk-width-medium-1-3 uk-width-large-1-5 uk-container-center uk-text-center uk-margin-large-top" >
				<!-- 如果当前是第1页，不允许点上一页 -->
				<c:choose>
					<c:when test="${newsPage.currentPage==1}">
						<!-- <a href="#"><i class="uk-icon-arrow-left"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="root/tonewslist.do?currentPage=${newsPage.currentPage-1}"class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${newsPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==newsPage.currentPage}">
							<%-- <a href="root/findAllshipo.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="root/tonewslist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${newsPage.currentPage==newsPage.totalPage}">
						<!-- <a href="#"><i class="uk-icon-arrow-right"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="root/tonewslist.do?currentPage=${newsPage.currentPage+1}" class="uk-icon-button uk-icon-arrow-right"></a>
					</c:otherwise>
				</c:choose>
			</div>
		<div class="uk-width-*">
		<div class="uk-width-* uk-width-small-4-5 uk-width-medium-3-4 uk-width-large-2-3 uk-container-center">
			<input type="button" class=" uk-button uk-button-success uk-width-*" value="添加新资讯" onclick="addnews()">
		</div>
	</div>
	<div id="offcanvas" class="uk-offcanvas">
            <div class="uk-offcanvas-bar">
                <ul class="uk-nav uk-nav-offcanvas">
                   
                   <li><a href="ship/shiphome.do">首页</a></li>
				<li><a href="root/findAllshipo.do">所有请求信息</a></li>
				<li><a href="root/toshiplist.do">所有船艇</a></li>
				<li><a href="root/adminlist.do">所有用户</a></li>
				<li><a href="roots/toimglist.do">图片管理</a></li>
				<li><a href="root/tonewslist.do">资讯管理</a></li>
                </ul>
            </div>
        </div>
        
        
	</div>
</body>
</html>