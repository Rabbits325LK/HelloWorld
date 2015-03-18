<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'dateshipTableX.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
  </head>
  
  <body>
   <div class="uk-width-*">
   	<h1>${dateship.dateShip_name }</h1>
   	<h3>${spacifiedDay }</h3>
   	
  <div>
 <form class="form-horizontal">
    <fieldset>
      <div id="legend" class="">
        <legend class="">预订</legend>
      </div>
    <div class="control-group">

          <!-- Select Basic -->
          <label class="control-label">开始时间</label>
          <div class="controls">
            <select class="input-xlarge">
      <option>9.h</option>
      <option>10.h</option>
      <option>11.h</option>
      <option>12.h</option>
      <option>13.h</option>
      <option>14.h</option>
      <option>15.h</option>
      <option>16.h</option>
      <option>17.h</option>
      <option>18.h</option>
      <option>19.h</option>
      <option>20.h</option></select>
          </div>

        </div>

    <div class="control-group">

          <!-- Select Basic -->
          <label class="control-label">结束时间</label>
          <div class="controls">
            <select class="input-xlarge">
      <option>10.h</option>
      <option>11.h</option>
      <option>12.h</option>
      <option>13.h</option>
      <option>14.h</option>
      <option>15.h</option>
      <option>16.h</option>
      <option>17.h</option>
      <option>18.h</option>
      <option>19.h</option>
      <option>20.h</option>
      <option>21.h</option></select>
          </div>

        </div>

    <div class="control-group">
          <label class="control-label"></label>

          <!-- Button -->
          <div class="controls">
            <button class="btn btn-success">提交</button>
          </div>
        </div>

    <div class="control-group">
          <label class="control-label"></label>

          <!-- Button -->
          <div class="controls">
            <button class="btn btn-danger">返回</button>
          </div>
        </div>

    </fieldset>
  </form>
</div>
   </div>
  </body>
</html>
