<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/styles/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script>
<!-- start slider -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.ico"/>		
	<link href="<%=request.getContextPath()%>/styles/slider.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/modernizr.custom.28468.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.cslider.js"></script>
	<script type="text/javascript">
		$(function() {
			$('#da-slider').cslider();
		});
	</script>
		<!-- Owl Carousel Assets -->
		<link href="<%=request.getContextPath()%>/styles/owl.carousel.css" rel="stylesheet">
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src="<%=request.getContextPath()%>/scripts/owl.carousel.js"></script>
		        <script>
		    $(document).ready(function() {
		
		      $("#owl-demo").owlCarousel({
		        items : 4,
		        lazyLoad : true,
		        autoPlay : true,
		        navigation : true,
			    navigationText : ["",""],
			    rewindNav : false,
			    scrollPerPage : false,
			    pagination : false,
    			paginationNumbers: false,
		      });
		
		    });
		    </script>
		   <!-- //Owl Carousel Assets -->
		<!-- start top_js_button -->
		<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/move-top.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/easing.js"></script>
		   <script type="text/javascript">
				jQuery(document).ready(function($) {
					$(".scroll").click(function(event){		
						event.preventDefault();
						$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
					});
				});
			</script>
</head>
<body style="clear:both">
<%-- <div class="footer_bg" style="clear:both">
<div class="wrap">	
	<div class="footer">
		<!-- start grids_of_4 -->	
		<div class="grids_of_4">
			<div class="grid1_of_4">
				<h4>明星产品</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=3">你若安好，便是晴天</a></li>
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=1">民国最美的女神</a></li>
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