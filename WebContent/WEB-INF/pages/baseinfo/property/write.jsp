<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="
	com.tools.tools,
	java.util.Date	       
" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String url=request.getContextPath();
	String nowDate=tools.date_javaToDB(new Date());
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
	<h2>房产信息录入</h2>
	<div style="margin:20px;"></div>
	<div style="padding:20px;border:1px solid #AFEEEE">
	    <form id="wform" action="<%= url %>/property/write" method="post" data-options="novalidate:true">
	    	<input name="checked" value="否" type="hidden"></input>
	    	<table cellpadding="5">
	    		<tr>
	    			<td>省系统编号:</td>
	    			<td><input name="system_code" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td></td>
	    			<td></td>
	    			<td style="width:100px"></td>
	    			<td></td>
	    			<td></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>路段:</td>
	    			<td><input name="street" value="河滨路" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>房产编号:</td>
	    			<td><input name="property_code" value="河滨路-2" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>产权人:</td>
	    			<td><input name="property_owner" value="令狐" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>产权人身份证:</td>
	    			<td><input name="property_owner_idcard" value="522122111111111111" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>产权证号:</td>
	    			<td><input name="property_idcard" value="0000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>房产原值:</td>
	    			<td><input name="property_value" value="0" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>房产面积:</td>
	    			<td><input name="property_area" value="0" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>房产类型:</td>
	    			<td>
	    				<select name="property_category" style="width:70px"  panelHeight="auto" class="easyui-combobox" data-options="required:true" >
	    					<option value="门面">门面</option>
	    					<option value="商场">商场</option>
	    					<option value="住房">住房</option>
	    				</select>
	    			</td>
	    			<td style="width:100px"></td>
	    			<td>房产使用性质:</td>
	    			<td>
						<select name="property_use" style="width:70px" panelHeight="auto" class="easyui-combobox" data-options="required:true" >
	    					<option value="租用">租用</option>
	    					<option value="自用">自用</option>
	    				</select>
					</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>地址:</td>
	    			<td><input name="property_adress" value="南天门" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>电话1:</td>
	    			<td><input name="phone1" value="135410000233" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>电话2:</td>
	    			<td><input name="phone2" value="" class="easyui-textbox" type="text" ></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>录入时间:</td>
	    			<td><%= nowDate %>
	    				<input name="record_time" value="<%= nowDate %>" type="hidden"></input></td>
	    			<td style="width:100px"></td>
	    			<td>录入人员:</td>
	    			<td><input name="record_person" value="张三" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>所属分局:</td>
	    			<td><input name="record_person_belong" value="三分局" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>备注:</td>
	    			<td colspan="7"><input name="comment" value="测试" class="easyui-textbox" data-options="multiline:true" style="height:60px;width:100%"></input></td>
	    		</tr>
	    		
	    	</table>
	    </form>
	</div>
	<div style="margin:20px;"></div>
	
	<div style="text-align:center;padding:5px">
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">确定</a>
	    	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
	
	<script>
		function submitForm(){
			var i=confirm("是否确认提交?");
			if (i==true)
			{
				var flag= $('#wform').form('enableValidation').form('validate');
				if(flag == true){
					$('#wform').submit();
				}
			}
		}
		function clearForm(){
			$('#wform').form('clear');
		}
	</script>
	
</body>
</html>