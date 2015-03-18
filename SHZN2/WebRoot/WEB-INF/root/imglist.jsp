<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'imglist.jsp' starting page</title>
    
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
	function toimgupdate(){
		location.href = "roots/toimgupdate.do";
	}
	function todelete(id){
		location.href = "roots/imgdelete.do?img_id=" + id;
	}
	
</script>
  </head>
  
  <body class="uk-width-* uk-width-small-* uk-width-medium-* uk-width-large-* " >
  <header class="body uk-width-*">
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
  </header>
  <section class="body uk-width-* " >
  	<div class="uk-width-* uk-grid">
    <c:forEach items="${imgs }" var="c">
    	<div class="uk-margin-large-left uk-panel uk-panel-box uk-animation-scale-up uk-panel-box-primary uk-width-4-5 uk-width-small-2-5 uk-width-medium-2-5 uk-width-large-2-7 uk-container-center ">
    		<h3 class="uk-panel-title">${c.img_id }</h3>
    		${c.img_name }<br>
    		${c.img_size }<br>
    		${c.img_type }<br>
    		${c.img_path }<br>
    		<input type="button" value="delete" class="uk-button uk-button-danger" onclick="todelete(${c.img_id})">
    	</div>
    </c:forEach>
    </div>
   	<!-- pages -->
			<div id="pages" class="uk-width-1-* uk-width-samll-2-3 uk-width-medium-1-3 uk-width-large-1-5 uk-container-center uk-text-center uk-margin-large-top">
				<!-- 如果当前是第1页，不允许点上一页 -->
				<c:choose>
					<c:when test="${imgPage.currentPage==1}">
						<!-- <a href="#">上一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="roots/toimglist.do?currentPage=${imgPage.currentPage-1}" class="uk-icon-button uk-icon-arrow-left"></a>
					</c:otherwise>
				</c:choose>

				<c:forEach begin="1" end="${imgPage.totalPage}" var="p">
					<c:choose>
						<c:when test="${p==imgPage.currentPage}">
							<%-- <a href="roots/toimglist.do?currentPage=${p}" class="current_page uk-icon-button">${p}</a> --%>
						</c:when>
						<c:otherwise>
							<a href="roots/toimglist.do?currentPage=${p}" class=" uk-icon-button">${p}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<!-- 当前页是最后一页，不允许点下一页 -->
				<c:choose>
					<c:when test="${imgPage.currentPage==imgPage.totalPage}">
					<!-- 	<a href="#">下一页</a> -->
					</c:when>
					<c:otherwise>
						<a href="roots/toimglist.do?currentPage=${imgPage.currentPage+1}" class="uk-icon-button uk-icon-arrow-right">下一页</a>
					</c:otherwise>
				</c:choose>
			</div>
    </section>
    <footer class="body uk-width-*" style="margin-top:10%">
     <input type="button" value="add" class="uk-button uk-button-success " style="width:60%;margin-left:20%"onclick="toimgupdate()">
    </footer>
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
