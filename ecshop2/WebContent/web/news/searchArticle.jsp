<%@page import="edu.hgsf.nanyu.view.PageVO"%>
<%@page import="edu.hgsf.nanyu.view.ArticlePageVO"%>
<%@page import="edu.hgsf.nanyu.view.Article_CommentVO"%>
<%@page import="java.util.List"%>
<%@page import="edu.hgsf.nanyu.view.ArticleVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>搜索文章</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/news/searchArticle.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript">
 
$(document).ready(function(){
  $('#f3').hide();
		  
 });

 //发表评论
/* 处理分页 */
function tonext5(ID){
	    $('#f3').show();
	    //$().load('${pageContext.request.contextPath}/ArticleServlet.do?method=commentTwo&ID='+ID);
	    $('#f9').load('${pageContext.request.contextPath}/ArticleServlet.do?method=search&ID='+ID);
		$('#f4').load('${pageContext.request.contextPath}/ArticleServlet.do?method=searchComment&ID='+ID);
	}
 
function tonext(currentPages,totalPages,ID){
	//alert(currentPages+";"+totalPages+";"+ID);
	var curr=currentPages+1;
	$('#f4').load('${pageContext.request.contextPath}/ArticleServlet.do?method=searchComment&currentPages='+curr+'&ID='+ID);
}
function tonext1(currentPages,totalPages,ID){
	var curr=currentPages-1;
	$('#f4').load('${pageContext.request.contextPath}/ArticleServlet.do?method=searchComment&currentPages='+curr+'&ID='+ID);
}
function tonext2(currentPages,totalPages,ID){
	var curr=totalPages;
	$('#f4').load('${pageContext.request.contextPath}/ArticleServlet.do?method=searchComment&currentPages='+curr+'&ID='+ID);
}
function tonext3(currentPages,totalPages,ID){
	$('#f4').load('${pageContext.request.contextPath}/ArticleServlet.do?method=searchComment&currentPages=1&ID='+ID);
}  

$(function(){
	$('#f6').on('click',function(e){
		//var v=document.getElementById("comment").value;
	    var v=$('#comment').val();
		//alert(v);
		if(v==null||v==""){
			alert('输入不能为空！');
			//$('#f11').submit();
		}else{
			$('#f11').submit();
		}
		/* var customer_id=${custvo.customer_id};
		$.post("${pageContext.request.contextPath}/ArticleServlet.do?method=commentTwo",{'customer_id':customer_id},function(data){
			$('#f7').html(data);
		}); */
	});
});

</script>
</head>
<body>
    <% request.setCharacterEncoding("utf-8");%>
	<!--导入网页头部  -->
	<div class="header_bg">
		<div style="float: right; margin-right: 30px; margin-top: 5px;">
			<c:set var="usershowname" scope="session" value="${custvo.account}" />
			<c:if test="${usershowname ne null}">
				<a
					href="<%=request.getContextPath()%>/UserServlet.do?method=002&customer_id=${custvo.customer_id}"><c:out
						value="${usershowname}" />&nbsp; |</a>
				<a
					href="<%=request.getContextPath()%>/UserServlet.do?method=001&customer_id=${custvo.customer_id}">用户中心</a> &nbsp |
<a href="<%=request.getContextPath()%>/web/user/exit.jsp">安全退出</a>
			</c:if>
			<c:if test="${usershowname eq null}">
				<a href="<%=request.getContextPath()%>/web/user/login.jsp">登录</a>
				<a href="<%=request.getContextPath()%>/web/user/register.jsp">注册</a>
			</c:if>
		</div>
		<div class="wrap" style="clear: both;">
			<div class="header" style="padding: 0;">
				<div class="logo" style="float: left;">
					<a href="<%=request.getContextPath()%>/index.jsp"><img
						src="<%=request.getContextPath()%>/images/index/logo.png" alt="" /></a>
				</div>
				<div class="h_icon" style="clear: both;">
					<ul class="icon1 sub-icon1">
						<li><a class="active-icon c1"
							href="<%=request.getContextPath()%>/web/product/shop_cart.jsp"></a>
							<!-- <ul class="sub-icon1 list">
					<li><h3>购物车空的</h3><a href=""></a></li>
				</ul> --></li>
					</ul>
				</div>

				<div class="h_search" style="float: right;">
					<!--  新闻搜索框 -->
					<form
						action="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticle_web"
						method="post">
						<input type="text" name="title" value="请输入关键字"
							onfocus='if(this.value=="请输入关键字"){this.value="";}; '
							onblur='if(this.value==""){this.value="请输入关键字";};'> 
					    <input type="submit" value="" />
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
				<div class="h_menu" style="margin-left: 255px;" id="topdiv">
					<ul>
						<li class="active"><a
							href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
						<li><a
							href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
						<li><a
							href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
						<li><a
							href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li>
						<li><a
							href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
						<li><a
							href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web"
							style="border-right: 1px solid white;">特色新闻</a></li>
				</div>
				<div class="top-nav">
					<nav class="nav"> <a href="#" id="w3-menu-trigger"> </a>
					<ul class="nav-list" style="">
						<li class="nav-item"><a class="active"
							href="${pageContext.request.contextPath}/index.jsp">主页</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/IndexServlet.do?method=list">商品分类</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/web/nav/activity.jsp">优惠活动</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/web/nav/auction.jsp">拍卖活动</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/web/nav/message.jsp">用户留言</a></li>
						<li class="nav-item"><a
							href="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticles_web"
							style="border-right: 1px solid white;">特色新闻</a></li>
					</ul>
					</nav>
					<div class="search_box">
						<form>
							<input type="text" value="Search" onFocus="this.value = '';"
								onBlur="if (this.value == '') {this.value = 'Search';}"><input
								type="submit" value="">
						</form>
					</div>
					<div class="clear"></div>
					<script
						src="<%=request.getContextPath()%>/scripts/responsive.menu.js"></script>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<!-- 头部截止 -->
	<%
		ArticleVO avo = (ArticleVO) request.getAttribute("avo");
	%>
	<%
		ArticlePageVO apvo = (ArticlePageVO) request.getAttribute("apvo");
	%>
	<%
		List<ArticleVO> list2 = (List) request.getAttribute("list2");
	%>
	<%
		PageVO<Article_CommentVO> pacvo = (PageVO) request.getAttribute("pacvo");
	%>
	<div class="f1">
		<div clsas="f2">
			<!-- <h3>文章列表</h3> -->
			<div class="f6">

				<%-- <form action="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticle_web" method="post" id="c3">
                    请输入文章标题&nbsp;&nbsp;<input type="text" id="title" name="title" />
        <input type="submit" id="c2" value="搜索"/>
        </form> --%>
			</div>
			<!-- 根据标题搜索的列表 -->
			<div class="f10" style="margin-left: 20%">
				<table border="3" cellspacing="5" cellpadding="5">
					<tr>
						<th>文章标题</th>
						<th>作者</th>
						<th>上传日期</th>
					</tr>
					<%
						if (apvo != null) {
					%>
					<c:forEach items="${apvo.data}" var="e2" varStatus="status" begin="0">
						<tr>
							<td><a href="javascript:return void(0)"
								onclick="tonext5(${e2.ID})">${e2.title}</a></td>
							<td align="center">${e2.author}</td>
							<td>${e2.date}</td>
						</tr>
						
						<%-- <div id="f3">
      
			              <form action="${pageContext.request.contextPath}/ArticleServlet.do?method=commentTwo&ID=${e2.ID}&customer_id=${custvo.customer_id}" method="post">
			                <textarea type="text" style="width:400px;height:150px;overflow-x:visible;overflow-y:visible;resize:none" name="comment" id="comment"></textarea>
		                    <input type="submit" id="f6" value="发表评论" />
			              </form>
		                </div> --%>
					</c:forEach>
					<%
						}
					%>

				</table>
			</div>
			<!-- 显示文章内容 -->
			<div id="f9"></div>

			<%-- <%
				if (avo != null) {
			%>
			${avo.content }
			<%
				}
			%> --%>

		</div>


        <br/>
		<div id="f3">
      
			<form action="${pageContext.request.contextPath}/ArticleServlet.do?method=commentTwo&customer_id=${custvo.customer_id}" method="post" id="f11">
			<textarea type="text" style="width:400px;height:150px;overflow-x:visible;overflow-y:visible;resize:none" name="comment" id="comment"></textarea>
			
			<input type="button" id="f6" value="发表评论"/>
			</form>
		</div>
		<div class="f7" id="f7"></div>


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最新评论
		<!--  <input type="button" id="f5" value="" /> -->
		<div class="f4" id="f4"></div>
	</div>

	<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>