	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书系统——购物车</title>

<%-- <link
	href="${pageContext.request.contextPath}/styles/product/shop_cart.css"
	rel="stylesheet" type="text/css" /> --%>
<link href="<%=request.getContextPath()%>/styles/user/order_style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/product/shop_cart.js">
	
</script>

</head>

<body>
	<jsp:include page="../../include/header.jsp"></jsp:include>
	<div id="content">
		<h6>
			<span>温馨提示</span>
		</h6>
		<table class="table1" border="0" align="center">
			<tr>
				<td align="center">亲爱的顾客，欢迎光临本站！</td>
				<tr>
						<td align="center">
							由于您尚未登录，无法进行部分操作。
						</td>
					</tr>
					<tr>
						<td align="center">
							 您可以点击此处<a href="<%=request.getContextPath()%>/web/user/login.jsp"><strong style="color: red">登录</strong></a>，或者继续浏览本站内容。
						</td>
					</tr>
					</tr>
					
					<tr>
						<td align="center"><p>
							如果您没有账号，可以点击此处<a href="<%=request.getContextPath()%>/web/user/register.jsp"><strong style="color: red">注册</strong></a>。</p></td>
					</tr>
				</table>
		
	
			</div>
	<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>



