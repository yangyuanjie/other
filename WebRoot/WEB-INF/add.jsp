<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="view/insert" method="post">
  	<table border="1">
  		<tr><th colspan="2">增加BUG</th></tr>
  		<tr>
  			<th>所属项目</th>
  			<td>
  				<select name="projectId">
  				<option value="2">图书管理系统</option>
  				<option value="1">超市管理系统</option>
  				<option value="3">企业管理系统</option>
  				</select>
  			</td>
  		</tr>
  		<tr>
  			<th>严重性</th>
  			<td>
  				<select name="severity">
  				<option value="10">文字错误</option>
  				<option value="20">次要错误</option>
  				<option value="30">严重错误</option>
  				</select>
  			</td>
  		</tr>
  		<tr>
  			<th>BUG标题</th>
  			<td><input type="text" name="title"></td>
  		</tr>
  		<tr>
  			<th>报告人</th>
  			<td><input type="text" name="reportUser"></td>
  		</tr>
  		<tr>
  			<td colspan="2" align="center">
  				<input type="submit" value="提交">
  				<input type="button" value="返回">
  			</td>
  		</tr>
  	</table>
  	</form>
  </body>
</html>
