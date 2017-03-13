<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>黄师图书交易系统</title>
<link href="<%=request.getContextPath()%>/styles/user/order_style.css"
	rel="stylesheet" type="text/css" />
<%-- <%
request.setAttribute("customer_id", "10003");
request.setAttribute("consignee_id", "4");
%> --%>
</head>
<body marginwidth="90%">
	<div id="container">
		<!--中间内容部分-->
		<div id="content">
			<div class="flowBox">
				<form method="post"
					action="<%=request.getContextPath()%>/orders.do?method=create&consignee_id=${detailVO.consignee_id}">
					<h6>
						<span>订单列表 查询</span>
					</h6>
					<table bgcolor="#EEF6F9">
						<tr class="tr1">
							<th width="266">商品ID:</th>
							<th width="255">购买数量:</th>
						</tr>
						<c:forEach items="${detailList}" var="p" varStatus="status" begin="0">
									<tr class="tr${status.index%2+1}">
									<td align="center">${p.product_id}</td>
										<td align="center">${p.product_count}</td>
									</tr>

								</c:forEach>
					</table>
					<h6>
						<span>收货人信息</span>
					</h6>
					<table width="534"  bgcolor="#EEF6F9">
						<tr>
							<td width="91">&nbsp;&nbsp;收货人姓名:</td>
							<td width="152">${concvo.name}</td>
							<td width="100">电子邮件地址:</td>
							<td width="171">${concvo.email}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;邮政编码:</td>
							<td>${concvo.zipcode}</td>
							<td>详细地址:</td>
							<td>${concvo.address}</td>

						</tr>
						<tr>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${concvo.mobilenum}</td>
							<td>电话:</td>
							<td>${concvo.phonenum}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;标志建筑:</td>
							<td>${concvo.signbuilding}</td>
							<td>最佳送货时间:</td>
							<td>${concvo.besttime}</td>
						</tr>
					</table>
					<input type="hidden" name="address2"
								value="${detailVO.address}">
					<h6>
						<span>购货人信息</span>
					</h6>
					<table width="532"  bgcolor="#EEF6F9">
						<tr>
							<td width="91">&nbsp;&nbsp;购货人账号:</td>
							<td width="147">${cusvo.account}</td>
							<td width="99">电子邮件地址:</td>
							<td width="175">${cusvo.email}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;QQ号:</td>
							<td>${cusvo.qq}</td>
							<td>性别:</td>
							<td>${cusvo.sex}</td>

						</tr>
						<tr>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${cusvo.mobile}</td>
							<td>电话:</td>
							<td>${cusvo.telphone}</td>
						</tr>
						</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
