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
						$('html,body').animate({scrollTop:$(this.hash).offset().top},400);
					});
				});
			</script>
</head>
<body>
<div id="da-slider" class="da-slider">
				<div class="da-slide">
					<h2 style="font-size:36px;">三星 Galaxy S6 edge</h2>
					<p>三星 Galaxy S6 edge（G9250）32G版 移动联通电信4G手机<br/>特点：4.7英寸6.9mm超薄配备A8芯片搭载Android操作系统<br/>网络类型：移动/联通/电信4G,移动/联通/电信3G,移动/联通2G</p>
					<a href="details.html" class="da-link">立即 购买</a>
					<div class="da-img"><img src="<%=request.getContextPath()%>/images/index/s1.PNG" alt="image01" /></div>
				</div>
				
				<div class="da-slide">
					<h2 style="font-size:36px;">联想 乐檬 K3 Note</h2>
					<p>联想 乐檬 K3 Note（K50-t5）16G 珍珠白&nbsp;&nbsp;&nbsp;<br/>特点：4.7英寸6.9mm超薄配备A8芯片搭载Android操作系统&nbsp;&nbsp;&nbsp;<br/>网络类型：移动/联通/电信4G,移动/联通/电信3G,
移动/联通2G</p>
					<a href="details.html" class="da-link">立即 购买</a>
					<div class="da-img"><img src="<%=request.getContextPath()%>/images/index/s2.PNG" alt="image01" /></div>
				</div>
				
				<div class="da-slide">
					<h2 style="font-size:36px;">得力（deli） 3711 键鼠套装</h2>
					<p>得力（deli） 3711 超薄设计有线鼠标键盘套装（USB键盘+鼠标）<br/>类别：有线键盘<br/>接口：USB接口</p>
					<a href="details.html" class="da-link">立即 购买</a>
					<div class="da-img"><img src="<%=request.getContextPath()%>/images/index/s3.PNG" alt="image01" /></div>
				</div>
				
				<div class="da-slide">
					<h2 style="font-size:36px;">优者 GT08 智能手表</h2>
					<p>优者GT08智能手表男女蓝牙手表手机兼容三星苹果watch运动腕表<br/>商品毛重：210.00g<br/>商品产地：中国台湾</p>
					<a href="details.html" class="da-link">立即 购买</a>
					<div class="da-img"><img src="<%=request.getContextPath()%>/images/index/s4.PNG" alt="image01" /></div>
				</div>
				
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
        </div>
</body>
</html>