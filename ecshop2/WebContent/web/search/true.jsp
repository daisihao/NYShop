<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!--搜索正确的页面-->
<title>南鱼商城</title>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.ico"/>
</head>
<body>
<jsp:include page="../../include/header.jsp"/>
<div class="main_bg">
<div class="wrap">	
	<div class="main">
		<!-- start grids_of_3 -->
		
			<c:forEach items="${showlist}" var="pvo" varStatus="status">
			<div class="grid1_of_3" style="height:440px;">
				<a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}">
					<img src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" alt="" width="60%" height="60%" style="margin-left:55px;"/>
					<h3 style="font-size:18px;height:80px;">${pvo.profile}</h3>
					<div class="price">
						<h4>￥${pvo.price}<span>详情</span></h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
		    </c:forEach>
		<!-- end grids_of_3 -->
	</div>
</div>
</div>
<div style="float:right;margin-bottom:50px;margin-top:20px;background:#4CCFC1;width:100%">
	
	<span style="float:right;margin-right:200px;">
		共查询到${fn:length(showlist)}件产品
	</span>
</div>
<%-- <div class="footer_bg" style="clear:both;margin-top:30px;">
<div class="wrap">	
	<div class="footer">
		<!-- start grids_of_4 -->	
		<div class="grids_of_4">
			<div class="grid1_of_4">
				<h4>明星产品</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=3">你若安好,便是晴天</a></li>
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=1">民国最美女神</a></li>
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=21">我与世界只差一个你</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>帮助支持</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/web/link/re.jsp">联系我们</a></li>
					<li><a href="${pageContext.request.contextPath}/web/link/DistributionService.jsp">退款说明</a></li>
					<li><a href="${pageContext.request.contextPath}/web/link/re.jsp">配送服务</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>关于我们</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/web/link/rel.jsp">项目介绍</a></li>
					<li><a href="${pageContext.request.contextPath}/web/link/MessageCenter.jsp">消息中心</a></li>
					<li><a href="${pageContext.request.contextPath}/web/link/MemberDescription.jsp">会员说明</a></li>
					
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>友情链接</h4>
				<ul class="f_nav">
					<li><a href="https://www.tmall.com/">天猫商城</a></li>
					<li><a href="http://www.jd.com/">京东商城</a></li>
					<li><a href="http://www.gome.com.cn/">国美在线</a></li>
				</ul>
			</div>
			<div class="clear"></div>
		</div>
	</div>
</div>
</div>	 --%>
<!-- start footer -->
<div class="footer_bg1">
<div class="wrap">
	<div class="footer">
		<!-- scroll_top_btn -->
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
		<div class="copy">
			<p class="link"><a href="<%=request.getContextPath()%>/admin/login.jsp">Copyright</a> &copy; 2015-2016 游佳慧毕业设计，并保留所有权利。</p>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
</body>
</html>