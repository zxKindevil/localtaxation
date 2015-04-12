<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String url=request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>测试版地税营业性住房税务管理系统</title>
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/demo/demo.css">
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.easyui.min.js"></script>
<style>
	.style01{
		background:#87CEFA;
		height:17px;
		width:200px";
		margin:5px;
	}
	.style02{
		color:black;
		text-decoration : none;
	}
	.style03{
		padding:10px;
		text-align:center
	}
</style>

</head>
<body class="easyui-layout">
	
	<%//上边  %>
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">
		<a href="<%= url %>/j_spring_security_logout" style="float:right" >注销</a>
	</div>
	
	<%//左边  %>
	<div data-options="region:'west',split:true,title:'West'" style="width:150px;padding:5px;">
		
		<div style="height:auto" class="easyui-accordion" data-options="fit:true,border:false,height:'auto'">
			<sec:authorize ifAnyGranted="ROLE_USER">
				<div class="style03" title="基础信息" data-options="selected:true" >
					<div class="style01"><a class="style02" href="<%= url %>/property/write" target="center">房产录入</a></div>
					<div class="style01"><a class="style02" href="<%= url %>/property/retrieve" target="center">房产查询</a></div>
					<div class="style01"><a class="style02" href="<%= url %>/business/write" target="center">经营信息录入</a></div>
					<div class="style01"><a class="style02" href="<%= url %>/business/retrieve" target="center">经营信息查询</a></div>
				</div>
				<div class="style03" title="税务信息" >
					<div class="style01">
						<a class="style02" href="<%= url %>/tax/write" target="center">录入</a></div>
					<div class="style01">
						<a class="style02" href="<%= url %>/tax/retrieve" target="center">查询</a></div>
				</div>
				<div class="style03" title="信息" >
					<div class="style01">
						<a class="style02" href="<%= url %>/verInfo/main.jsp" target="center">更新查询</a></div>
				</div>
			</sec:authorize>
			
			<sec:authorize ifAnyGranted="ROLE_MANAGER,ROLE_GUEST">
				<div class="style03" title="信息查询" >
					<div class="style01"><a class="style02" href="<%= url %>/property/retrieve" target="center">房产信息查询</a></div>
					<div class="style01"><a class="style02" href="<%= url %>/business/retrieve" target="center">经营信息查询</a></div>
					<div class="style01"><a class="style02" href="<%= url %>/tax/retrieve" target="center">税务信息查询</a></div>
				
					<div class="style01"><a class="style02" href="<%= url %>/verInfo/main.jsp" target="center">更新信息</a></div>
				</div>
			</sec:authorize>
			
		</div>
	
	</div>
	
	<%//右边  %>
	<div data-options="region:'east',split:true,collapsed:true,title:'East'" style="width:100px;padding:10px;">
	</div>
	
	<%//下边  %>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">
	</div>
	
	<%//中间  %>
	<div data-options="region:'center',title:' '">
		<% // http://www.chinatax.gov.cn/ /localtaxation/  %>
		<iframe name="center" src="http://www.chinatax.gov.cn/" style="width:99.5%;height:99%"></iframe>
	</div>
</body>
</html>