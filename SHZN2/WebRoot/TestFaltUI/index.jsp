<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    <meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta name="viewport" content="width=1000, initial-scale=1.0, maximum-scale=1.0">
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <!-- Loading Bootstrap -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Loading Flat UI -->
    <link href="./css/flat-ui.css" rel="stylesheet">
    <link href="./css/demo.css" rel="stylesheet">

    <link rel="shortcut icon" href="img/favicon.ico">
  </head>
  
  <body style="width:100%">
  <div id="page" style="width:40%;margin-left:30%">
    <header>
    	<h1>山河智能</h1>
    	<h3>Welcome</h3>
    </header>
    <section>
    	<form>
    		<input type="text" value="" placeholder="Inactive" class="span3" />
    	
    	</form>
    </section>
    </div>
  </body>
</html>
