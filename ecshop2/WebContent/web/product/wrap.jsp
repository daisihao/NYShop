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
<div class="wrap">
<!----start-img-cursual---->
	<div id="owl-demo" class="owl-carousel">
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c1.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html" style="font-size:18px;">佳明 白色智能运动手表 </a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c2.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html" style="font-size:18px;">Wtitech D8 智能手表 蓝牙手表
</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c3.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html" style="font-size:18px;">联想乐檬 K3 Note 4G手机</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c4.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html" style="font-size:18px;">炫光usb 游戏有线键鼠套装</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c1.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html"style="font-size:18px;">佳明 白色智能运动手表</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c2.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html"style="font-size:18px;">Wtitech D8 智能手表 蓝牙手表</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
		<div class="item" onClick="location.href='details.html';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="<%=request.getContextPath()%>/images/index/c4.png" alt="Lazy Owl Image">
			</div>
			<div class="cau_left">
				<h4><a href="details.html"style="font-size:18px;">炫光usb 游戏有线键鼠套装</a></h4>
				<a href="details.html" class="btn">shop</a>
			</div>
		</div>	
	</div>
	<!----//End-img-cursual---->
</div>
</body>
</html>