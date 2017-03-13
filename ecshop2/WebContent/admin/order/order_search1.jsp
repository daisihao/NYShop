<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>demo</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/scripts/easyui/themes/icon.css">
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/scripts/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript">
function onSelect(d) {
	var issd = this.id == 'start', start = issd ? d :
	new Date($('#start').datebox('getValue')), end = issd ?
	new Date($('#end').datebox('getValue')) : d;
	if (end < start) {
	alert('结束日期小于开始日期');
	//只要选择了日期，不管是开始或者结束都对比一下，如果结束小于开始，则清空
    //结束日期的值并弹出日历选择框
	$('#end').datebox('setValue', '').datebox('showPanel');
	}
}
	
</script>
</head>
<body>
	<div class="easyui-panel" id="dinf">
	<h1>订单列表</h1>
	<form id="searchform">
		下单起始日期：<input type="text" class="easyui-datebox" id="start" name="start" required="required" data-options="onSelect:onSelect"/>
		下单截止日期：	<input type="text" class="easyui-datebox" id="end" name="end" required="required" data-options="onSelect:onSelect"/>
		<input type="button" value="搜索" id="search" />
	</form>
	
			<table align="center">
				<tr>
					<th>订单ID</th>
					<th>配送ID</th>
					<th>客户ID</th>
					<th>订单编号</th>
					<th>订单时间</th>
					<th>订单状态</th>
					<th>支付方式</th>
					<th>支付金额</th>
					<th>操作</th>
				</tr>
				</table >
				<table id="fgd" align="center">
				<c:forEach items="${pvo.rows}" var="ele">
					<tr>
						<td>${ele.orders_id}</td>
						<td >${ele.consignee_id}</td>
						<td>${ele.customer_id}</td>
						<td>${ele.orders_no}</td>
						<td>${ele.orders_time}</td>
						<td>${ele.status}</td>
						<td>${ele.paytype}</td>
						<td>${ele.orders_pay}</td>
						<td><a href="${pageContext.request.contextPath}/orders.do?method=deletesel&customer_id=${ele.orders_id}&current=1">删除</a>
						<a href="${pageContext.request.contextPath}/orders.do?method=deletesel&customer_id=${ele.orders_id}&current=1">查询</a></td>
					</tr>
				</c:forEach>
				</table>
				<table align="center">
				<tr>
					<td colspan="8" align="right"><c:if
							test="${pvo.currentPages == 1}"> 首页 </c:if> <c:if
							test="${pvo.currentPages > 1}">
							<a
								href="${pageContext.request.contextPath}/orders.do?method=select&customer_id=${svo.customer_id}&beginDate=${svo.beginDate}&endDate=${svo.endDate}&current=1">首页</a>
						</c:if> 
						<c:if test="${pvo.currentPages == 1}"> 上一页 </c:if> 
						<c:if test="${pvo.currentPages > 1}">
							<a
								href="${pageContext.request.contextPath}/orders.do?method=select&customer_id=${svo.customer_id}&beginDate=${svo.beginDate}&endDate=${svo.endDate}&current=${pvo.currentPages-1}">上一页</a>
						</c:if> 
						<c:if test="${pvo.totalPages == pvo.currentPages}"> 下一页 </c:if> 
						<c:if test="${pvo.currentPages < pvo.totalPages}">
							<a
								href="${pageContext.request.contextPath}/orders.do?method=select&customer_id=${svo.customer_id}&beginDate=${svo.beginDate}&endDate=${svo.endDate}&current=${pvo.currentPages+1}">下一页</a>
						</c:if> <c:if test="${pvo.currentPages == pvo.totalPages}">尾页</c:if> <c:if
							test="${pvo.currentPages < pvo.totalPages }">
							<a
								href="${pageContext.request.contextPath}/orders.do?method=select&customer_id=${svo.customer_id}&beginDate=${svo.beginDate}&endDate=${svo.endDate}&current=${pvo.totalPages}">尾页</a>&nbsp;
					</c:if> &nbsp;&nbsp;&nbsp;&nbsp;当前第${pvo.currentPages}页 &nbsp;&nbsp;
						总共${pvo.totalPages}页</td>
				</tr>
				</table>
		
	</div>
</body>
</html>