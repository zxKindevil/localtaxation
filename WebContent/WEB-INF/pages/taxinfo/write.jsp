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
</head>
<body>
	<h2>税务信息录入</h2>
		
	<form id="wform" action="<%= url %>/tax/write" method="post" data-options="novalidate:true">
		<input value="否" name="checked" type="hidden" ></input>
		
		<div style="padding:20px;border:1px solid #AFEEEE">
			<h3>所属房产信息：</h3>
			<table cellpadding="5">
				<tr>
					<td>省系统编号：</td>
					<td><input value="${ pro.system_code }" name="system_code" size="25" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>房产编号：</td>
					<td><input value="${ pro.property_code }" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>产权人：</td>
					<td><input value="${ pro.property_owner }" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
				</tr>
				
				<tr>
					<td>产权人身份证号：</td>
					<td><input value="${ pro.property_owner_idcard }" size="25" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>房产类型：</td>
					<td><input value="${ pro.property_category }" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>房产使用性质：</td>
					<td><input value="${ pro.property_use }" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
				</tr>
				
				<tr>
					<td>地址：</td>
					<td colspan="7"><input value="${ pro.property_adress }" size="75" disabled="disabled" class="easyui-textbox" type="text" ></input></td>
				</tr>
				
			</table>
		</div>
		
		<br/>
		<div style="padding:20px;border:1px solid #AFEEEE">
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
	    						location.href =url+"/tax/write/"+val;
	    					}
	    					
	    				</script>
	    			</td>
	    		</tr>
				
				<tr>
					<td>营业税：</td>
					<td><input value="999" name="business_tax" class="easyui-textbox" type="text" data-options="required:true"></input></td>
					<td style="width:100px"></td>
					<td>城建税：</td>
					<td><input value="999" name="urban_construction_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>教育附加税：</td>
					<td><input value="999" name="education_surcharge" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
				</tr>
				<tr>
					<td>地方教育附加税：</td>
					<td><input value="999" name="local_education_surcharge" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>印花税：</td>
					<td><input value="999" name="stamp_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>个人所得税：</td>
					<td><input value="999" name="individual_income_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
				</tr>
				<tr>
					<td>房产税：</td>
					<td><input value="999" name="building_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>土地使用税：</td>
					<td><input value="999" name="land_use_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>价格调节基金：</td>
					<td><input value="999" name="price_regulation_fund" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
				</tr>
				<tr>
					<td>滞纳金：</td>
					<td><input value="999" name="fine_for_delaying_payment" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>是否缴纳上半年：</td>
					<td>
						<select name="first_half_year"  panelHeight="auto" style="width:50px;" class="easyui-combobox" data-options="required:true" >
	    					<option value="否">否</option>
	    					<option value="是">是</option>
	    				</select>
					</td>
					<td style="width:100px"></td>
					<td>罚款：</td>
					<td><input value="999" name="fine" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
				</tr>
				<tr>
					<td>所属年度：</td>
					<td><input name="tax_year" value="2015" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>是否缴纳下半年：</td>
					<td>
						<select name="second_half_year"  panelHeight="auto" style="width:50px;" class="easyui-combobox" data-options="required:true" >
	    					<option value="否">否</option>
	    					<option value="是">是</option>
	    				</select>
					</td>
					<td style="width:100px"></td>
					<td>税款合计：</td>
					<td><input value="999" name="total_tax" data-options="required:true" class="easyui-textbox" type="text" ></input></td></td>
				</tr>
				
				<tr>
	    			<td>备注:</td>
	    			<td colspan="7"><input name="comment" value="测试" class="easyui-textbox" data-options="multiline:true" style="height:60px;width:100%"></input></td>
	    		</tr>
				
				<tr>
					<td>录入人员：</td>
					<td><input name="record_person" value="王警官" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>所属分局：</td>
					<td><input name="record_person_belong" value="三分局" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					<td style="width:100px"></td>
					<td>录入时间：</td>
					<td><input name="record_time" value="2015-01-01 00:00:00" data-options="required:true" class="easyui-textbox" type="text" ></input></td>
					
				</tr>
			</table>
		</div>
	
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
	</form>
	
</body>
</html>