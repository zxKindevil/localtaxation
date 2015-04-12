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
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/color.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="<%= url %>/resources/easyui/demo/demo.css">
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%= url %>/resources/easyui/jquery.easyui.min.js"></script>
<style type="text/css">
.text{
	height:18px;
	width:150px;
	border:1px solid #B0C4DE;
	text-align:left;
	padding:1px
}
</style>

</head>

<body>
	<h2>经营信息录入：</h2>
	<div style="padding:20px;border:1px solid #AFEEEE">
		<h3>所属房产信息：</h3>
		<table>
	    		<tr>
	    			<td>路段：</td>
	    			<td><div class="text">${ pro.street }</div></td>
	    			<td style="width:100px"></td>
	    			<td>产权人：</td>
	    			<td><div class="text">${ pro.property_owner }</div></td>
	    			<td style="width:100px"></td>
	    			<td>产权人身份证：</td>
	    			<td><div class="text">${ pro.property_owner_idcard }</div></td>
	    		</tr>
	    		<tr>
	    			<td>地址：</td>
	    			<td colspan="7"><div class="text" style="width:400px">${ pro.property_adress }</div></td>
	    		</tr>
	    </table>
	</div>
	
	<div style="margin:20px;"></div>
	<div style="padding:20px;border:1px solid #AFEEEE">
	    <form id="wform" action="<%= url %>/business/write" method="post" data-options="novalidate:true">
	    	<input name="checked" value="否" type="hidden">;
	    	<table cellpadding="5">
	    		<tr>
	    			<td>房产ID:</td>
	    			<td colspan="7">
	    				<input id="property_id" name="property_id" value="${ pro.property_id }" class="easyui-textbox" type="text" data-options="required:true"></input>
	    				<input id="url" value="${ pageContext.request.contextPath }"  type="hidden"></input>
	    				<a onclick="reload()" href="javascript:void(0)" class="easyui-linkbutton c4" style="height:20px;width:105px">加载房产信息</a>
	    				<a href="<%= url %>/property/retrieve" class="easyui-linkbutton c4" style="height:20px;width:70px">查询</a>
	    				<script type="text/javascript">
	    					var url=$('#url').val();
	    					
	    					function reload(){
	    						var val=$('#property_id').val();
	    						location.href =url+"/business/write/"+val;
	    					}
	    					
	    				</script>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>经营者:</td>
	    			<td><input name="business_owner" value="jin" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>经营者身份证号:</td>
	    			<td><input name="business_owner_idcard" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>目前经营店名:</td>
	    			<td><input name="business_name" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
				<tr>
	    			<td>经营范围:</td>
	    			<td><input name="business_scope" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>租金:</td>
	    			<td><input name="rent" value="0" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>转让费:</td>
	    			<td><input name="transfer_fee" value="0" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
	    		<tr>
	    			<td>经营起始时间:</td>
	    			<td><input name="business_start" class="easyui-datebox" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>经营结束时间:</td>
	    			<td><input name="business_end" class="easyui-datebox" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>营业执照或税务登记法人:</td>
	    			<td><input name="regist_corporation" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>电话1:</td>
	    			<td><input name="phone1" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>电话2:</td>
	    			<td><input name="phone2" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td></td>
	    			<td></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>备注:</td>
	    			<td colspan="7"><input name="comment" value="测试" class="easyui-textbox" data-options="multiline:true" style="height:60px;width:100%"></input></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>录入时间:</td>
	    			<td><input name="record_time" value="2015-01-01 00:00:00" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>录入人员:</td>
	    			<td><input name="record_person" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
	    			<td style="width:100px"></td>
	    			<td>所属分局:</td>
	    			<td><input name="record_person_belong" value="000000" class="easyui-textbox" type="text" data-options="required:true"></input></td>
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
		
		<% //TODO 日期格式设置 先后台处理  %>

	</script>
	
</body>
</html>