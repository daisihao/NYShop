<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>图书系统个人中心</title>
<style type="text/css">
/* .wddd {
	color: #56A5EE;
}

.wddd001 {
	text-align: center;
}

.wddd002 {
	color: #56A5EE;
	text-align: right;
}

#menu01 {
	text-align: center
}

a {
	text-decoration: none;
}

a:HOVER {
	text-decoration: underline;
} */

ul#navlist {
	margin: 0 0 0 0px;
	padding: 0;
	width: 100%;
}

#navlist li {
	list-style-type: none;
	background-color: #CD853F;
	color: #E0ECFF;
	border: .2em solid #E0ECFF;
	font-weight: 600;
	text-align: center;
	padding: .3em;
	margin-bottom: .1em;
}

#navlist li a {
	color: #FFFFFF;
	text-decoration: none;
	display: block;
}

#navlist li a:hover {
	background-color: #faebd7;
	color: #4CCFC1;
}
</style>
<link rel="stylesheet" type="text/css" href="../css/layout.css" />
<link rel="shortcut icon" href="../images/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
</head>
<body>
	<div id="container" style="width: 1349px">
		<div id="header">
			<jsp:include page="../../include/header.jsp"></jsp:include>

		</div>
		<div id="content">


			<div id="left" style="width: 19.3%; float: left;">
				<c:set var="customer_id" scope="session"
					value="${custvo.customer_id}" />
				<div id="menu01" style="margin-top: 2px">
				<ul id="navlist">
					<li>
						<a
							href="<%=request.getContextPath()%>/UserServlet.do?method=001&customer_id=${custvo.customer_id}">欢迎页</a>
					</li>
					<li>
						<a
							href="<%=request.getContextPath()%>/UserServlet.do?method=002&customer_id=${custvo.customer_id}">用户信息</a>
					</li>
					<li>
						<a
							href="<%=request.getContextPath()%>/UserServlet.do?method=003&customer_id=${custvo.customer_id}&current=1">我的订单</a>
					</li>
					<li>
						<a
							href="<%=request.getContextPath()%>/UserServlet.do?method=004&customer_id=${custvo.customer_id}">收货地址</a>
					</li>
					<%-- <li>
						<a href="<%=request.getContextPath()%>/web/user/collect.jsp">我的收藏</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/message.jsp">我的留言</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/tag.jsp">我的标签</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/lackRegister.jsp">缺货登记</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/redPacket.jsp">我的红包</a>
					</li> --%>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/recommend.jsp">我的推荐</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/comment.jsp">我的评价</a>
					</li>
					<li>
						<a
							href="<%=request.getContextPath()%>/UserServlet.do?method=008&customer_id=${custvo.customer_id}&current=1">包裹跟踪</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/found.jsp">资金管理</a>
					</li>
					<li>
						<a href="<%=request.getContextPath()%>/web/user/exit.jsp">退出</a>
					</li>
					</ul>
				</div>
			</div>






			<div id="mid" style="float: left; width: 62.7%">
				<form id="form1" name="form1" method="post"
					action="<%=request.getContextPath()%>/UserServlet.do?method=005&customer_id=${custvo.customer_id}&current=1">
					<div style="background-color: #FAFAD2; width: 100%; height: 25px;">
						订单起始日期： <input class="easyui-datebox" id="beginDate"
							name="beginDate" /> 订单截止日期： <input class="easyui-datebox"
							id="endDate" name="endDate" /> 订单状态：<select id="status"
							name="status">
							<option value="已支付">已支付</option>
							<option value="未支付">未支付</option>
						</select> <input type="submit" value="查询" />

					</div>
				</form>

				<div style="padding-top: 30px; padding-left: 50px;padding-right: 50px">
					<table width="100%" border="0" align="center">
						<tr>
							<td colspan="5"><div class="wddd"
									style="color: #56A5EE; background-color: #FAFAD2;">我的订单</div></td>
						</tr>
						<tr>
							<td width="199"><div class="wddd001">订单号</div></td>
							<td width="199"><div class="wddd001">下单时间</div></td>
							<td width="199"><div class="wddd001">支付方式</div></td>
							<td width="176"><div class="wddd001">订单状态</div></td>
							<td width="100"><div class="wddd001">操作</div></td>
						</tr>
						<c:forEach items="${ovolist.rows}" var="ol">
							<tr>
								<td><div class="wddd001">${ol.orders_no}</div></td>
								<td><div class="wddd001">${ol.orders_time}</div></td>
								<td><div class="wddd001">${ol.paytype}</div></td>
								<td><div class="wddd001">${ol.status}</div></td>
								<c:choose>
									<c:when test="${ol.status=='未支付'}">
										<td><div class="wddd001">
												
													<a href="<%=request.getContextPath()%>/UserServlet.do?method=007&orders_id=${ol.orders_id}&customer_id=${ol.customer_id}">取消订单</a>
											</div></td>
									</c:when>
									<c:otherwise>
										<td><div class="wddd001">
												<a href="<%=request.getContextPath()%>/UserServlet.do?method=008&orders_id=${ol.orders_id}&customer_id=${ol.customer_id}&current=1">查看物流</a>
											</div></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>


						<c:forEach items="${oovolist.rows}" var="oll">
							<tr>
								<td><div class="wddd001">${oll.orders_no}</div></td>
								<td><div class="wddd001">${oll.orders_time}</div></td>
								<td><div class="wddd001">${oll.paytype}</div></td>
								<td><div class="wddd001">${oll.status}</div></td>
								<c:choose>
									<c:when test="${oll.status=='未支付'}">
										<td><div class="wddd001">
												<a href="<%=request.getContextPath()%>/UserServlet.do?method=007&orders_id=${oll.orders_id}&customer_id=${oll.customer_id}">取消订单</a>
											</div></td>
									</c:when>
									<c:otherwise>
										<td><div class="wddd001">
												<a href="<%=request.getContextPath()%>/UserServlet.do?method=008&orders_id=${oll.orders_id}&customer_id=${oll.customer_id}&current=1">查看物流</a>
											</div></td>
									</c:otherwise>
								</c:choose>
							</tr>
						</c:forEach>
					</table>
				</div>


				<c:choose>

					<c:when test="${oovolist.rows ne null}">
						<div style="padding-left: 550px; margin-top: 20px">
							<a
								href="<%=request.getContextPath()%>/UserServlet.do?method=003&current=1&customer_id=${custvo.customer_id}">首页</a>
							&nbsp;
							<c:if test="${current gt 1 }">
								<a
									href="<%=request.getContextPath()%>/UserServlet.do?method=003&current=${current-1}&customer_id=${custvo.customer_id}">上一页</a>&nbsp;
	                    </c:if>
							<c:if test="${current lt oovolist.totalPages}">
								<a
									href="<%=request.getContextPath()%>/UserServlet.do?method=003&current=${current+1}&customer_id=${custvo.customer_id}">下一页</a>&nbsp;
	                    </c:if>
							<a
								href="<%=request.getContextPath()%>/UserServlet.do?method=003&current=${oovolist.totalPages}&customer_id=${custvo.customer_id}">未页</a>&nbsp;
							第${current}页 &nbsp; 共${oovolist.totalPages}页
						</div>
					</c:when>


					<c:when test="${ovolist.rows ne null}">
						<div style="padding-left: 500px;margin-top: 20px">
							<a
								href="<%=request.getContextPath()%>/UserServlet.do?method=005&current=1&customer_id=${custvo.customer_id}">首页</a>
							&nbsp;
							<c:if test="${current gt 1 }">
								<a
									href="<%=request.getContextPath()%>/UserServlet.do?method=005&current=${current-1}&customer_id=${custvo.customer_id}">上一页</a>&nbsp;
	                    </c:if>
							<c:if test="${current lt ovolist.totalPages}">
								<a
									href="<%=request.getContextPath()%>/UserServlet.do?method=005&current=${current+1}&customer_id=${custvo.customer_id}">下一页</a>&nbsp;
	                    </c:if>
							<a
								href="<%=request.getContextPath()%>/UserServlet.do?method=005&current=${ovolist.totalPages}&customer_id=${custvo.customer_id}">未页</a>&nbsp;
							第${current}页 &nbsp; 共${ovolist.totalPages}页
						</div>
					</c:when>
				</c:choose>


			</div>

			<div id="right" style="float: left; width: 18%">
				<div>
					<iframe name="weather_inc"
						src="http://i.tianqi.com/index.php?c=code&id=2&num=1" width="220"
						height="70" frameborder="0" marginwidth="0" marginheight="0"
						scrolling="no"> </iframe>
				</div>
				<div id="cc" class="easyui-calendar"
					style="width: 242px; height: 242px;"></div>
			</div>

		</div>

		<div id="footer">
			<jsp:include page="../../include/footer.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>
