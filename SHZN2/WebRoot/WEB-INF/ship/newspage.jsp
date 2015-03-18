<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'newspage.jsp' starting page</title>
<link rel="stylesheet" type="text/css" href="./css/uikit.almost-flat.min.css">
<script type="text/javascript" src="./js/jquery.min.js"></script>
<script type="text/javascript" src="./js/uikit.min.js"></script>
<script type="text/javascript">
function comeback(){
 location.href = "ship/shiphome.do";
}
</script>
</head>
<body>
<header class="body uk-width-*">
</header>
<section class="body uk-width-*">
	<div class="uk-width-* ">
	<article class="uk-article uk-width-6-7 uk-width-small-5-6 uk-width-medium-5-6 uk-width-large-3-4 uk-container-center uk-margin-lager-top">
    <h1 class="uk-article-title">${news.news_title }</h1>
    <p class="uk-article-meta">日期：${news.news_time }</p>
    <hr class="uk-article-divider">
    <p class="uk-clearfix">
    <img class="uk-align-medium-right uk-width-1-2" src="./img/news/${news.news_img }" alt="">
    ${news.news_text }
</p>
</article>
	</div>
	<div class="uk-width-1-2 uk-width-small-2-3 uk-width-medium-1-3 uk-width-large-1-4 uk-margin-top uk-container-center">
	<input type="button" class="uk-button uk-button-danger uk-width-*" value="返回" onclick="comeback()">
	</div>

</section>

  </body>
</html>
