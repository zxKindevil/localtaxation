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
	<h2>房产号：${ pro.property_id }&nbsp详细信息</h2>
	
	<div style="margin:20px;">
		<a href="<%= url %>/business/write/${pro.property_id}" class="easyui-linkbutton" data-options="iconCls:'icon-add'">&nbsp;添加经营信息&nbsp;</a>
		<a href="<%= url %>/tax/write/${pro.property_id}" class="easyui-linkbutton" data-options="iconCls:'icon-add'">&nbsp;缴纳税款&nbsp;</a>
	</div>
	
	<div style="padding:20px;border:1px solid #AFEEEE">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>省系统编号:</td>
	    			<td>${ pro.system_code }</td>
	    			<td style="width:100px"></td>
	    		 	<td></td>
	    			<td></td>
	    			<td style="width:100px"></td>
	    			<td></td>
	    			<td></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>路段:</td>
	    			<td>${ pro.street }</td>
	    			<td style="width:100px"></td>
	    			<td>房产编号:</td>
	    			<td>${ pro.property_code }</td>
	    			<td style="width:100px"></td>
	    			<td>产权人:</td>
	    			<td>${ pro.property_owner }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>产权人身份证:</td>
	    			<td>${ pro.property_owner_idcard }</td>
	    			<td style="width:100px"></td>
	    			<td>产权证号:</td>
	    			<td>${ pro.property_idcard }</td>
	    			<td style="width:100px"></td>
	    			<td>房产原值:</td>
	    			<td>${ pro.property_value }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>房产面积:</td>
	    			<td>${ pro.property_area }</td>
	    			<td style="width:100px"></td>
	    			<td>房产类型:</td>
	    			<td>${ pro.property_category }</td>
	    			<td style="width:100px"></td>
	    			<td>房产使用性质:</td>
	    			<td>${ pro.property_use }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>地址:</td>
	    			<td>${ pro.property_adress }</td>
	    			<td style="width:100px"></td>
	    			<td>电话1:</td>
	    			<td>${ pro.phone1 }</td>
	    			<td style="width:100px"></td>
	    			<td>电话2:</td>
	    			<td>${ pro.phone2 }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>录入时间:</td>
	    			<td>${ pro.record_time }</td>
	    			<td style="width:100px"></td>
	    			<td>录入人员:</td>
	    			<td>${ pro.record_person }</td>
	    			<td style="width:100px"></td>
	    			<td>所属分局:</td>
	    			<td>${ pro.record_person_belong }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>备注:</td>
	    			<td colspan="7">${ pro.comment }</td>
	    		</tr>
	    		
	    		<tr>
	    			<td>是否审核通过:</td>
	    			<td>${ pro.checked }</td>
	    			<td style="width:100px"></td>
	    			<td>审核人：</td>
	    			<td>${ pro.checked_person }</td>
	    			<td><td style="width:100px"></td>
	    			<td></td>
	    			<td></td>
	    		</tr>
	    		
	    	</table>
	</div>
	
	<div style="margin:20px;">
		<h3>税务信息：</h3>
	</div>
	<div style="border:1px solid #AFEEEE">
		<table border="1" style="width:100%;height:100%;">
		<thead>
			<tr>
				<th   width="60" align="center">年度</th>
				<th   width="60" align="center">税款合计</th>
				<th   width="60" align="center">是否缴纳上半年</th>
				<th   width="60" align="center">是否缴纳下半年</th>
				<th   width="60" align="center">是否审核</th>
				<th   width="60" align="center">审核人</th>
				<th   width="90px" align="center">录入时间</th>
				<th   width="60" align="center">录入人员</th>
				<th   width="60" align="center">所属分局</th>
				<th   width="60" align="center">营业税</th>
				<th   width="60" align="center">个人所得税</th>
				<th   width="60" align="center">城建税</th>
				<th   width="60" align="center">教育附加税</th>
				<th   width="60" align="center">地方教育附加税</th>
				<th   width="60" align="center">印花税</th>
				<th   width="60" align="center">价格调节基金</th>
				<th   width="60" align="center">房产税</th>
				<th   width="60" align="center">土地使用税</th>
				<th   width="60" align="center">滞纳金</th>
				<th   width="60" align="center">罚款</th>
				<th   width="200" align="center">备注</th>
			</tr>
		</thead>
		
		<c:forEach var="var" items="${ tax_list }" >
			<tr>
				<td >${ var.tax_year }</td>
				<td >${ var.total_tax }</td>
				<td>
					<c:if test="${var.first_half_year=='是'}">
						是
					</c:if>
					<c:if test="${var.first_half_year=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td>
					<c:if test="${var.second_half_year=='是'}">
						是
					</c:if>
					<c:if test="${var.second_half_year=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td>
					<c:if test="${var.checked=='是'}">
						是
					</c:if>
					<c:if test="${var.checked=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td >${ var.checked_person }</td>
				<td >${ var.record_time }</td>
				<td >${ var.record_person }</td>
				<td >${ var.record_person_belong }</td>
				<td >${ var.business_tax }</td>
				<td >${ var.individual_income_tax }</td>
				<td >${ var.urban_construction_tax }</td>
				<td >${ var.education_surcharge }</td>
				<td >${ var.local_education_surcharge }</td>
				<td >${ var.stamp_tax }</td>
				<td >${ var.price_regulation_fund }</td>
				<td >${ var.building_tax }</td>
				<td >${ var.land_use_tax }</td>
				<td >${ var.fine_for_delaying_payment }</td>
				<td >${ var.fine }</td>
				<td >${ var.comment }</td>
			</tr>
			</c:forEach>
		</table>
	</div>
	
	
	<% //经营信息  %>
	<div style="margin:20px;">
		<h3>经营信息：</h3>
	</div>
	<div style="border:1px solid #AFEEEE">
		<table id="busidg" style="width:100%;height:200px" data-options="
					rownumbers:true,
					singleSelect:true,
					autoRowHeight:false,
					pagination:true,
					pageSize:20">
			<thead>
				<tr>
					<th field="th04" width="83">经营起始时间</th>
					<th field="th05" width="83">经营结束时间</th>
					<th field="th06" width="80">经营者</th>
					<th field="th01" width="80">经营者身份证号</th>
					<th field="th07" width="80">目前经营店名</th>
					<th field="th08" width="80">经营范围</th>
					<th field="th09" width="80">租金</th>
					<th field="th10" width="80">转让费</th>
					<th field="th11" width="80">营业执照或税务登记法人</th>
					<th field="th12" width="80">电话1</th>
					<th field="th13" width="80">电话2</th>
					<th field="th14" width="80">备注</th>
					<th field="th17" width="80">录入时间</th>
					<th field="th18" width="80">录入人员</th>
					<th field="th19" width="80">所属分局</th>
					<th field="th20" width="80">是否审核通过</th>
					<th field="th21" width="80">审核人</th>
					<th field="th22" width="80">修改</th>
					<th field="th23" width="80">删除</th>
				</tr>
			</thead>
			<c:forEach var="var" items="${ busi_list }" >
			<tr>
					<td >${ var.business_start }</td>
					<td >${ var.business_end }</td>
					<td >${ var.business_owner }</td>
					<td >${ var.business_owner_idcard }</td>
					<td >${ var.business_name }</td>
					<td >${ var.business_scope }</td>
					<td >${ var.rent }</td>
					<td >${ var.transfer_fee }</td>
					<td >${ var.regist_corporation }</td>
					<td >${ var.phone1 }</td>
					<td >${ var.phone2 }</td>
					<td >${ var.comment }</td>
					<td >${ var.record_time }</td>
					<td >${ var.record_person }</td>
					<td >${ var.record_person_belong }</td>
					<td >${ var.checked }</td>
					<td >${ var.checked_person }</td>
					<td >
						<a href="<%= url %>/business/update/${ var.business_id }" style="color:blue">修改</a>
					</td>
					<td >
						<a href="<%= url %>/business/delete/${ var.business_id }" style="color:blue">删除</a>
					</td>
				</tr>
				</c:forEach>
		</table>
	</div>
	<script>
		function pagerFilter(data){
			if (typeof data.length == 'number' && typeof data.splice == 'function'){	// is array
				data = {
					total: data.length,
					rows: data
				}
			}
			var dg = $(this);
			var opts = dg.datagrid('options');
			var pager = dg.datagrid('getPager');
			pager.pagination({
				onSelectPage:function(pageNum, pageSize){
					opts.pageNumber = pageNum;
					opts.pageSize = pageSize;
					pager.pagination('refresh',{
						pageNumber:pageNum,
						pageSize:pageSize
					});
					dg.datagrid('loadData',data);
				}
			});
			if (!data.originalRows){
				data.originalRows = (data.rows);
			}
			var start = (opts.pageNumber-1)*parseInt(opts.pageSize);
			var end = start + parseInt(opts.pageSize);
			data.rows = (data.originalRows.slice(start, end));
			return data;
		} 
	
		
		$(function(){
			$('#busidg').datagrid({loadFilter:pagerFilter}).datagrid('loadData', getData());
		});
	</script>
</body>
</html>