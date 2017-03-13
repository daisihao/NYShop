<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page import="edu.hgsf.nanyu.view.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>产品详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/styles/product/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start details -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/product/productviewgallery.css" media="all" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/cloud-zoom.1.0.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/jquery.fancybox.pack.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/jquery.fancybox-buttons.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/jquery.fancybox-thumbs.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/productviewgallery.js"></script>
<!-- start top_js_button -->
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/move-top.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/product/easing.js"></script>
   <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('jsp,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
</head>
<body>

<!-- start header -->
<div id="header">
    	<jsp:include page="../../include/header.jsp"></jsp:include>
                      
</div>

<!-- start main -->
<!-- <div class="main_bg"> -->
<div class="wrap" style="margin-left:15%">	
	<div class="main">
	<!-- start content -->
	<!-- <div class="single"> -->
			<!-- start span1_of_1 -->
			<div class="left_content">
			<div class="span1_of_1">
				<!-- start product_slider -->
				<div class="product-view">
				    <div class="product-essential" >
				        <div class="product-img-box">
				    <div class="more-views" style="float:left;">
				        <div class="more-views-container" style="float:center">
				        <ul>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a>            
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a>
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
				            	<img src="" src_main=""  title="" alt="" /></a> 
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>  
				            </li>
				            <li>
				            	<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt="">
				            	<img src="" src_main="" title="" alt="" /></a>
				            </li>
				          </ul>
				        </div>
				    </div>
				   <div class="product-image"> 
				        <a class="cs-fancybox-thumbs cloud-zoom" rel="adjustX:30,adjustY:0,position:'right',tint:'#202020',tintOpacity:0.5,smoothMove:2,showTitle:true,titleOpacity:0.5" data-fancybox-group="thumb" href="<%=request.getContextPath()%>/${pvo.img}/a1.PNG" title="Women Shorts" alt="Women Shorts">
				           	<img src="<%=request.getContextPath()%>/${pvo.img}/a1.PNG" alt="Women Shorts" title="Women Shorts" />
				        </a>
				   </div>
					<script type="text/javascript">
						var prodGallery = jQblvg.parseJSON('{"prod_1":{"main":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a5.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a1.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a9.PNG","label":""},"gallery":{"item_0":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a5.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a1.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a9.PNG","label":""},"item_1":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a6.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a2.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a10.PNG","label":""},"item_2":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a7.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a3.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a11.PNG","label":""},"item_3":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a8.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a4.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a12.PNG","label":""},"item_4":{"orig":"<%=request.getContextPath()%>/${pvo.img}/a5.PNG","main":"<%=request.getContextPath()%>/${pvo.img}/a1.PNG","thumb":"<%=request.getContextPath()%>/${pvo.img}/a9.PNG","label":""}},"type":"simple","video":false}}'),
						    gallery_elmnt = jQblvg('.product-img-box'),
						    galleryObj = new Object(),
						    gallery_conf = new Object();
						    gallery_conf.moreviewitem = '<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt=""><img src="" src_main="" width="64" height="85" title="" alt="" /></a>';
						    gallery_conf.animspeed = 200;
						jQblvg(document).ready(function() {
						    galleryObj[1] = new prodViewGalleryForm(prodGallery, 'prod_1', gallery_elmnt, gallery_conf, '.product-image', '.more-views', 'http:');
						        jQblvg('.product-image .cs-fancybox-thumbs').absoluteClick();
						    jQblvg('.cs-fancybox-thumbs').fancybox({ prevEffect : 'none', 
						                             nextEffect : 'none',
						                             closeBtn : true,
						                             arrows : true,
						                             nextClick : true, 
						                             helpers: {
						                               thumbs : {
						                                   width: 64,
						                                   height: 85,
						                                   position: 'bottom'
						                               }
						                             }
						                             });
						    jQblvg('#wrap').css('z-index', '100');
						            jQblvg('.more-views-container').elScroll({type: 'vertical', elqty: 4, btn_pos: 'border', scroll_speed: 400 });
						        
						});
						
						function initGallery(a,b,element) {
						    galleryObj[a] = new prodViewGalleryForm(prods, b, gallery_elmnt, gallery_conf, '.product-image', '.more-views', '');
						};
					</script>
				</div>
				</div>
				</div>
				<!-- end product_slider -->
			</div>
			<!-- start span1_of_1 -->
			<div class="span1_of_1_des">
				  <div class="desc1">
					<h5>${pvo.name}</h5>
					<h4>${pvo.profile}</h4>
					<h5 style="color:ccc">原价：￥${pvo.color} <a href="#"></a></h5>
					<h5 style="color:#F06">现价：￥${pvo.price} <a href="#"></a></h5>
					<p>库存量：${pvo.store}</p>
					
					<div class="available">
						
						
						<div class="btn_form">
							<form method="post" action="${pageContext.request.contextPath}/ShopCarServlet.do?method=add&productID=${pvo.productID}">
							
								<input type="submit" value="add to cart" title="" />
							</form>
						</div>
						<!-- <span class="span_right"><a href="#">login to save in wishlist </a></span> -->
						<div class="clear"></div>
					</div>
					<div class="share-desc" >
						<div class="share">
							<h4>Share Product :</h4>
							<ul class="share_nav">
								<li><a href="#"><img src="<%=request.getContextPath()%>/images/product/facebook.png" title="facebook"></a></li>
								<li><a href="#"><img src="<%=request.getContextPath()%>/images/product/twitter.png" title="Twiiter"></a></li>
								<li><a href="#"><img src="<%=request.getContextPath()%>/images/product/rss.png" title="Rss"></a></li>
								<li><a href="#"><img src="<%=request.getContextPath()%>/images/product/gpluse.png" title="Google+"></a></li>
				    		</ul>
						</div>
						<div class="clear"></div>
					</div>
			   	 </div>
			   	</div>
				   	
			   	<div class="clear"></div>
			   	<!-- start tabs -->
	  
				   	<section class="tabs">
		            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
			        <label for="tab-1" class="tab-label-1">商品评价</label>
			
		            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3">
			        <label for="tab-3" class="tab-label-3">商品介绍</label>
	          
				    <div class="clear-shadow"></div>
					
			        <div class="content">
			        
<!-- contenet -->
			        <div class="content-1" style="clear:both;">
				        	<p class="para top"><span></span></p>
							<!-- <ul>
								<li>全部好评（5034）</li>
								<li>中评（443）</li>
								<li>差评（30）</li>
								<li>有图片的评价（34）</li>
							</ul> -->
					
<form class="remark" action="<%=request.getContextPath()%>/Product_CommentServlet.do?productID=${pvo.productID}&customer_id=${custvo.customer_id}" method="post">
<table>
<tr>
    <td><textarea name="textarea" id="textarea" cols="80" rows="3"></textarea></td>
     <td><button id="btn1">提交</button></td>
</tr>
</table>
</form>
    <table style="margin-top:30px;border:1px solid #DFDFDF;">
            <tr> 
			    <th width="120px;" style="border:1px solid #DFDFDF;">顾客账号</th>
			    <th width="200px;" style="border:1px solid #DFDFDF;">评论时间</th>
			    <th width="360px;" style="border:1px solid #DFDFDF;">评论内容</th>
            </tr>
           <c:forEach items="${ppo.rows}" var="e">
               <tr>
                  <td style="padding-left:20px;border:1px solid #DFDFDF;"><c:out value="${e.account}"/></td>
                  <td style="padding-left:20px;border:1px solid #DFDFDF;">${e.comment_date }</td>                
                  <td style="padding-left:20px;border:1px solid #DFDFDF;">${e.comment_produte }</td>                
               </tr>
          </c:forEach>
    </table>
     <a href="${pageContext.request.contextPath}/ProductServlet.do?&productID=${pvo.productID}&customer_id=${custvo.customer_id}&current=1">首页</a>
   <c:choose>
   <c:when test="${ ppo.currentPages==1}">上一页</c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/ProductServlet.do?&productID=${pvo.productID}&customer_id=${custvo.customer_id}&current=${ppo.currentPages-1} ">上一页</a>
   </c:otherwise>
   </c:choose>
   
   
    <c:choose>
   <c:when test="${ ppo.currentPages==ppo.totalPages}">下一页</c:when>
   <c:otherwise>
   <a href="${pageContext.request.contextPath}/ProductServlet.do?&productID=${pvo.productID}&customer_id=${custvo.customer_id}&current=${ppo.currentPages+1} ">下一页</a>
   </c:otherwise>
   </c:choose>
   
   <a href="${pageContext.request.contextPath}/ProductServlet.do?&productID=${pvo.productID}&customer_id=${custvo.customer_id}&current=${ppo.totalPages}">尾页</a>
  第${ppo.currentPages}页/共${ppo.totalPages}页
                          </div>
				        <div class="content-3">
				        	<p class="para top"><span>LOREM IPSUM</span>${pvo.title}${pvo.profile}</p>
							<ul>
								<li>商品编号：1475436793</li>
								<li>条形码：${pvo.code}</li>
								<li>商品产地：中国大陆</li>
								<li>上架时间：2015-03-12 14:30:48</li>
							</ul>
							<div class="clear"></div>
						</div>
				      
				        
							<div class="clear"></div>
						</div>
			        </div>
			        </section>
         
		         	<!-- end tabs -->
			   	</div>
			   	<!-- start sidebar -->
           </div>

<!-- start footer -->
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
<div class="footer_bg1" style="clear:both;">
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



