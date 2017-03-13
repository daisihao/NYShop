<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>HUANGSHI</title>
<meta charset="utf-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/styles/admin/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath()%>/styles/admin/grid.css" type="text/css" media="all">
<link rel="stylesheet" href="<%=request.getContextPath()%>/styles/admin/style.css" type="text/css" media="all">
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/jquery.anythingslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/jquery.easing.1.2.js"></script>
<script type="text/javascript">
	function formatText(index, panel) {
		return index + "";
	}

	$(function() {

		$('.anythingSlider').anythingSlider({
			easing : "easeInOutExpo", // Anything other than "linear" or "swing" requires the easing plugin
			autoPlay : true, // This turns off the entire FUNCTIONALY, not just if it starts running or not.
			delay : 3000, // How long between slide transitions in AutoPlay mode
			startStopped : false, // If autoPlay is on, this can force it to start stopped
			animationTime : 600, // How long the slide transition takes
			hashTags : true, // Should links change the hashtag in the URL?
			buildNavigation : true, // If true, builds and list of anchor links to link to each slide
			pauseOnHover : true, // If true, and autoPlay is enabled, the show will pause on hover
			startText : "Play", // Start text
			stopText : "Stop" // Stop text
		});
	});
</script>
<!--[if lt IE 7]>
  <link rel="stylesheet" href="<%=request.getContextPath()%>/styles/admin/ie/ie6.css" type="text/css" media="screen">
  <script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/ie_png.js"></script>
  <script type="text/javascript">
      ie_png.fix('.png');
  </script>
<![endif]-->
<!--[if lt IE 9]>
  	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/html5.js"></script>
  <![endif]-->
</head>
<body>
	<div id="main">
		<!-- header -->
		<header>
		<div class="logo">
			<h1>
				<a href="">Consulte<i>X</i></a>
			</h1>
			<span class="description">our customers support</span>
		</div>
		<a href="#" class="rss">RSS Submit</a> <nav>
		<ul>
			<li><a href="" class="current">Home Page</a></li>
			<li><a href="">About Us</a></li>
			<li><a href="">Solutions</a></li>
			<li><a href="">Partners</a></li>
			<li><a href="">Clients</a></li>
			<li><a href="">Contacts</a></li>
		</ul>
		</nav> </header>
		<section id="main-banner">
		<div class="intro">
			<div class="inner">
				<strong>trust our</strong> experience to manage your <span>business!</span>
			</div>
		</div>
		<div class="anythingSlider">
			<div class="wrapper">
				<ul>
					<li><img src="<%=request.getContextPath()%>/images/admin/slide1.png" alt=""></li>
					<li><img src="<%=request.getContextPath()%>/images/admin/slide2.png" alt=""></li>
					<li><img src="<%=request.getContextPath()%>/images/admin/slide3.png" alt=""></li>
					<li><img src="<%=request.getContextPath()%>/images/admin/slide4.png" alt=""></li>
					<li><img src="<%=request.getContextPath()%>/images/admin/slide5.png" alt=""></li>
				</ul>
			</div>
		</div>
		</section>
		<aside class="top">
		<div class="container_12">
			<div class="wrapper">
				<div class="grid_4 divider">
					<div class="inner">
						<h3>
							<img src="<%=request.getContextPath()%>/images/admin/icon1.png" alt="">Personal Finance<span></span>
						</h3>
						Wnec porta diam eu massa. Quisque diam vitae, pede. Donec eget
						tellus non erat lacinia fermen tum. Donec in velit ve... <a
							href="#" class="link1">More Info</a>
					</div>
				</div>
				<div class="grid_4 divider">
					<div class="inner">
						<h3>
							<img src="<%=request.getContextPath()%>/images/admin/icon2.png" alt="">Resource Centers<span></span>
						</h3>
						Quisque diam lorem, interdum vitae, dapibus ac, scelerisque vitae,
						pede. Donec llus non erat lacini a fermentc in velit ve... <a
							href="#" class="link1">More Info</a>
					</div>
				</div>
				<div class="grid_4">
					<div class="inner">
						<h3>
							<img src="<%=request.getContextPath()%>/images/admin/icon3.png" alt="">Online Business<span></span>
						</h3>
						Diam lorem, interdum vitae, dapibus ac, scelerisq ue vitae, pede.
						Donec llus non erat lacinia ferm entc in velit ve... <a href="#"
							class="link1">More Info</a>
					</div>
				</div>
			</div>
		</div>
		</aside>
		<div class="wrapper">
			<!-- content -->
			<section id="content">
			<div class="container_12">
				<div class="wrapper">
					<aside class="grid_4">
					<div class="box">
						<h2>Browse by category:</h2>
						<ul class="list1">
							<li><a href="#">Apparel Businesses</a></li>
							<li><a href="#">Business Services</a></li>
							<li><a href="#">Children's Businesses</a></li>
							<li><a href="#">Financial Services</a></li>
							<li><a href="#">Gifts &amp; Novelties</a></li>
							<li><a href="#">Home-Improvement Products</a></li>
							<li><a href="#">Miscellaneous Products &amp; Services</a></li>
							<li><a href="#">Network Marketing</a></li>
							<li><a href="#">Personal-Care Businesses</a></li>
							<li><a href="#">Photo Businesses</a></li>
						</ul>
						<div class="extra-links">
							<a href="#">Read more</a> &nbsp;| &nbsp;<a href="#">Get rss
								feeds</a>
						</div>
					</div>
					<div class="box">
						<h2>Receive our Newsletter</h2>
						<p>
							We have new talented people and<br /> technologies every week,
							so stay in touch!
						</p>
						<form action="" id="newsletter-form">
							<fieldset>
								<input type="text"><input type="submit" value="ok">
							</fieldset>
						</form>
					</div>
					</aside>
					<div class="grid_8">
						<div class="indent">
							<div class="inside">
								<h2>Entrepreneur connect discussion groups</h2>
								<div class="wrapper">
									<img src="<%=request.getContextPath()%>/images/admin/1page-img1.jpg" alt="" class="img-indent">
									<h4>Lorem ipsum dolor sit amet consectetuer adipiscing.
										Praese vestiblum molestie lacus. Aenean nonume</h4>
									<p>Phasellus porta. Fusce suscipit varius mi. Cum sociis
										natoque peni gnis dis parturient montes nascetur ridiculus
										mus. Nulla du montes nascetu.</p>
									<a href="#" class="button">Read More</a>
								</div>
							</div>
							<div class="wrapper">
								<div class="grid_4 colborder alpha">
									<div class="inside">
										<h2>Company latest news</h2>
										<ul class="news">
											<li>
												<p class="date">
													<strong>24</strong>Feb
												</p> Sociis natlaoreet aliquale dolor da pib eget <a href="#">elemeum
													vel</a> cursus el eifend elian auco.
											</li>
											<li>
												<p class="date">
													<strong>05</strong>Jun
												</p> Dolor dapibus eget elemeum ve ursus eleifend elit. <a
												href="#">Aenea wisi</a> et urn liq uaerat volutpat.
											</li>
											<li>
												<p class="date">
													<strong>17</strong>Oct
												</p> Aenean aucor wisi et urnuerat volu tpat. Duis ac turpis. <a
												href="#">Integeum ante</a> ecuuum libero nisl porta.
											</li>
										</ul>
										<a href="#" class="button">Read More</a>
									</div>
								</div>
								<div class="grid_4 omega">
									<div class="inside">
										<h2>Opportunity zone</h2>
										<p>
											<img src="<%=request.getContextPath()%>/images/admin/1page-img2.jpg" alt="">
										</p>
										<p class="p3">Phasellus porta. Fusce suscipit varius mi.
											Cum sociis natoque penibus et gnis dis parturient montescetur
											sit amet consec tetuer adipiscing elituris.</p>
										<a href="#" class="button">Read More</a>
									</div>
								</div>
							</div>
							</article>
						</div>
					</div>
				</div>
			</div>
			</section>
		</div>
		<!-- footer -->
		<footer> <nav>
		<ul>
			<li><a href="" class="current">Home Page</a></li>
			<li><a href="">About Us</a></li>
			<li><a href="">Solutions</a></li>
			<li><a href="">Partners</a></li>
			<li><a href="">Clients</a></li>
			<li><a href="">Contacts</a></li>
		</ul>
		</nav> </footer>
	</div>

	<script src="http://www.mycodes.net/js/tongji.js"></script>
	<script src="http://www.mycodes.net/js/youxia.js"
		type="text/javascript"></script>


</body>
</html>