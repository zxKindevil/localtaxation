<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String url=request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>#</title>
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/demo/demo.css">
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.easyui.min.js"></script>

</head>

<body>
<a href="template/poi">testPOI</a>
<br/>
<a href="poi/input">导入excel</a>
<br/>
<a href="template/login">SpringMVC</a>
<br/>
<a href="mainview/show">Show localtaxation</a>
<br/>
<a href="baseinfo/write">Show baseinfo/writebase.jsp</a>
</body>
</html>