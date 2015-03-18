<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	function yuyue(id) {
		window.location.href = "ship/shippage.do?ship_id=" + id;
	}
</script>
</head>

<body>
	<div class="uk-width-*">

		<!-- MENU -->
		<div class="uk-width-medium-1-1 uk-container-center uk-margin-bottom">
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
		<div class="uk-width-2-3 uk-width-small-3-4 uk-width-medium-4-5 uk-container-center uk-grid uk-panel">
		
			
				<c:forEach items="${ship }" var="c">
					<tfoot>

						<div class="uk-width-* uk-panel uk-panel-box uk-grid uk-margin-left uk-animation-scale-up">
						
						
							<div class="uk-width-1-3 uk-width-samll-1-2 uk-width-medium-1-2 uk-width-large-2-3"><h1>${c.ship_name }</h1>
							详细信息
							<a><i class="uk-icon-edit"
									onclick="yuyue(${c.ship_id})"></i></a></div>
							<div class="uk-width-2-3 uk-width-samll-1-2 uk-width-medium-1-2 uk-width-large-1-3">
							<img class="uk-width-1-1 uk-width-samll-2-3 uk-width-medium-1-2 uk-width-large-1-3 uk-align-medium-right" src="./img/ship/${c.ship_img }" alt=""> 
							</div>
						
						</div>
					</tfoot>
				</c:forEach>
		<!-- 	</table> -->
			
		</div>
		<!-- pages -->
			<div id="pages" class="uk-width-1-* uk-width-samll-2-3 uk-width-medium-1-3 uk-width-large-1-5 uk-container-center uk-text-center uk-margin-large-top" >
				<!-- 如果当前是第1页，不允许点上一页 -->
				<c:choose>
					<c:when test="${shipPage.currentPage==1}">
						<!-- <a href="#"><i class="uk-icon-arrow-left"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="ship/shiplist.do?currentPage=${shipPage.currentPage-1}"class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${shipPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==shipPage.currentPage}">
							<%-- <a href="ship/shiplist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="ship/shiplist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${shipPage.currentPage==shipPage.totalPage}">
						<!-- <a href="#"><i class="uk-icon-arrow-right"></i></a> -->
					</c:when>
					<c:otherwise>
						<a href="ship/shiplist.do?currentPage=${shipPage.currentPage+1}" class="uk-icon-button uk-icon-arrow-right"></a>
					</c:otherwise>
				</c:choose>
			</div>
	</div>
	<!-- MAIN END -->
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

