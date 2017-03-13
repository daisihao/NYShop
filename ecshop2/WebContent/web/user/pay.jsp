<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<link href="<%=request.getContextPath()%>/styles/user/order_style.css"
	rel="stylesheet" type="text/css" />
<body>
	<div id="container">
		<!--上面头部分-->
		<div id="header">
			<%@include file="../../include/header.jsp"%>
		</div>
		<!--中间内容部分-->
		<div id="content">
			<div class="flowBox">
				<h6>
					<span>订单提交成功</span>
				</h6>


				<table class="table1" border="0" align="center">
					<tr>
						<td align="center">
							感谢您在本店购物！
						</td>
					</tr>
					<tr>
						<td align="center">
							
								您的订单已提交成功，请记住您的订单号: <strong style="color: red">${ordersvo.orders_no}</strong>。
							
						</td>
					</tr>
					<tr>
						<td align="center">
							
								您的收货地址为: <strong style="color: red">${address}</strong>。
							
						</td>
					</tr>
					<tr>
						<td align="center">本店的配送方式为: <strong style="color: red">申通快递</strong>，您选定的支付方式为:
							<strong style="color: red">${ordersvo.paytype}</strong>。您的应付款金额为: <strong
							style="color: red">￥${ordersvo.orders_pay}元</strong></td>
					</tr>
					
					<c:if test="${ordersvo.paytype=='支付宝'}">
					<tr>
						<td align="center">
							<a href="<%=request.getContextPath()%>/orders.do?method=payover&orders_no=${ordersvo.orders_no}"/>
						<button class="submit" id="submit_1" value="">使用支付宝支付</button>
						</td>
					</tr>
					</c:if>
					
					<c:if test="${ordersvo.paytype=='货到付款'}">
					<tr>
						<td align="center">
							您的订单最迟将在明天12点前发货。
						</td>
					</tr>
					<tr>
						<td align="center">
							请耐心等待快递配送（最迟7天），如有问题请咨询客服QQ:*******。
							货到之后不要忘记支付哦！
						</td>
					</tr>
					<tr>
						<td align="center"><p>
								您可以 <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a> 或去 <a
									href="${pageContext.request.contextPath}/UserServlet.do?method=001&customer_id=${custvo.customer_id}">用户中心</a>。
							</p></td>
					</tr>
					</c:if>
					
				</table>

			</div>
		</div>
		<!--下面尾部分-->
		<div id="footer">
			<%@include file="../../include/footer.jsp"%>
		</div>
	</div>
</body>
</html>
