<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/scripts/easyui/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(function(){
	var current=1;
	var pageSize=10;
	var totalPage=0;
	$('#pre').hide();
	$('#searchButton').click(function(){
		$('#show').load("${pageContext.request.contextPath }/ArticleServlet.do?method=searchArticle",{'article_title':$('#article_title').val()});
	});
	$.post("${pageContext.request.contextPath }/ArticleServlet.do?method=searchAllArticle",{'current':current,'pageSize':pageSize},function(data){
		$('#show').html(data.articlelist);
		totalPage=data.totalPage;
		current=data.current;
		$('#msg').text("第"+current+"页,共"+totalPage+"页");
		if(totalPage==1){
			$('#next').hide();
		}
	});
	$('#pre').click(function(){
	$.post("${pageContext.request.contextPath }/ArticleServlet.do?method=searchAllArticle",{'current':current-1,'pageSize':pageSize},function(data){
		$('#show').html(data.articlelist);
		totalPage=data.totalPage;
		current=data.current;
		$('#msg').text("第"+current+"页,共"+totalPage+"页");
	if(current<=1){
		$('#pre').hide();
	}
	if(current<data.totalPage){
		 $('#next').show();
	 }
	});
	});
	$('#next').click(function(){
		$.post("${pageContext.request.contextPath }/ArticleServlet.do?method=searchAllArticle",{'current':current+1,'pageSize':pageSize},function(data){
			$('#show').html(data.articlelist);
			totalPage=data.totalPage;
			current=data.current;
			$('#msg').text("第"+current+"页,共"+totalPage+"页");
		 if(current>=2){
			$('#pre').show();
		}
		 if(current>=data.totalPage){
			 $('#next').hide();
		 }
		});
	});
	
});
</script>
<title>文章查询</title>
</head>
<body>
文章标题：<input type="text" id="article_title" name="article_title" /><input type="button" id="searchButton" value="搜索"/>
<div id="show"></div>
<div align="center">
<input type="button" id="pre" value="上一页"/>
<input type="button" id="next" value="下一页"/>
<span id="msg"></span>
</div>
</body>
</html>