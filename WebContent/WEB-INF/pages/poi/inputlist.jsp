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
	
	<% 
		request.setAttribute("list", new Object());
		out.print(request.getAttribute("list"));
	%>
	<form action="<%= url %>/poi/dbwrite" method="post">
		<input type="submit" />
	</form>
	
	<div style="margin:5px;">
		<table id="dg" style="width:100%;height:500px" data-options="
				rownumbers:true,
				singleSelect:true,
				autoRowHeight:false,
				pagination:true,
				pageSize:20">
		<thead>
			<tr>
				<th field="th00" width="60" align="center">房产ID</th>
				<th field="th01" width="60" align="center">路段</th>
				<th field="th27" width="60" align="center">产权人</th>
				<th field="th02" width="60" align="center">产权人身份证</th>
				<th field="th03" width="60" align="center">税务年度</th>
				<th field="th04" width="60" align="center">税款合计</th>
				<th field="th05" width="60" align="center">是否缴纳上半年</th>
				<th field="th06" width="60" align="center">下半年</th>
				<th field="th99" width="60" align="center">录入时间</th>
				<th field="th98" width="60" align="center">是否审核</th>
				<th field="th07" width="60" align="center">经营名</th>
				<th field="th08" width="60" align="center">经营者</th>
				<th field="th22" width="60" align="center">经营起始时间</th>
				<th field="th23" width="60" align="center">经营结束时间</th>
				<th field="th09" width="60" align="center">税款备注</th>
				<th field="th11" width="60" align="center">营业税</th>
				<th field="th12" width="60" align="center">个人所得税</th>
				<th field="th13" width="60" align="center">城建税</th>
				<th field="th14" width="60" align="center">教育附加税</th>
				<th field="th15" width="60" align="center">地方教育附加税</th>
				<th field="th16" width="60" align="center">印花税</th>
				<th field="th17" width="60" align="center">价格调节基金</th>
				<th field="th18" width="60" align="center">房产税</th>
				<th field="th19" width="60" align="center">土地使用税</th>
				<th field="th20" width="60" align="center">滞纳金</th>
				<th field="th21" width="60" align="center">罚款</th>
			</tr>
		</thead>
		<c:forEach var="var" items="${ list_pbt }" >
			<tr>
				<td >${ var.p_property_id }</td>
				<td >${ var.p_street }</td>
				<td >${ var.p_property_owner }</td>
				<td >${ var.p_property_owner_idcard }</td>
				<td >${ var.t_tax_year }</td>
				<td >${ var.t_total_tax }</td>
				<td>
					<c:if test="${var.t_first_half_year=='是'}">
						是
					</c:if>
					<c:if test="${var.t_first_half_year=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td>
					<c:if test="${var.t_second_half_year=='是'}">
						是
					</c:if>
					<c:if test="${var.t_second_half_year=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td >${ var.t_record_time }</td>
				<td>
					<c:if test="${var.t_checked=='是'}">
						是
					</c:if>
					<c:if test="${var.t_checked=='否'}">
						<font style="color:red">否</font>
					</c:if></td>
				<td >${ var.b_business_name }</td>
				<td >${ var.b_business_owner }</td>
				<td >${ var.b_business_start }</td>
				<td >${ var.b_business_end }</td>
				<td >${ var.t_comment }</td>
				
				<td >${ var.t_business_tax }</td>
				<td >${ var.t_individual_income_tax }</td>
				<td >${ var.t_urban_construction_tax }</td>
				<td >${ var.t_education_surcharge }</td>
				<td >${ var.t_local_education_surcharge }</td>
				<td >${ var.t_stamp_tax }</td>
				<td >${ var.t_price_regulation_fund }</td>
				<td >${ var.t_building_tax }</td>
				<td >${ var.t_land_use_tax }</td>
				<td >${ var.t_fine_for_delaying_payment }</td>
				<td >${ var.t_fine }</td>
			</tr>
			</c:forEach>
		</table>
	
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
				$('#dg').datagrid({loadFilter:pagerFilter}).datagrid('loadData', getData());
			});
		</script>
	</div>
</body>
</html>