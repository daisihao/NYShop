<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>南鱼商城</title>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/img/favicon.ico"/>
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
<div class="header_bg">
<div style="float:right;margin-right:30px;margin-top:5px;">
<c:set var="usershowname" scope="session" value="${custvo.account}"/>
<c:if test="${usershowname ne null}">
<a href="<%=request.getContextPath()%>/UserServlet.do?method=002&customer_id=${custvo.customer_id}"><c:out value="${usershowname}" />&nbsp |</a>
<a href="<%=request.getContextPath()%>/UserServlet.do?method=001&customer_id=${custvo.customer_id}">用户中心</a> &nbsp |
<a href="<%=request.getContextPath()%>/web/user/exit.jsp">安全退出</a>
</c:if>
<c:if test="${usershowname eq null}">
<a href="<%=request.getContextPath()%>/web/user/login.jsp">登录</a>
<a href="<%=request.getContextPath()%>/web/user/register.jsp">注册</a>
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
				<%-- <li><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li> --%>
				<%-- <li><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
				<li><a href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
				<li><a href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web" style="border-right:1px solid white;">特色新闻</a></li>
		</div>
		<div class="top-nav">
	          <nav class="nav">	        	
	    	    <a href="#" id="w3-menu-trigger"> </a>
	                  <ul class="nav-list" style="">
	            	        <li class="nav-item"><a class="active" href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
							<%-- <li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li> --%>
							<%-- <li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web" style="border-right:1px solid white;">特色新闻</a></li>
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
</body>
</html>