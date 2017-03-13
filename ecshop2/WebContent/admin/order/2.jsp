<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
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
<body>
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
						<tr>
							<th>商品名称</th>
							<th>颜色</th>

							<th>本店价</th>
							<th>购买数量</th>
							<th>小计</th>
						</tr>
						<c:forEach items="${pvolist}" var="p" varStatus="status" begin="0">
							<c:forEach items="${countlist}" var="count"
								begin="${status.index}" end="${status.index}">
								<c:forEach items="${pricelist}" var="price"
									begin="${status.index}" end="${status.index}">
									<tr class="tr${status.index%2+1}">

										<td align="center">${p.name}</td>
										<td align="center" bgcolor="#D6D6D6">${p.color }<br /></td>

										<td align="center">￥${p.price}元</td>
										<td align="center">${count}</td>
										<td align="center">￥${price}元</td>
										<td><input type="hidden"
											name="product_count${status.index}" value="${count}"></td>
										<td><input type="hidden"
											name="product_id${status.index }" value="${p.productID }"></td>
									</tr>

								</c:forEach>
							</c:forEach>
						</c:forEach>
						<!-- <tr class="tr1">
							
							<td align="center">iPhone 6</td>
							<td align="center">颜色:金色 <br/></td>
							
							<td align="center">￥4580.00元</td>
							<td align="center">1</td>
							<td align="center">￥4580.00元</td>
							<td><input type="hidden" name="product_count" value="1"></td>
							<td><input type="hidden" name="product_id" value="3"></td>
						</tr> -->
						<tr>
							<td align="center" colspan="7">购物金额小计 :<strong
								style="color: red">￥${totalPrice}元</td>
						</tr>
					</table>
					<h6>
						<span>收货人信息<a
							href="">编辑</a></span>
					</h6>
					<table  bgcolor="#EEF6F9">
						<tr>
							<td>&nbsp;&nbsp;收货人姓名:</td>
							<td>${detailVO.name}</td>
							<td>电子邮件地址:</td>
							<td>${detailVO.email}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;邮政编码:</td>
							<td>${detailVO.zipcode}</td>
							<td>详细地址:</td>
							<td>${detailVO.address}<input type="hidden" name="address"
								value="${detailVO.address}"></td>

						</tr>
						<tr>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${detailVO.mobilenum}</td>
							<td>电话:</td>
							<td>${detailVO.phonenum}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;标志建筑:</td>
							<td>${detailVO.signbuilding}</td>
							<td>最佳送货时间:</td>
							<td>${detailVO.besttime}</td>
						</tr>
					</table>
					<h6>
						<span>购货人信息</span>
					</h6>
					<table  bgcolor="#EEF6F9">
						<tr>
							<td>&nbsp;&nbsp;购货人姓名:</td>
							<td>${detailVO.name}</td>
							<td>电子邮件地址:</td>
							<td>${detailVO.email}</td>
						</tr>
						<tr class="tr1">
							<td>&nbsp;&nbsp;邮政编码:</td>
							<td>${detailVO.zipcode}</td>
							<td>详细地址:</td>
							<td>${detailVO.address}<input type="hidden" name="address"
								value="${detailVO.address}"></td>

						</tr>
						<tr>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${detailVO.mobilenum}</td>
							<td>电话:</td>
							<td>${detailVO.phonenum}</td>
						</tr>
						</table>
					
					<h6>
						<span>费用总计</span>
					</h6>
					<table  bgcolor="#EEF6F9">
						<%-- <tr>
							<td align="center">该订单完成后，您将获得 ${totalPrice}积分 ，以及价值 ￥0.00元的红包。</td>
						</tr> --%>
						<tr class="tr1">
							<td align="center">商品总价:<strong style="color: red">
									￥${totalPrice}元</strong> + 配送费用:<strong style="color: red">
									￥0.0元</strong></td>
						</tr>
						<tr>
							<td align="center">应付款金额:<strong style="color: red">￥${totalPrice}元</strong>
								<input type="hidden" name="pay" value="${totalPrice}">
							</td>
						</tr>
					</table>
				</form>
			</div>
		</div>
		<!--下面尾部分-->
	</div>
</body>
</html>
