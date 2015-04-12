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

<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px"></div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;"></div>
	
	
	<div data-options="region:'center'"><center>
		
		<div style="margin:100px 0;"></div>
		
		<c:if test="${ not empty param.error }">
			<font color="red">Login error!</font>
			${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</c:if>
		
		<div class="easyui-panel" title="登录" style="width:340px;">
			<div style="padding:10px 60px 20px 60px">
		    <form id="wform" action="<%= url %>/j_spring_security_check" method="post" data-options="novalidate:true">
		    	<table cellpadding="5">
		    		<tr>
		    			<td>账户:</td>
		    			<td><input name="j_username" class="easyui-textbox" type="text" data-options="required:true"></input></td>
		    		</tr>
		    		<tr>
		    			<td>密码:</td>
		    			<td><input name="j_password" class="easyui-textbox" type="password" data-options="required:true"></input></td>
		    		</tr>
		    	</table>
		    </form>
		    <div style="text-align:center;padding:5px">
		    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登录</a>
		    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
		    </div>
		    </div>
		</div>
		<script>
			function submitForm(){
				var flag= $('#wform').form('enableValidation').form('validate');
				if(flag == true){
					$('#wform').submit();
				}
			}
			function clearForm(){
				$('#wform').form('clear');
			}
		</script>
	
	</center></div>
</body>
</html>