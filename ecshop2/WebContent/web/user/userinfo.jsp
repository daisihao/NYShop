<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>图书系统个人中心</title>
<style type="text/css">
.grzl {
	text-align: right;
}

/* #menu01 {
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

	<script language="JavaScript">
		window.onload = function() {
			strYYYY = document.form1.YYYY.outerHTML;
			strMM = document.form1.MM.outerHTML;
			strDD = document.form1.DD.outerHTML;
			MonHead = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 ];

			//先给年下拉框赋内容  
			var y = new Date().getFullYear();
			var str = strYYYY.substring(0, strYYYY.length - 9);
			for (var i = (y - 30); i < (y + 30); i++) //以今年为准，前30年，后30年  
			{
				str += "<option value='" + i + "'> " + i + "</option>\r\n";
			}
			document.form1.YYYY.outerHTML = str + "</select>";

			//赋月份的下拉框  
			var str = strMM.substring(0, strMM.length - 9);
			for (var i = 1; i < 13; i++) {
				str += "<option value='" + i + "'> " + i + "</option>\r\n";
			}
			document.form1.MM.outerHTML = str + "</select>";

			document.form1.YYYY.value = y;
			document.form1.MM.value = new Date().getMonth() + 1;
			var n = MonHead[new Date().getMonth()];
			if (new Date().getMonth() == 1 && IsPinYear(YYYYvalue))
				n++;
			writeDay(n); //赋日期下拉框  
			document.form1.DD.value = new Date().getDate();
		}
		function YYYYMM(str) //年发生变化时日期发生变化(主要是判断闰平年)  
		{
			var MMvalue = document.form1.MM.options[document.form1.MM.selectedIndex].value;
			if (MMvalue == "") {
				DD.outerHTML = strDD;
				return;
			}
			var n = MonHead[MMvalue - 1];
			if (MMvalue == 2 && IsPinYear(str))
				n++;
			writeDay(n)
		}
		function MMDD(str) //月发生变化时日期联动  
		{
			var YYYYvalue = document.form1.YYYY.options[document.form1.YYYY.selectedIndex].value;
			if (str == "") {
				DD.outerHTML = strDD;
				return;
			}
			var n = MonHead[str - 1];
			if (str == 2 && IsPinYear(YYYYvalue))
				n++;
			writeDay(n)
		}
		function writeDay(n) //据条件写日期的下拉框  
		{
			var s = strDD.substring(0, strDD.length - 9);
			for (var i = 1; i < (n + 1); i++)
				s += "<option value='" + i + "'> " + i + "</option>\r\n";
			document.form1.DD.outerHTML = s + "</select>";
		}
		function IsPinYear(year)//判断是否闰平年  
		{
			return (0 == year % 4 && (year % 100 != 0 || year % 400 == 0))
		}
	//-->
	</script>

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
				<div style="background-color: #FAFAD2; height: 25px;padding-left: 400px">用户信息
				</div>
				<form id="form1" name="form1" method="post">
					<div style="margin-top: 10px">
					
					<div style=" height: 100px;width: 100px; margin-left: 360px">
					<c:choose>
					<c:when test="${cusvo.pic ne null}">
					<a href="<%=request.getContextPath()%>/web/user/addImage.jsp">
						<img src="/project/${cusvo.pic}"/></a>
					</c:when>
					<c:otherwise>
					<a href="<%=request.getContextPath()%>/web/user/addImage.jsp"><img
						src="<%=request.getContextPath()%>/upload/user/default.png"/></a>
					</c:otherwise>	
					</c:choose>	
					</div>
						
						
						<table width="100%" border="0" align="center">
							<tr>
								<td width="420px"><div class="grzl">真实姓名：</div></td>
								<td>${cusvo.realname}</td>
							</tr>
							<tr>
								<td width="420px"><div class="grzl">性别：</div></td>
								<c:choose>
									<c:when test="${cusvo.sex=='0'}">
										<td>女</td>
									</c:when>
									<c:when test="${cusvo.sex=='1'}">
										<td>男</td>
									</c:when>
									<c:when test="${cusvo.sex=='女'}">
										<td>女</td>
									</c:when>
									<c:when test="${cusvo.sex=='男'}">
										<td>男</td>
									</c:when>
								</c:choose>
							</tr>
							<tr>
								<td width="420px"><div class="grzl">电子邮件地址：</div></td>
								<td>${cusvo.email}</td>
							</tr>
							<tr>
								<td width="420px"><div class="grzl">QQ：</div></td>
								<td>${cusvo.qq}</td>
							</tr>
							<tr>
								<td width="420px"><div class="grzl">家庭电话：</div></td>
								<td>${cusvo.mobile}</td>
							</tr>
							<tr>
								<td width="420px"><div class="grzl">手机：</div></td>
								<td>${cusvo.telphone}</td>
							</tr>

						</table>
					</div>
					
						<tr>
							<div style="padding-left: 620px">
								<input type="button" value="修改个人信息"
									onClick="window.location.href='${pageContext.request.contextPath}/web/user/consummate.jsp'">
							</div>
						</tr>
					

				</form>
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