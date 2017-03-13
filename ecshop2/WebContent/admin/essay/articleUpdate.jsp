<%@page import="edu.hgsf.nanyu.view.ArticleVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>修改文章</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="fontawesome-4.2.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="fontawesome-4.2.0/css/font-awesome-ie7.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/wangEditor-1.1.0-min.css"/>
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src='js/wangEditor-1.1.0-min.js'></script>
    <script type="text/javascript">

        $(function(){
        	$('#show').hide();
        	$('#commit').hide();
        	$('#input0').hide();
        	var s=window.location.search;
        	var str=s.split("=");
        	var article_id=str[1];
        	/* $('#show').load("${pageContext.request.contextPath }/ArticleServlet.do?method=loadArticle",{'article_id':article_id},function(data){
        		var article=data.split(",%");
        		var article_id=article[0];
        		var article_title=article[1];
        		var article_author=article[2];
        		var article_content=article[3];
        		var article_id_=article_id.split(":%");
        		var article_title_=article_title.split(":%");
        		var article_author_=article_author.split(":%");
        		var article_content_=article_content.split(":%");
        		var article_id_val=article_id_[1];
        		var article_title_val=article_title_[1];
        		var article_author_val=article_author_[1];
        		var article_content_val=article_content_[1];
        		$('#input0').val(article_id_val);
        		$('#input1').val(article_title_val);
        		$('#input2').val(article_author_val);
        		$editor.html(article_content_val);
        	}); */
        	$.post("${pageContext.request.contextPath }/ArticleServlet.do?method=loadArticle",{'article_id':article_id},function(data){
        		$('#input0').val(data.article_id);
        		$('#input1').val(data.article_title);
        		$('#input2').val(data.article_author);
        		$editor.html(data.article_content);
        	});
        	//一句话，即可把一个div 变为一个富文本框！o(∩_∩)o 
            var $editor = $('#txtDiv').wangEditor();
            $('textarea').hide();
            //监听按钮事件
            $('#btnHtml').click(function(e){
                  $('textarea').val($editor.html());
                  if($('#input1').val() ==""){
              		alert('文章标题不能为空！');
              		return false;
              	}
              	if($('#input2').val() ==""){
              		alert('文章作者不能为空！');
              		return false;
              	} 
              	if($editor.text()==0) {
              		alert('文章内容不能为空！');
              		return false;
              	} 
                  $('form').submit();
            });
         
        });
    </script>
</head>
<body>
<div align="right"><a href="/ecshop2/admin/essay/Article.jsp">返回文章列表</a></div>
<div id="show"></div>
<div id="commit"></div>
  <form method="post" action="${pageContext.request.contextPath}/ArticleServlet.do?method=updateArticle">
	    <div>
	         <input type="text" name="article_id" id="input0"/>  
	    文章标题：<input type="text" name="article_title" id="input1"/>
	    文章作者：<input type="text" name="article_author" id="input2"/>
	    </div>
	    <div id='txtDiv' style='border:1px solid #cccccc; height:400px;'>
	    </div>

	    <div style='margin-top:10px;'>
	        <button id='btnHtml'>提交</button>
	        <textarea name="article_content" style='width:100%; height:100px; margin-top:10px;'></textarea>
	    </div>
    </form>
</body>
</html>