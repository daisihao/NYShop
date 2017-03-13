<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<style type="text/css">
#menu01 {
	text-align: center
}

a {
	text-decoration: none;
}

a:HOVER {
	text-decoration: underline;
}
</style>
<link rel="stylesheet" type="text/css" href="../css/layout.css" />
<link rel="shortcut icon" href="../images/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
</head>
<body>

<%
   session.invalidate();
	request.getRequestDispatcher("../../index.jsp").forward(request, response);
%>
	<%-- <div id="container" style="width: 1349px">
		<div id="header">
			<jsp:include page="${pageContext.request.contextPath}/include/header.jsp"></jsp:include>

		</div>
		<div id="content">


			<div id="left" style="width: 19.3%; float: left;">
				<div id="menu01">
					<div>
						<a href="<%=request.getContextPath()%>/UserServlet.do?method=001">欢迎页</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/UserServlet.do?method=002">用户信息</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/UserServlet.do?method=003">我的订单</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/UserServlet.do?method=004">收货地址</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/collect.jsp">我的收藏</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/message.jsp">我的留言</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/tag.jsp">我的标签</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/lackRegister.jsp">缺货登记</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/redPacket.jsp">我的红包</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/recommend.jsp">我的推荐</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/comment.jsp">我的评价</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/package.jsp">包裹跟踪</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/found.jsp">资金管理</a>
					</div>
					<div>
						<a href="<%=request.getContextPath()%>/web/user/exit.jsp">退出</a>
					</div>
				</div>
			</div>





			<div id="mid" style="float: left; width: 62.7%">
				<div>》》》已退出用户</div>
				<div>
					<a href="<%=request.getContextPath()%>/index.jsp">去首页查看其他商品</a>
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
	</div> --%>
</body>
</html>