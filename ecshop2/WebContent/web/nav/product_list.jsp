<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>商品列表</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<jsp:include page="../../include/header.jsp"></jsp:include>
<link href="<%=request.getContextPath()%>/styles/style.css" rel="stylesheet" type="text/css" media="all" />
<script src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script> 
	<!-- start gallery_sale -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/nav/jquery.easing.min.js"></script>	
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/nav/jquery.mixitup.min.js"></script>
	<script type="text/javascript">
	$(function () {
		
		var filterList = {
		
			init: function () {
			
				// MixItUp plugin
				// http://mixitup.io
				$('#portfoliolist').mixitup({
					targetSelector: '.portfolio',
					filterSelector: '.filter',
					effects: ['fade'],
					easing: 'snap',
					// call the hover effect
					onMixEnd: filterList.hoverEffect()
				});				
			
			},
			
			hoverEffect: function () {
			
				// Simple parallax effect
				$('#portfoliolist .portfolio').hover(
					function () {
						$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
						$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
					},
					function () {
						$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
						$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
					}		
				);				
			
			}

		};
		
		// Run the show!
		filterList.init();
		
		
	});	
	</script>
<!-- start top_js_button -->
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/nav/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/nav/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>
<!-- start main -->
<div class="main_bg">
<div class="wrap">	
	<div class="main">
	<!-- start gallery_sale  -->
		<div class="gallery1">
			<div class="container">
				<ul id="filters" class="clearfix">
					<li><span class="filter active" data-filter="app card logo web">所有商品</span></li>
					<li><span class="filter" data-filter="app">热门图书</span></li>
					<li><span class="filter" data-filter="web">学习资料</span></li>
					<li><span class="filter" data-filter="card">课外图书</span></li>
				</ul>
			<div id="portfoliolist">
				
			<c:forEach items="${pvolist}" var="pvo">
				<div class="portfolio ${pvo.catalogID}" data-cat="${pvo.catalogID}" style="height:320px;">
					<div class="portfolio-wrapper">	
						<a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}">
							<img src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" width="80%" height="80%" alt="Image 2" style="margin-left:7%;"/>
						</a>
						<div class="label" style="margin-left:10%;">
							<div class="label-text">
								<a class="text-title">${pvo.title}</a>
								<span class="text-category">￥${pvo.price}</span>
							</div>
							<div class="label-bg"></div>
						</div>
					</div>
				</div>	
			</c:forEach>	
		</div>
	</div><!-- container -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/nav/fliplightbox.min.js"></script>
	<script type="text/javascript">$('body').flipLightBox()</script>
	<div class="clear"> </div>
	</div>
<!---End-gallery----->
	</div>
</div>
</div>
<%-- <div class="footer_bg" style="clear:both">
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