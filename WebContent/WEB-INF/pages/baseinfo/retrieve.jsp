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
	<h2>基础信息查询</h2>
	<div style="padding:5px;margin:5px;border:1px solid #AFEEEE">
		<form id="sform" action="<%= url %>/baseinfo/retrieve" method="post">
	    	<table cellpadding="5">
	    		<tr>
	    			<td>管理编码：</td>
	    			<td><input name="mid" class="easyui-textbox" type="text" ></input></td>
	    			<td style="width:40px"></td>
	    			<td>省系统编码：</td>
	    			<td><input name="systemcode" class="easyui-textbox" type="text" ></input></td>
	    			<td style="width:40px"></td>
	    			<td>路段：</td>
	    			<td><input name="street" class="easyui-textbox" type="text" ></input></td>
	    			<td style="width:40px"></td>
	    			<td>门面编号：</td>
	    			<td><input name="storecode" class="easyui-textbox" type="text" ></input></td>
	    		</tr>
	    		<tr>
	    			<td>产权人姓名：</td>
	    			<td><input name="propertyowner" class="easyui-textbox" type="text" ></input></td>
	    			<td style="width:40px"></td>
	    			<td>所属年度：</td>
	    			<td><input name="taxperiod" class="easyui-textbox" type="text" ></input></td>
	    			<td style="width:40px"></td>
	    			<td>是否审核通过：</td>
	    			<% //TODO %>
	    			<td><input name="#" class="easyui-textbox" type="text" ></input></td>
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
					<th field="writeTaxInfo" width="60" align="center">缴纳税款</th>
					<th field="id" width="80">管理编码</th>
					<th field="systemcode" width="100">系统编码</th>
					<th field="street" width="80">路段</th>
					<th field="storecode" width="80">门面编号</th>
					<th field="propertyowner" width="80">产权人姓名</th>
					<th field="propertyowner_idcard" width="80">产权人身份证</th>
					<th field="property_id" width="80">房屋产权证号</th>
					<th field="originalvalue" width="80">房屋原值</th>
					<th field="housearea" width="80">建筑面积</th>
					<th field="storecategory" width="80">门面类型</th>
					<th field="storename" width="80">目前经营店名</th>
					<th field="business_scope" width="80">经营范围</th>
					<th field="business_name" width="80">经营者姓名</th>
					<th field="house_property" width="80">房屋性质</th>
					<th field="rent" width="80">租金</th>
					<th field="av_rent" width="80">平均租金</th>
					<th field="regist_corporation" width="80">营业执照或税务登记法人</th>
					<th field="phone1" width="80">电话1</th>
					<th field="phone2" width="80">电话2</th>
					<th field="taxperiod" width="80">税款缴纳所属期限</th>
					<th field="recordtime" width="80">录入时间</th>
					<th field="recordperson" width="80">录入人员</th>
					<th field="belong" width="80">所属分局</th>
					<th field="comment" width="80">备注</th>
					<th field="total" width="80">户数合计</th>
					<th field="basechecked" width="80">基础审核</th>
					<th field="taxchecked" width="80">税款审核</th>
					<th field="update_delete" width="80" align="center">修改，删除</th>
				</tr>
			</thead>
			<c:forEach var="var" items="${ baselist }" >
			<tr>
					<td >
						<a href="<%= url %>/taxinfo/write/${ var.id}" style="color:blue">缴纳</a>
					</td>
					<td >${ var.id }</td>
					<td >${ var.systemcode }</td>
					<td >${ var.street }</td>
					<td >${ var.storecode }</td>
					<td >${ var.propertyowner }</td>
					<td >${ var.propertyowner_idcard }</td>
					<td >${ var.property_id }</td>
					<td >${ var.originalvalue }</td>
					<td >${ var.housearea }</td>
					<td >${ var.storecategory }</td>
					<td >${ var.storename }</td>
					<td >${ var.business_scope }</td>
					<td >${ var.business_name }</td>
					<td >${ var.house_property }</td>
					<td >${ var.rent }</td>
					<td >${ var.av_rent }</td>
					<td >${ var.regist_corporation }</td>
					<td >${ var.phone1 }</td>
					<td >${ var.phone2 }</td>
					<td >${ var.taxperiod }</td>
					<td >${ var.recordtime }</td>
					<td >${ var.recordperson }</td>
					<td >${ var.belong }</td>
					<td >${ var.comment }</td>
					<td >${ var.total }</td>
					<td >${ var.basechecked }</td>
					<td >${ var.taxchecked }</td>
					<td >
						<a href="<%= url %>/baseinfo/${var.id}/delete" style="color:blue">删除</a>
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