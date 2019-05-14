<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  	<div>
  	<table>
  	<tr>
  		<td>
  		<form action="view/creat" method="post">
  		所属项目:<select name="projectId">
  			<option value="0">全部</option>
  			<option value="2">图书管理系统</option>
  			<option value="1">超市管理系统</option>
  			<option value="3">企业管理系统</option>
  			</select>
  		<input type="submit" value="查询">
  	</form>
  	</td>
  	<td align="right">
  		<form action="view/add" method="post">
  		<input type="submit" value="新增项目">
  		</form>
  		</td>
  	</tr>
  	</table>
  	
  	
  	
  	</div>
  
    <table border="1">
    		<tr><th colspan="5">BUG列表</th></tr>
    		<tr>
    			<th>BUG编号</th>
    			<th>严重性</th>
    			<th>标题</th>
    			<th>报告人</th>
    			<th>报告时间</th>
    		</tr>
    		<c:forEach var="p" items="${list}">
    			<tr>
    			<th>${p.id}</th>
    			<th>
    			<c:if test="${p.severity==10}">文字错误</c:if>
    			<c:if test="${p.severity==20}">次要错误</c:if>
    			<c:if test="${p.severity==30}">严重错误</c:if>
    			</th>
    			<th>${p.title}</th>
    			<th>${p.reportUser}</th>
    			<th>
    			<fmt:formatDate pattern="yyyy-MM-dd HH-mm-ss" value="${p.createDate}"/>
    			</th>
    		</tr>
    		</c:forEach>
    		
    	</table>
  </body>
</html>
