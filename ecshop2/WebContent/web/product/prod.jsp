<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/index/favicon.ico"/>		
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
<body>
<!-- start main1 -->
<div class="main_bg1">
<div class="wrap">	
	<div class="main1">
		<h2>特色产品</h2>
	</div>
</div>
</div>
<!-- start main -->
<div class="main_bg">
<div class="wrap">	
	<div class="main">
		<!-- start grids_of_3 -->
		
			<c:forEach items="${pvolist}" var="pvo" varStatus="status">
			<div class="grid1_of_3" >
				<a href="${pageContext.request.contextPath}/ProductDetail.do?productID=${pvo.productID}">
					<img src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" alt="" width="50%" height="50%"/>
					<h3 style="font-size:18px">${pvo.profile}</h3>
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
</body>
</html>