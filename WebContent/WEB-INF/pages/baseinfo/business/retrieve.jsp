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

<style type="text/css">
	
</style>

</head>
<body>
	！！！！！！！！！未做；
	1、条件查询2、详细3、删除4、每列名称5、确认哪些列
	<% //TODO business查询未做  %>
	<h2>经营信息查询</h2>
	<div style="padding:5px;margin:5px;border:1px solid #AFEEEE">
		<form id="sform" action="<%= url %>/business/retrieve" method="post">
	    	<table cellpadding="5">
	    		
	    		<tr>
	    			<td style="width:40px"></td>
	    			<td cospan="2"><input name="#" class="easyui-searchbox" data-options="prompt:'查询',searcher:doSearch" style="width:60px"></input></td>
	    		</tr>
	    		
	    	</table>
	    </form>
	    <script>
			function doSearch(value){
			    $('#sform').submit();
			}
		</script>
    </div>
    
    <div style="margin:20px 0;"></div>
	
	<div style="margin:5px;">
		<table id="dg" style="width:100%;height:315px" data-options="
					rownumbers:true,
					singleSelect:true,
					autoRowHeight:false,
					pagination:true,
					pageSize:20">
			<thead>
				<tr>
					<th field="th01" width="60" align="center">缴纳税款</th>
					<th field="th02" width="80">房产ID</th>
					<th field="th03" width="100">省系统编号</th>
					<th field="th04" width="80">路段</th>
					<th field="th05" width="80">房产编号</th>
					<th field="th06" width="80">产权人</th>
					<th field="th07" width="80">产权人身份证</th>
					<th field="th08" width="80">产权证号</th>
					<th field="th09" width="80">房产原值</th>
					<th field="th10" width="80">房产面积</th>
					<th field="th11" width="80">房产类型</th>
					<th field="th12" width="80">房产使用性质</th>
					<th field="th13" width="80">地址</th>
					<th field="th14" width="80">电话1</th>
					<th field="th15" width="80">电话2</th>
					<th field="th16" width="80">备注</th>
					<th field="th17" width="80">录入时间</th>
					<th field="th18" width="80">录入人员</th>
					<th field="th19" width="80">所属分局</th>
					<th field="th20" width="80">是否审核通过</th>
					<th field="th21" width="80">审核人</th>
					<th field="th22" width="80">删除</th>
				</tr>
			</thead>
			<c:forEach var="var" items="${ busi_list }" >
			<tr>
					<td >
						<a href="<%= url %>/business/detail/${ var.business_id }" style="color:blue">详细</a>
					</td>
					<td >${ var.business_id }</td>
					<td >${ var.property_id }</td>
					<td >${ var.business_owner }</td>
					<td >${ var.business_owner_idcard }</td>
					<td >${ var.business_name }</td>
					<td >${ var.business_scope }</td>
					<td >${ var.rent }</td>
					<td >${ var.transfer_fee }</td>
					<td >${ var.business_start }</td>
					<td >${ var.business_end }</td>
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
						<a href="<%= url %>/business/delete/${ var.business_id }" style="color:blue">删除</a>
					</td>
				</tr>
				</c:forEach>
		</table>
	</div>
	
	
	<script>
	<% //未做翻页和json %>
	<% /*
	function getData(){
		var rows = [];
		for(var i=1; i<=800; i++){
			var amount = Math.floor(Math.random()*1000);
			var price = Math.floor(Math.random()*1000);
			rows.push({
				inv: 'Inv No '+i,
				date: $.fn.datebox.defaults.formatter(new Date()),
				name: 'Name '+i,
				amount: amount,
				price: price,
				cost: amount*price,
				note: 'Note '+i
			});
		}
		return rows;
	} */ %>
		
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

</body>
</html>