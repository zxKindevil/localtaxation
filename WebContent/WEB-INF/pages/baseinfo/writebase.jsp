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
	<h2>基础信息录入</h2>
	<div style="margin:20px;"></div>
	<div style="padding:20px;border:1px solid #AFEEEE">
	    <form id="ff" action="<%= url %>/baseinfo/write" class="easyui-form" method="post" data-options="novalidate:true">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>系统编码:</td>
	    			<td><input value="000000" class="easyui-textbox" type="text" name="system" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>
	    			<td><td style="width:100px"></td>
	    			<td>
	    			<td>
	    		</tr>
	    		<tr>
	    			<td>路段:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="street" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>房屋产权证号:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="property_id" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>目前经营店名:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="storename" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>门面编号:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="storecode" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>经营者姓名:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="business_name" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>经营范围:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="business_scope" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>产权人姓名:</td>
	    			<td><input value="0" class="easyui-textbox" type="text" name="propertyowner" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>建筑面积:</td>
	    			<td><input value="0" class="easyui-textbox" type="text" name="housearea" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>营业执照或税务登记法人:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="regist_corporation" data-options="required:true"></input></td>
	    		
	    		</tr>
	    		<tr>
	    			<td>产权人身份证:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="propertyowner_idcard" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>房屋原值:</td>
	    			<td><input value="0" class="easyui-textbox" type="text" name="originalvalue" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>录入时间:</td>
	    			<td><input value="2000-01-01" class="easyui-textbox" type="text" name="recordtime" disabled="disabled" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>门面类型:</td>
	    			<td>
	    				<select panelHeight="auto" class="easyui-combobox" name="storecategory" data-options="required:true" >
	    					<option value="门面">门面</option>
	    					<option value="#">--测试--</option>
	    					<option value="#">--测试--</option>
	    				</select>
	    			</td>
	    			<td style="width:100px"></td>
	    			<td>所属分局:</td>
	    			<td>
	    				<select panelHeight="auto" class="easyui-combobox" name="belong" data-options="required:true" >
	    					<option value="三分局">三分局</option>
	    					<option value="#">--测试--</option>
	    					<option value="#">--测试--</option>
	    				</select>
	    			</td>
	    			<td style="width:100px"></td>
	    			<td>录入人员:</td>
	    			<td><input value="测试" class="easyui-textbox" type="text" name="recordperson" disabled="disabled" data-options="required:true" ></input></td>
	    		
	    		</tr>
	    		
	    		<% //TODO %>
	    		<tr>
	    			<td>备注:</td>
	    			<td colspan="7"><input value="测试" class="easyui-textbox" name="message" data-options="multiline:true" style="height:60px;width:100%"></input></td>
	    		</tr>
	    		
	    	</table>
	    </form>
	</div>
	<div style="margin:20px;"></div>
	<div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">提交</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
	
	<div id="dlg" closed="true" class="easyui-dialog" title="确认" data-options="dialog:close,iconCls:''" style="width:400px;height:200px;padding:10px">
		<div style="height:70%;width:100%;text-align:center">
			<br/><br/><br/>
			<h2>是否确定提交？</h2>
		</div>
		<div style="height:30%;width:100%;text-align:center">
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确定</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">取消</a>
		</div>
	</div>
	
	
	<script>
		function submitForm(){
			$('#ff').form('submit',{
				onSubmit:function(){
					$('#dlg').dialog('close');
					return $(this).form('enableValidation').form('validate');
				}
			});
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
</body>
</html>