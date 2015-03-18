<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addnews.jsp' starting page</title>
    
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
function comeback(){
	location.href = "root/tonewslist.do";
}
</script>
  </head>
  
  <body>
    <header>
    
    </header>
    
    <section class="body uk-width-*">
    	<div class="uk-width-* uk-width-samll-4-5 uk-width-medium-3-4 uk-width-large-2-3 uk-container-center uk-panel uk-panel-box uk-panel-box-secondary">
    		<h3 class="uk-panel-title">发布新咨询</h3>
    		<form class="uk-form-row" action="root/addnews.do" method="post">
    		<div class="uk-form-row">
    			标题：<input type="text" name="news_title">
    		</div>
    		<div class="uk-form-row">
    			图片：<input type="text" name="news_img">
    		</div>
    		<div class="uk-form-row uk-form-controls-text">
    			正文：<textarea rows="10" cols="30" name="news_text"></textarea>
    		</div>
    		<div class="uk-form-row">
    			<input type="submit" value="提交" class="uk-button uk-button-success">
    			<input type="button" value="返回" class="uk-button uk-button-danger" onclick="comeback()">
        		</div>
    		</form>
    	</div>
    </section>
  </body>
</html>
