<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<style type="text/css">
/* #welcome02 {
	
}

.welcome002 {
	text-align: center;
}

.welcome003 {
	text-align: right;
}

.welcome004 {
	
}

.welcome005 {
	text-align: center;
}

#menu01 {
	text-align: center
}

a {
	text-decoration: none;
}

a:HOVER {
	text-decoration: underline;
}
 */


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
		<div id="content" style="background-color: red; width: 100%">




			<div id="left" style="width: 19.3%; float: left;">
				<c:set var="customer_id" scope="session"
					value="${custvo.customer_id}" />
				<div id="menu01" style="margin-top: 3px">
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
				<c:set var="usershowname" scope="session" value="${custvo.realname}" />

				<div
					style="background-color: #FAFAD2; height: 20px; padding-left: 330px">

				    <a
						href="<%=request.getContextPath()%>/UserServlet.do?method=002&customer_id=${custvo.customer_id}"><c:out
							value="${custvo.account}" /></a>，欢迎来到用户中心
				</div>
				<div style="margin-top: 25px;margin-left: 200px">
					<table width="100%" border="0" align="center">
						<tr>
							<td colspan="2"><div class="welcome002">
									<span style="text-align: center; color: #02FF0F;">您的账户</span>
								</div></td>
							<td width="52%"><div class="welcome002">
									<span style="text-align: center; color: #02FF0F;">用户提醒</span>
								</div></td>
						</tr>
						<tr>
							<td width="23%"><div class="welcome003">
									<span style="text-align: right">积分:</span>
								</div></td>
							<td width="25%"><div class="welcome004">
									<a href="#">${usvo.score}</a>
								</div></td>
							<td rowspan="3"><div class="welcome005">
									您最近一个月提交了<a
										href="<%=request.getContextPath()%>/UserServlet.do?method=003&customer_id=${custvo.customer_id}&current=1">${usvo.totalOrder}</a>个订单
								</div></td>
						</tr>
					</table>
				</div>
			</div>





			<div id="right" style="float: left; width: 18%">
				<div>
					<iframe name="weather_inc"
						src="http://i.tianqi.com/index.php?c=code&id=2&num=1" width="220"
						height="70" frameborder="0" marginwidth="0" marginheight="0"
						scrolling="no"> </iframe>
				</div>
				<div style="margin-top: 25px"></div>
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
