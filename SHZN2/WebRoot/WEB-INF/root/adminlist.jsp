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
    
    <title>所有用户</title>
    
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
function adminDelete(id){
		window.location.href = "root/toadmindelete.do?admin_id=" + id;	
}


function toAdminUpdate(id){
	window.location.href = "root/toadminroleupdate.do?admin_id=" + id;
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
				<li><a href="root/tonewslist.do">资讯管理</a></li>
                </ul>
                <a href="#offcanvas" class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas></a>
                <div class="uk-navbar-brand uk-navbar-center uk-visible-small">Brand</div>
            </nav>
	
		</div>
		<!-- MENU END -->

		<!-- MAIN -->
		<div class="uk-width-medium-4-5 uk-container-center uk-grid uk-panel uk-overflow-container" >
		<table class="uk-table uk-table-hover uk-table-striped ">
			<caption>所有预约请求</caption>
			<thead>
				<tr class="uk-animation-slide-right">
					<th>ID</th>
					<th>帐号</th>
					<th>密码</th>
					<th>姓名</th>
					<th>电话</th>
					<th>Email</th>
					<th>QQ</th>
					<th>地址</th>
					<th>性别</th>
					<th>注册时间</th>
					<th>操作</th>
				</tr>
			</thead>
			<c:forEach items="${admin }" var="c">
			<tfoot>
				<tr class="uk-animation-slide-left">
					<td>${c.admin_id }</td>
					<td>
					${c.admin_code }
					</td>
					<td>${c.password }</td>
					<td>
						${c.name }
					</td>
					<td>${c.telephone }</td>
					<td>${c.email }</td>
					<td>${c.qq }</td>
					<td>${c.address }</td>
					<td>
						<c:choose>
							<c:when test="${c.gender == 1 }">
								先生
							</c:when>
							<c:otherwise>
								女士
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						${c.enrolldate }
					</td>
					<td>
					<a><i  class="uk-icon-button uk-icon-times" onclick="adminDelete(${c.admin_id})"></i></a>
					<a><i class="uk-icon-button uk-icon-wrench" onclick="toAdminUpdate(${c.admin_id})"></i></a>
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
					<c:when test="${SHZN_AdminPage.currentPage==1}">
						<!-- <a href="#">上一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="root/adminlist.do?currentPage=${SHZN_AdminPage.currentPage-1}" class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${SHZN_AdminPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==SHZN_AdminPage.currentPage}">
							<%-- <a href="root/adminlist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="root/adminlist.do?currentPage=${p}" class=" uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${SHZN_AdminPage.currentPage==SHZN_AdminPage.totalPage}">
					<!-- 	<a href="#">下一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="root/adminlist.do?currentPage=${SHZN_AdminPage.currentPage+1}" class="uk-icon-button uk-icon-arrow-right">下一页</a>
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
					<li><a href="root/tonewslist.do">资讯管理</a></li>
                </ul>
            </div>
        </div>
	
  </body>
</html>