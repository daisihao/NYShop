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
					<span>支付成功</span>
				</h6>


				<table class="table1" border="0" align="center">
					<tr>
						<td align="center">
							感谢您在本店购物！
						</td>
						<tr>
						<td align="center">
							您的订单已支付成功，最迟将在明天12点前发货。
						</td>
					</tr>
					<tr>
						<td align="center">
							请耐心等待快递配送（最迟7天），如有问题请咨询客服QQ:*******。
						</td>
					</tr>
					</tr>
					
					<tr>
						<td align="center"><p>
								您可以 <a href="${pageContext.request.contextPath}/index.jsp">返回首页</a> 或去 <a
									href="${pageContext.request.contextPath}/UserServlet.do?method=001&customer_id=${custvo.customer_id}">用户中心</a>。
							</p></td>
					</tr>
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
