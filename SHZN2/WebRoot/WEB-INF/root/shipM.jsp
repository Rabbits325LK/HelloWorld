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
	window.location.href = "root/toShipoDelete.do?ship_id=" + id;	 
}
function toPass(id){
	window.location.href = "root/toShipPass.do?ship_id=" + id;
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
			<caption>所有预约请求</caption>
			<thead>
				<tr class="uk-animation-slide-bottom">
					<th>船名</th>
					<th>预约情况</th>
					<th>预约时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${shipo }" var="c">
			<tfoot>
				<tr>
					<td class="uk-animation-slide-right">${c.ship_name }</td>
					<td class="uk-animation-scale-down">
					<c:choose>
						<c:when test="${c.ship_role == 1 }">
							<i class="uk-icon-spin uk-icon-spinner"></i>等待受理
						</c:when>
						<c:otherwise>
							<i class="uk-icon-check-square-o"></i>预约成功
						</c:otherwise>
					</c:choose>
					</td >
					<td class="uk-animation-scale-down">${c.startime }</td>
					<td class="uk-animation-slide-left">
						<a><i class="uk-icon-button uk-icon-times" onclick="Delete(${c.ship_id})"></i></a>
						<c:choose>
							<c:when test="${c.ship_role == 1 }">
								<a><i class="uk-icon-button uk-icon-legal" onclick="toPass(${c.ship_id})"></i></a>
							</c:when>
						</c:choose>
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
					<c:when test="${shipoPage.currentPage==1}">
						<!-- <a href="#"><i class="uk-icon-arrow-left"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="root/findAllshipo.do?currentPage=${shipoPage.currentPage-1}"class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${shipoPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==shipoPage.currentPage}">
							<%-- <a href="root/findAllshipo.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="root/findAllshipo.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${shipoPage.currentPage==shipoPage.totalPage}">
						<!-- <a href="#"><i class="uk-icon-arrow-right"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="root/findAllshipo.do?currentPage=${shipoPage.currentPage+1}" class="uk-icon-button uk-icon-arrow-right"></a>
					</c:otherwise>
				</c:choose>
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