<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dateshiplist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


  </head>
  	
  <body>
  
  <div role="tabpanel">

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#Day1" aria-controls="home" role="tab" data-toggle="tab">1Day After</a></li>
    <li role="presentation"><a href="#Day2" aria-controls="profile" role="tab" data-toggle="tab">2Day After</a></li>
    <li role="presentation"><a href="#Day3" aria-controls="messages" role="tab" data-toggle="tab">3Day After</a></li>
    <li role="presentation"><a href="#Day4" aria-controls="settings" role="tab" data-toggle="tab">4Day After</a></li>
    <li role="presentation"><a href="#Day5" aria-controls="profile" role="tab" data-toggle="tab">5Day After</a></li>
    <li role="presentation"><a href="#Day6" aria-controls="messages" role="tab" data-toggle="tab">6Day After</a></li>
    <li role="presentation"><a href="#Day7" aria-controls="settings" role="tab" data-toggle="tab">7Day After</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="Day1"><iframe src="shipo/todateshipTableX.do?day=1" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"   ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day2"><iframe src="shipo/todateshipTableX.do?day=2" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day3"><iframe src="shipo/todateshipTableX.do?day=3" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day4"><iframe src="shipo/todateshipTableX.do?day=4" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day5"><iframe src="shipo/todateshipTableX.do?day=5" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day6"><iframe src="shipo/todateshipTableX.do?day=6" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
    <div role="tabpanel" class="tab-pane" id="Day7"><iframe src="shipo/todateshipTableX.do?day=7" frameborder="0" scrolling="no" id="iframepage" width="100%" name="Dateshippage"    ></iframe></div>
  </div>

</div>
  </body>
</html>
