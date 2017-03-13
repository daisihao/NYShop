<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>南鱼商城——购物车</title>
 
<link
	href="${pageContext.request.contextPath}/styles/product/shop_cart.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/product/shop_cart.js"></script>

</head>

<body>
	<jsp:include page="../../include/header.jsp"></jsp:include>
	<form action="${pageContext.request.contextPath}/web/user/Test.do"
		method="post">
		<div class="catbox">
			<div id="test">
			</div>
		
			<table id="cartTable">
				<thead>
					<tr>
						<th><label> <input class="check-all check"
								type="checkbox" />&nbsp;&nbsp;全选
						</label></th>
						<th>商品</th>
						<th>单价</th>
						<th>数量</th>
						<th>小计</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${pro_count}" var="e" varStatus="status" begin="0">
						<tr>
							<td class="checkbox"><input class="check-one check"
								type="checkbox" /></td>
							<td class="goods"><img
								src="${pageContext.request.contextPath}/${e.key.img}/a9.PNG" alt="" /><span>${e.key.name }</span></td>
							<td class="price">${e.key.price}</td>
							<td class="count"><span class="reduce" id="reduce${status.index}"></span> <input
								class="count-input" name="count${status.index}" type="text"
								value="${e.value }" /> <span class="add" id="add${status.index}">+</span></td>
							<td name="price${status.index}" class="subtotal">${e.key.price}</td>
							<td class="operation"><span id="delete${status.index}" class="delete">删除</span></td>

						</tr>
						<script type="text/javascript">
							$("#reduce${status.index}").click(function() {
	
								//alert("${e.key.productID}");
								$("#test").load("${pageContext.request.contextPath}/ShopCarServlet.do?method=reducecount&productID=${e.key.productID}");
								//location.href ="${pageContext.request.contextPath}/ShopCarServlet.do?method=delete&productID=${e.key.productID}"; 
	
							});	
							$("#add${status.index}").click(function() {
								
								//alert("${e.key.productID}");
								$("#test").load("${pageContext.request.contextPath}/ShopCarServlet.do?method=addcount&productID=${e.key.productID}");
								//location.href ="${pageContext.request.contextPath}/ShopCarServlet.do?method=delete&productID=${e.key.productID}"; 
	
							});	
						
							$("#delete${status.index}").click(function() {

								//alert("ss");
								$("#test").load("${pageContext.request.contextPath}/ShopCarServlet.do?method=delete&productID=${e.key.productID}");
								//location.href ="${pageContext.request.contextPath}/ShopCarServlet.do?method=delete&productID=${e.key.productID}"; 

							});
						</script>
					</c:forEach>

				</tbody>
			</table>
			<div class="foot" id="foot">
				<label class="fl select-all"><input type="checkbox"
					class="check-all check" />&nbsp;&nbsp;全选</label> <a class="fl delete"
					id="deleteAll" href="">&nbsp;</a><!-- javascript:; -->
				<!-- <script type="text/javascript">
					$("#deleteAll").click(function() {

						//alert("ss");
							
						location.href ="${pageContext.request.contextPath}/ShopCarServlet.do?method=deleteall"; 

					});
				</script> -->
				<div class="fr closing" id="submit" onclick="getTotal();">结 算</div>
				
				<input type="hidden" name="cartTotalPrice" id="cartTotalPrice" />
				<div class="fr total">
					合计：￥<span id="priceTotal">0.00</span>
				</div>
				<div class="fr selected" id="selected">
					已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span
						class="arrow down">︾</span>
				</div>
				<div class="selected-view">
					<div id="selectedViewList" class="clearfix">
						<div>
							<img src="images/1.jpg"><span>取消选择</span>
						</div>
					</div>
					<span class="arrow">◆<span>◆</span></span>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$('#submit').click(function() {
				
				$('form').submit();
			});
		</script>
		
		<!-- <input type="submit" value="结算"> -->
	</form>
	<jsp:include page="../../include/footer.jsp"></jsp:include>
	${message}
</body>
</html>
