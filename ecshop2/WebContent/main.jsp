<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>黄师图书交易系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/styles/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/jquery.min.js"></script>
<!-- start slider -->
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/images/index/favicon.ico"/>		
	<link href="<%=request.getContextPath()%>/styles/slider.css" rel="stylesheet" type="text/css" media="all" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/modernizr.custom.2468.js"></script>
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
<div class="header_bg">
<div style="float:right;margin-right:30px;margin-top:5px;">
<c:set var="usershowname" scope="session" value="${custvo.account}"/>
<c:if test="${usershowname == null}">
<a href="<%=request.getContextPath()%>/web/user/login.jsp">登录</a>
<a href="<%=request.getContextPath()%>/web/user/register.jsp">注册</a>
</c:if>
<c:if test="${usershowname ne null}">
<a href="<%=request.getContextPath()%>/UserServlet.do?method=002&customer_id=${custvo.customer_id}"><c:out value="${usershowname}" />&nbsp; |</a>
<a href="<%=request.getContextPath()%>/UserServlet.do?method=001&customer_id=${custvo.customer_id}">用户中心</a> &nbsp|
<a href="<%=request.getContextPath()%>/web/user/exit.jsp">安全退出</a>
</c:if>

</div>
<div class="wrap" style="clear:both;">
<div class="header" style="padding:0;">
		<div class="logo" style="float:left;">
			<a href="<%=request.getContextPath()%>/index.jsp"><img src="<%=request.getContextPath()%>/images/index/logo.png" alt=""/></a>
		</div>
		<div class="h_icon" style="clear:both;">
		<ul class="icon1 sub-icon1">
			<li><a class="active-icon c1" href="${pageContext.request.contextPath}/ShopCarServlet.do?method=toshopcart"></a>
				<!-- <ul class="sub-icon1 list">
					<li><h3>购物车空的</h3><a href=""></a></li>
				</ul> -->
			</li>
		</ul>
		</div>
		<div class="h_search" style="float:right;">
    		<form method="post" action="${pageContext.request.contextPath}/IndexServlet.do?method=search">
    			<input type="text" name="search" value="请输入关键字"  
            onfocus='if(this.value=="请输入关键字"){this.value="";}; '   
            onblur='if(this.value==""){this.value="请输入关键字";};'>
    			<input type="submit" value="">
    		</form>
		</div>
		<div class="clear"></div>
	</div>
  </div>
</div>
<div class="header_btm">
<div class="wrap">
	<div class="header_sub">
		<div class="h_menu" style="margin-left:255px;" id="topdiv">
			<ul>
				<li class="active"><a href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
				<li><a href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
				<%-- <li><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
				<li><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
				<li><a href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
				<li><a href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web" style="border-right:1px solid white;">特色新闻</a></li>
			</ul>
		</div>
		<div class="top-nav">
	          <nav class="nav">	        	
	    	    <a href="#" id="w3-menu-trigger"> </a>
	                  <ul class="nav-list" style="">
	            	        <li class="nav-item"><a class="active" href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
							<%-- <li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/news/news.jsp" style="border-right:1px solid white;">特色新闻</a></li>
	                 </ul>
	           </nav>
	             <div class="search_box">
				<form>
				   <input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}"><input type="submit" value="">
			    </form>
			</div>
	          <div class="clear"> </div>
	          <script src="<%=request.getContextPath()%>/scripts/responsive.menu.js"></script>
         </div>		  
	<div class="clear"></div>
  	</div>
  </div>
</div>
<%-- <%@include file="web/product/slider.jsp"%> --%>
<div id="da-slider" class="da-slider">
			<c:forEach items="${pvolist}" var="pvo" varStatus="status">
			  <c:if test="${status.index<=5}">
				<div class="da-slide">
					<h2 style="font-size:36px;">${pvo.title}</h2>
					<p>${pvo.profile}</p>
					<a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}&customer_id=${custvo.customer_id}" class="da-link">立即<br/>购买</a>
					<div class="da-img" style="margin-top:0px;"><img src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" alt="image01" width="304px" height="360px"/></div>
				</div>
			  </c:if>
			</c:forEach>
				<nav class="da-arrows">
					<span class="da-arrows-prev"></span>
					<span class="da-arrows-next"></span>
				</nav>
</div>
<div class="wrap">
<!----start-img-cursual---->
	<div id="owl-demo" class="owl-carousel">
		<c:forEach items="${pvolist}" var="pvo" varStatus="status">
		<c:if test="${status.index>3}">
		<div class="item" onClick="location.href='${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}';">
			<div class="cau_left">
				<img class="lazyOwl" data-src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" alt="Lazy Owl Image">
			</div>
			<div class="cau_left" style="height:120px;">
				<h4><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}" style="font-size:18px;">${pvo.title}</a></h4>
				<a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}" class="btn">shop</a>
			</div>
		</div>	
		</c:if>
		</c:forEach>
	</div>
	<!----//End-img-cursual---->
</div>
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
			<c:if test="${status.index<6}">
			<div class="grid1_of_3" style="height:400px;">
				<a href="${pageContext.request.contextPath}/ProductServlet.do?productID=${pvo.productID}">
					<img src="${pageContext.request.contextPath}/${pvo.img}/a1.PNG" alt="" width="60%" height="60%" style="margin-left:55px;"/>
					<h3 style="font-size:18px;margin-left:90px;">${pvo.title}</h3>
					<div class="price">
						<h4>原价：￥${pvo.color}<span>详情</span></h4>
						<h4 style="color:#F06">现价：￥${pvo.price}</h4>
					</div>
					<span class="b_btm"></span>
				</a>
			</div>
			</c:if>
		    </c:forEach>
		<!-- end grids_of_3 -->
	</div>
</div>
</div>
<div style="clear:both;margin-top:20px;"></div>
<div style="clear:both;margin-top:20px;"></div>
<div style="clear:both;margin-top:50px;"></div>
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
</div> --%>	
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