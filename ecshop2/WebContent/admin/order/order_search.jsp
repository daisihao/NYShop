<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理中心 - 商品列表</title>
<meta name="robots" content="noindex, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/styles/admin/general.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/styles/admin/main.css"
	rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/scripts/easyui/themes/icon.css">
	
<script type="text/javascript"
	src="<%=request.getContextPath()%>/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/scripts/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/scripts/admin/transport.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/common.js"></script>
<script language="JavaScript">
<!--
	// 这里把JS用到的所有语言都赋值到这里
	var process_request = "正在处理您的请求...";
	var todolist_caption = "记事本";
	var todolist_autosave = "自动保存";
	var todolist_save = "保存";
	var todolist_clear = "清除";
	var todolist_confirm_save = "是否将更改保存到记事本？";
	var todolist_confirm_clear = "是否清空内容？";
	var goods_name_not_null = "商品名称不能为空。";
	var goods_cat_not_null = "商品分类必须选择。";
	var category_cat_not_null = "分类名称不能为空";
	var brand_cat_not_null = "品牌名称不能为空";
	var goods_cat_not_leaf = "您选择的商品分类不是底级分类，请选择底级分类。";
	var shop_price_not_null = "本店售价不能为空。";
	var shop_price_not_number = "本店售价不是数值。";
	var select_please = "请选择...";
	var button_add = "添加";
	var button_del = "删除";
	var spec_value_not_null = "规格不能为空";
	var spec_price_not_number = "加价不是数字";
	var market_price_not_number = "市场价格不是数字";
	var goods_number_not_int = "商品库存不是整数";
	var warn_number_not_int = "库存警告不是整数";
	var promote_not_lt = "促销开始日期不能大于结束日期";
	var promote_start_not_null = "促销开始时间不能为空";
	var promote_end_not_null = "促销结束时间不能为空";
	var drop_img_confirm = "您确实要删除该图片吗？";
	var batch_no_on_sale = "您确实要将选定的商品下架吗？";
	var batch_trash_confirm = "您确实要把选中的商品放入回收站吗？";
	var go_category_page = "本页数据将丢失，确认要去商品分类页添加分类吗？";
	var go_brand_page = "本页数据将丢失，确认要去商品品牌页添加品牌吗？";
	var volume_num_not_null = "请输入优惠数量";
	var volume_num_not_number = "优惠数量不是数字";
	var volume_price_not_null = "请输入优惠价格";
	var volume_price_not_number = "优惠价格不是数字";
	var cancel_color = "无样式";
//-->
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
<body marginwidth="90%">

	<div class="easyui-panel" id="dinf">
	<h1>订单列表</h1>
	
			<table width="1020" align="center" cellpadding="3" cellspacing="1">
				<tr>
					<th width="82">订单ID</th>
					<th width="104">配送ID</th>
					<th width="105">客户ID</th>
					<th width="191">订单编号</th>
					<th width="111">订单时间</th>
					<th width="75">订单状态</th>
					<th width="77">支付方式</th>
					<th width="128">支付金额</th>
					<th width="81">操作</th>
				</tr>
				
				<c:forEach items="${pvo.rows}" var="ele">
					<tr>
						<td width="102">${ele.orders_id}</td>
						<td width="122" >${ele.consignee_id}</td>
						<td width="118">${ele.customer_id}</td>
						<td width="106">${ele.orders_no}</td>
						<td width="116">${ele.orders_time}</td>
						<td width="78">${ele.status}</td>
						<td width="123">${ele.paytype}</td>
						<td width="133">${ele.orders_pay}</td>
						<td width="89"><a href="${pageContext.request.contextPath}/orders.do?method=deletesel&customer_id=${ele.orders_id}&current=1">删除</a>
						<a target="new" href="${pageContext.request.contextPath}/orders.do?method=showDetail&customer_id=${ele.customer_id}&consignee_id=${ele.consignee_id}&orders_num=${ele.orders_no}">查询</a></td>
					</tr>
				</c:forEach>
	  </table>
				<table width="972" align="center">
				<tr>
					<td width="1020" colspan="8" align="right"><c:if
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
	<div id="footer">
		共执行 18 个查询，用时 0.030298 秒，Gzip 已禁用，内存占用 3.150 MB<br /> 版权所有 &copy;
		2014-2015 蓝桥5班南鱼队，并保留所有权利。
	</div>
</body>
</html>