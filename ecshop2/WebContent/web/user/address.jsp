<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<style type="text/css">
/* .shdz {
	color: #56A5EE;
}

.shdz001 {
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
				<form id="form1" name="form1" method="post">
					<div style="background-color: #FAFAD2; height: 25px;padding-left: 400px">收货人信息
					</div>
					<div style="margin-top: 10px;margin-left: 80px">
						<table width="100%" border="0" align="center">
						
						
							<c:forEach items="${cvolist}" var="convo">
							<tr>
								<td width="150"><div class="shdz001">收货人姓名：</div></td>
								<td width="198">${convo.name}</td>
								<td width="130"><div class="shdz001">电子邮件地址：</div></td>
								<td width="228">${convo.email}</td>
							</tr>
							<tr>
								<td width="150"><div class="shdz001">详细地址：</div></td>
								<td width="198">${convo.address}</td>
								<td width="130"><div class="shdz001">邮政编码：</div></td>
								<td width="228">${convo.zipcode}</td>
							</tr>
							<tr>
								<td width="150"><div class="shdz001">电话：</div></td>
								<td width="198">${convo.phonenum}</td>
								<td width="130"><div class="shdz001">手机：</div></td>
								<td width="228">${convo.mobilenum}</td>
							</tr>
							<tr>
								<td width="150"><div class="shdz001">标志建筑：</div></td>
								<td width="198">${convo.signbuilding}</td>
								<td width="130"><div class="shdz001">最佳送货时间：</div></td>
								<td width="158">${convo.besttime}</td>
								<td width="70"><a href="<%=request.getContextPath()%>/UserServlet.do?method=010&customer_id=${custvo.customer_id}&consignee_id=${convo.consignee_id}">删除地址</a></td>
							</tr>
							<tr>
								<td> &nbsp;</td>
							</tr>

							</c:forEach>
							
							
							
							<c:if test="${size lt 3}">
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td><input type="button" value="添加收货地址"
										onClick="window.location.href='${pageContext.request.contextPath}/web/user/userconsignee.jsp'"></td>
								</tr>
							</c:if>

						</table>
					</div>
				</form>
			</div>
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

</body>
</html>