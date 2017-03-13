<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<link href="<%=request.getContextPath()%>/styles/user/order_style.css"
	rel="stylesheet" type="text/css" />
<%-- <%
request.setAttribute("customer_id", "10003");
request.setAttribute("consignee_id", "4");
%> --%>
</head>
<body>
	<div id="container">
		<!--上面头部分-->
		<div id="header">
			<%@include file="../../include/header.jsp"%>
		</div>
		<!--中间内容部分-->
		<div id="content">
			<div class="flowBox">
				<form method="post" action="<%=request.getContextPath()%>/orders.do?method=create">
					<h6>
						<span>商品列表</span>
					</h6>
					<table>
						<tr>
							<th>商品名称</th>
							<th>颜色</th>
							
							<th>本店价</th>
							<th>购买数量</th>
							<th>小计</th>
						</tr>
						<%-- <c:forEach items="${pvolist}" var="p" varStatus="status" begin="0">
						<c:forEach items="${countlist}" var="count" begin="${status.index}" end="${status.index}"> --%>
						<c:forEach items="${pro_count}" var="p" varStatus="status" begin="0" >
						<tr class="tr${status.index%2+1}">
							
							<td align="center">${p.key.name}</td>
							<td align="center">${p.key.color }<br/></td>
							
							<td align="center">￥${p.key.price}元</td>
							<td align="center">${p.value}</td>
							<td align="center">￥${p.key.price*p.value}元</td>
							<td><input type="hidden" name="product_count${status.index}" value="${p.value}"></td>
							<td><input type="hidden" name="product_id${status.index }" value="${p.key.productID }"></td>
						</tr>
						
						</c:forEach>
						<%-- </c:forEach>
						</c:forEach> --%>
						<!-- <tr class="tr1">
							
							<td align="center">iPhone 6</td>
							<td align="center">颜色:金色 <br/></td>
							
							<td align="center">￥4580.00元</td>
							<td align="center">1</td>
							<td align="center">￥4580.00元</td>
							<td><input type="hidden" name="product_count" value="1"></td>
							<td><input type="hidden" name="product_id" value="3"></td>
						</tr> -->
						<tr class="tr1">
							<td align="center" colspan="7">购物金额小计 :<strong style="color: red">￥${totalPrice}元</td>
						</tr>
					</table>
					<h6>
						<span>收货人信息</span>
					</h6>
					
					<table>
						<c:forEach items="${volist}" var="vo" varStatus="status" begin="0">
						
						<tr>
							<td width="8%" align="center"><input type="radio" name="consignee_id"
								value="${vo.consignee_id}" checked isCod="1" /></td>
							<td width="16%">&nbsp;&nbsp;收货人姓名:</td>
							<td width="24%">${vo.name}</td>
							<td width="16%">详细地址:</td>
							<td >${vo.address}<input type="hidden" name="address" value="${vo.address}"></td>
						</tr>
						<tr class="tr1">
							<td width="8%" align="center"></td>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${vo.mobilenum}</td>
							<td>电子邮件地址:</td>
							<td>${vo.email}</td>
							
						</tr>
						<tr>
							<td width="8%" align="center"></td>
							<td>&nbsp;&nbsp;邮政编码:</td>
							<td>${vo.zipcode}</td>
							<td>电话:</td>
							<td>${vo.phonenum}</td>
						</tr>
						<tr class="tr1">
							<td width="8%" align="center"></td>
							<td>&nbsp;&nbsp;标志建筑:</td>
							<td>${vo.signbuilding}</td>
							<td>最佳送货时间:</td>
							<td>${vo.besttime}</td>
						</tr>
						
						</c:forEach>
						<%-- <tr>
							<td width="4%"><input type="radio" name="consignee"
								value="1" checked isCod="1" /></td>
							<td>&nbsp;&nbsp;收货人姓名:</td>
							<td>${detailVO.name}</td>
							<td>电子邮件地址:</td>
							<td>${detailVO.email}</td>
						</tr>
						<tr class="tr1">
							<td width="4%"></td>
							<td>&nbsp;&nbsp;邮政编码:</td>
							<td>${detailVO.zipcode}</td>
							<td>详细地址:</td>
							<td>${detailVO.address}<input type="hidden" name="address" value="${detailVO.address}"></td>
							
						</tr>
						<tr>
							<td width="4%"></td>
							<td>&nbsp;&nbsp;手机:</td>
							<td>${detailVO.mobilenum}</td>
							<td>电话:</td>
							<td>${detailVO.phonenum}</td>
						</tr>
						<tr class="tr1">
							<td width="4%"></td>
							<td>&nbsp;&nbsp;标志建筑:</td>
							<td>${detailVO.signbuilding}</td>
							<td>最佳送货时间:</td>
							<td>${detailVO.besttime}</td>
						</tr> --%>
					</table>
					
					<h6>
						<span>支付方式</span>
					</h6>
					<table>
						<tr>
							<th width="9%" align="center"></th>
							<th width="20%">名称</th>
							<th>订购描述</th>
							<th width="15%">手续费</th>
						</tr>

						<tr class="tr1">
							<td align="center" valign="top"><input type="radio" name="payment"
								value="货到付款" checked isCod="1" onclick="selectPayment(this)"/></td>
							<td valign="top"><strong>货到付款</strong></td>
							<td valign="top">货到付款区域：中国大陆</td>
							<td align="right" valign="top"><span id="ECS_CODFEE">￥0.00元</span></td>
						</tr>

						<tr>
							<td align="center" valign="top"><input type="radio" name="payment"
								value="支付宝" checked isCod="0" onclick="selectPayment(this)" /></td>
							<td valign="top"><strong>支付宝</strong></td>
							<td valign="top">支付宝网站(www.alipay.com) 是国内先进的网上支付平台。 <a
								href="https://memberprod.alipay.com/account/reg/index.htm"
								target="_blank"><font color="red">立即在线申请</font></a></td>
							<td align="right" valign="top">￥0.00元</td>
						</tr>



					</table>
					
					<h6>
						<span>费用总计</span>
					</h6>
					<table>
						<%-- <tr>
							<td align="center">该订单完成后，您将获得 ${totalPrice}积分 ，以及价值 ￥0.00元的红包。</td>
						</tr> --%>
						<tr class="tr1">
							<td align="center">商品总价:<strong style="color: red"> ￥${totalPrice}元</strong> + 配送费用:<strong style="color: red"> ￥0.0元</strong></td>
						</tr>
						<tr>
							<td align="center" >应付款金额:<strong style="color: red">￥${totalPrice}元</strong>
							<input type="hidden" name="pay" value="${totalPrice}" >
							</td>
						</tr>
						<tr class="tr1">
							<td align="center"><input type="submit" id="submit_1" class="submit" value="提交订单"></td>
						</tr> 
					</table>
						
						<!-- <input type="submit" class="submit" value="提交订单" /> -->
		
				</form>
			</div>
		</div>
		<!--下面尾部分-->
		<div id="footer">
			<%@include file="../../include/footer.jsp"%>
		</div>
	</div>
</body>
</html>
