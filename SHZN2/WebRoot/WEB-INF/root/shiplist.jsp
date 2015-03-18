<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
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
    
    <title>所有船艇</title>
    
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
function shipDelete(id){
	window.location.href = "root/toshipdelete.do?ship_id=" + id;	
}

function toshipAdd(){
	window.location.href = "root/toshipadd.do";
}
function toShipUpdate(id){
	window.location.href = "root/toshipupdate.do?ship_id=" + id;
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
					<th>ID</th>
					<th>船名</th>
					<th>尺寸</th>
					<th>类型</th>
					<th>载容量</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${ship }" var="c">
			<tfoot>
				<tr>
					<td class="uk-animation-slide-right">${c.ship_id }</td>
					<td>
					${c.ship_name }
					</td>
					<td class="uk-animation-slide-left">${c.ship_size }</td>
					<td class="uk-animation-scale-down">
						${c.ship_type }
					</td>
					<td class="uk-animation-slide-right">${c.ship_Capacity }</td>
					<td class="uk-animation-slide-left">
					<a><i  class="uk-icon-button uk-icon-times" onclick="shipDelete(${c.ship_id})"></i></a>
					<a><i class="uk-icon-button uk-icon-wrench" onclick="toShipUpdate(${c.ship_id})"></i></a>
					</td>
				</tr>
			</tfoot>
			</c:forEach>
		</table>
		
		</div>
	
		<!-- MAIN END -->
		<!-- pages -->
			<div id="pages" class="uk-width-1-* uk-width-samll-2-3 uk-width-medium-1-3 uk-width-large-1-5 uk-container-center uk-text-center uk-margin-large-top">
				<!-- 如果当前是第1页，不允许点上一页 -->
				<c:choose>
					<c:when test="${shipPage.currentPage==1}">
						<!-- <a href="#">上一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="root/toshiplist.do?currentPage=${shipPage.currentPage-1}" class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${shipPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==shipPage.currentPage}">
							<%-- <a href="root/toshiplist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="root/toshiplist.do?currentPage=${p}" class=" uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${shipPage.currentPage==shipPage.totalPage}">
						<!-- <a href="#">下一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="root/toshiplist.do?currentPage=${shipPage.currentPage+1}"  class="uk-icon-button uk-icon-arrow-right"></a>
					</c:otherwise>
				</c:choose>
			</div>
			
				<div class="uk-width-* uk-width-small-2-3 uk-width-medium-1-2 uk-width-large-1-3 uk-container-center uk-margin-large-top">
			<input type="button" class="uk-button uk-button-success uk-width-*" value="添加" onclick="toshipAdd()">
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
	
  </body>
</html>
