<%@page import="edu.hgsf.nanyu.view.ArticlePageVO"%>
<%@page import="oracle.security.o5logon.a"%>
<%@page import="edu.hgsf.nanyu.view.Article_CommentVO"%>
<%@page import="java.util.List"%>
<%@page import="edu.hgsf.nanyu.view.ArticleVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索文章</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/styles/news/searchArticle.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>

<link href="${pageContext.request.contextPath}/styles/news/news.css" rel="stylesheet" >
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/news/jquery.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/news/jquery.caroufredsel-6.0.4-packed.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/news/focus.js" ></script>
<link href="<%=request.getContextPath()%>/styles/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript">
   /* $(function(){
	   $('#c4').submit(function(e){
		     var comment=document.myform.comment;
			 if(comment.value.length==0){
				 $.messager.alert("请输入！");
				 return false;
			 }
	   });
   }); */
</script>
</head>
<body>

<!--导入网页头部  -->
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
			<li><a class="active-icon c1" href="<%=request.getContextPath()%>/web/product/shop_cart.jsp"></a>
				<!-- <ul class="sub-icon1 list">
					<li><h3>购物车空的</h3><a href=""></a></li>
				</ul> -->
			</li>
		</ul>
		</div>
		
		<div class="h_search" style="float:right;">
                   <!--  新闻搜索框 -->
    	  <form action="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticle_web" method="post" id="c3">
            <input type="text" name="title" value="请输入关键字"
            onfocus='if(this.value=="请输入关键字"){this.value="";}; '   
            onblur='if(this.value==""){this.value="请输入关键字";};'>
            <input type="submit" value=""/>
          </form>
    		<%-- <form method="post" action="${pageContext.request.contextPath}/IndexServlet.do?method=search">
    			<input type="text" name="search" value="请输入关键字"  
            onfocus='if(this.value=="请输入关键字"){this.value="";}; '   
            onblur='if(this.value==""){this.value="请输入关键字";};'>
    			<input type="submit" value="">
    		</form> --%>
		
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
<%-- 				<li><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
				<li><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
				<li><a href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
				<li><a href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web" style="border-right:1px solid white;">特色新闻</a></li>
		</div>
		<div class="top-nav">
	          <nav class="nav">	        	
	    	    <a href="#" id="w3-menu-trigger"> </a>
	                  <ul class="nav-list" style="">
	            	        <li class="nav-item"><a class="active" href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
<%-- 							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
							<li class="nav-item"><a href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li> --%>
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
<!-- 头部截止 -->
  <% ArticleVO avo=(ArticleVO)request.getAttribute("avo");%> 
  <% ArticlePageVO apvo=(ArticlePageVO)request.getAttribute("apvo"); %>
  <%-- <% List<ArticleVO> list2=(List)request.getAttribute("list2");%>
  <% 
    List<Article_CommentVO> list1=(List)request.getAttribute("list1");
  %> --%>

<div class="banner">
  <div class="banner_show" id="banner_show"> <a target="_blank" class="bannger_inbox"><img src="${pageContext.request.contextPath}/images/news/banner1.jpg" width="2000" height="572" /></a> <a target="_blank" class="bannger_inbox"><img src="${pageContext.request.contextPath}/images/news/banner2.jpg" width="2000" height="572" /></a> <a target="_blank" class="bannger_inbox"><img src="${pageContext.request.contextPath}/images/news/banner3.jpg" width="2000" height="572" /></a>
    <div class="banner_mag">
      
      <!-- 插入搜索文本框 -->
      <div class="banner_input">
        <%-- <form action="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticle_web" method="post" id="c3">
            <input type="text" name="title"/>
            <input type="submit" value="搜索"/>
          </form> --%>
      </div> 
      
      <div class="banner_magbox">
        <div id="banner_magbox0">
          
          <div class="focus-img"><img src="${pageContext.request.contextPath}/images/news/txt.png" /></div>
          
          <h4><a href="#">NANYU ECSHOP</a></h4>
          <p>每一个孩子都有一个大大的梦想。参加狮王美国游学，是孩子成长关键期的一次独立洗礼，给孩子正确的教育引导，鼓励激发自我潜能，提高解决困难能力，培养团队合作精神，帮助他们完善自我，学会关爱他人，提高沟通水平，养成独立、自信和快乐的个性。</p>
        </div>
        <div id="banner_magbox1" class="none">
          <div class="focus-img"><img src="${pageContext.request.contextPath}/images/news/txt.png" /></div>
          <h4><a href="#">NANYU ECSHOP</a></h4>
          <p>用友NC，走过16年发展历史，拥有8000余家集团企业客户。其第三代产品NC6定位于大型企业管理与电子商务平台，满足集团企业长远和现实需求，屹立于世界级高端管理软件领域。</p>
        </div>
        <div id="banner_magbox2" class="none">
          <div class="focus-img"><img src="${pageContext.request.contextPath}/images/news/txt.png" /></div>
          <h4><a href="#">NANYU ECSHOP</a></h4>
          <p>Standard Product Support （简称“SPS”）是用友公司原厂为确保软件产品授权许可升级和正常运行而提供的软件产品支持服务。 用友SPS，让企业管理信息系统拥有持久生命力！</p>
        </div>
      
      </div>
      
      <div class="yq_banner_list" id="yq_banner_list"> <a href="javascript:;" rel="0" class="hover">&nbsp;</a> <a href="javascript:;" rel="1">&nbsp;</a> <a href="javascript:;" rel="2">&nbsp;</a> </div>
    
      
    </div>
    <div class="banner_pre_next"> <a href="javascript:;" class="banner_btn_left">上一个</a> <a href="javascript:;" class="banner_btn_right">下一个</a> </div>
    
      
  </div>
  <!--蓝色文字部分-->
  <div class="focus-news">
    <div class="index-news-title">
      <h2>NEWS/Events</h2>
      <h2>新闻/活动</h2>
      <ul class="index-tabs fix">
        <li id="prev" class="prev"></li>
        <li id="next" class="next"></li>
      </ul>
    </div>
    <div class="index-news-show" id="carousel">
      
       <%if(apvo!=null){ %>
     <c:forEach items="${apvo.data}" var="e2">
      
      <ul class="fix">
    
        <li>
          <h2>文章标题：${e2.title }</h2>
          <p>文章作者：${e2.author}</p>
          <p>文章日期：${e2.date}</p>
        
        </li>
        <li>
          <h2>文章标题：${e2.title }</h2>
          <p>文章作者：${e2.author}</p>
          <p>文章日期：${e2.date}</p>
        
        </li>
        <li>
          <h2>文章标题：${e2.title }</h2>
          <p>文章作者：${e2.author}</p>
          <p>文章日期：${e2.date}</p>
        </li>
        <li>
          <h2>文章标题：${e2.title }</h2>
          <p>文章作者：${e2.author}</p>
          <p>文章日期：${e2.date}</p>
     
        </li>
        </ul>
        </c:forEach>
    <%} %>
    
      
    </div>
    <div class="index-news-tel">888-888-8888</div>
  </div>
</div>

<div style="text-align:center;margin:20px 0">

<p></p><script type="text/javascript">
var cpro_id = "u1328248";
</script>

</div>

<!-- 导入网页尾部 -->
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
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>关于我们</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/web/link/rel.jsp">项目介绍</a></li>
					
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