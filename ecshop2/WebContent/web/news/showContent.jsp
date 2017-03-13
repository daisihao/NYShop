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
<title>显示文章内容</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/styles/news/searchArticle.css">

<link href="${pageContext.request.contextPath}/styles/news/news.css" rel="stylesheet" >
<link href="<%=request.getContextPath()%>/styles/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
  
  /* $(function(){
	  $('#f7').load("${pageContext.request.contextPath }/ArticleServlet.do?method=searchArticles_web");
	  $('#f6').submit(function(){
		  $('#f7').load("${pageContext.request.contextPath }/ArticleServlet.do?method=search");
	  });
  }); */
</script>
</head>
<body>

<jsp:include page="../../include/header.jsp"></jsp:include>

<!-- 头部截止 -->
  <% ArticleVO avo=(ArticleVO)request.getAttribute("avo");%> 
  <% ArticlePageVO apvo=(ArticlePageVO)request.getAttribute("apvo"); %>
  <% List<ArticleVO> list2=(List)request.getAttribute("list2");%>
  <% 
    List<Article_CommentVO> list1=(List)request.getAttribute("list1");
  %>
  
  <div class="f1">
   <div clsas="f2">
     <h3>文章列表</h3>
     <div class="f6">
  <form action="${pageContext.request.contextPath}/ArticleServlet.do?method=searchArticle_web" method="post" id="c3">
     请输入文章标题&nbsp;&nbsp;<input type="text" id="f5" name="title" />
    <input type="submit" id="f6" value="搜索"/>
    </div>
    <div id="f7"></div>
  </form>
  
   <%--  <%if(avo!=null){ %>
     <c:forEach items="${apvo.data}" var="e2">
   
       ${e2.content}
   
    </c:forEach>
    <%} %> --%>
    

  
  <%if(avo!=null){ %>
     ${avo.content }
    <%} %>
 </div>  
 
  <%-- 
  <%if(list2!=null){ %>
    <c:forEach items="${list2} var="e">
      ${e.content}
    </c:forEach>
  <%} %> --%>
  
 
<div class="f3">
用户评论
<br/>
<form action="${pageContext.request.contextPath}/Article_CommentServlet.do?method=commenttwo&customer_id=${custvo.customer_id}&ID=${avo.ID}" method="post">
<input type="text" name="comment" id="comment"/> 

<p><input type="submit" id="c4" value="发表评论"/></p>
</form>
</div>
<div class="f4">
最新评论<br/>
<form action="${pageContext.request.contextPath}/Article_CommentServlet.do?method=searchComment&ID=${avo.ID}" method="post">
  <input type="submit" value="查看评论"/>
</form>
  <table>
  <%if(list1!=null){ %>
  <c:forEach items="${list1 }" var="e">
    <tr><td>${e.customer_id}</td></tr>
    <tr><td>${e.article_comment_content}</td><td>${e.article_comment_time}</td></tr>
  </c:forEach>
  <%} %>
  </table>
</div>
</div>

<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>