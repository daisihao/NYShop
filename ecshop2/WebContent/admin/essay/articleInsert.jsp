<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>新建文章</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="fontawesome-4.2.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="fontawesome-4.2.0/css/font-awesome-ie7.min.css"/>
    <link rel="stylesheet" type="text/css" href="css/wangEditor-1.1.0-min.css"/>
    <script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src='js/wangEditor-1.1.0-min.js'></script>
    <script type="text/javascript">

        $(function(){

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
  <form method="post" action="${pageContext.request.contextPath}/ArticleServlet.do?method=insertArticle">
	    <div>
	    文章标题：<input type="text" name="article_title" id="input1"/>
	    文章作者：<input type="text" name="article_author" id="input2" />
	    </div>
	    <div id='txtDiv' style='border:1px solid #cccccc; height:240px;'>
	    </div>

	    <div style='margin-top:10px;'>
	        <button id='btnHtml'>提交</button>
	        <textarea name="article_content" style='width:100%; height:100px; margin-top:10px;'></textarea>
	    </div>
    </form>
</body>
</html>