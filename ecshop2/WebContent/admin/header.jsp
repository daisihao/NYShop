<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/admin/layout.css"/>
</head>
<body>
<div id="container">
	<div id="header">
    	<img src="<%=request.getContextPath()%>/images/admin/logo_bg.png"/>
        <span>欢迎<%=session.getAttribute("adminname")%>登录后台管理中心！</span>
        <table id="item">
            <tr>
                <td><a href="<%=request.getContextPath()%>/index.jsp" target="_parent">返回前台</a></td>
                <td><a href="#">个人设置</a></td>
                <td><a href="#">管理员留言</a></td>
                <td><a href="<%=request.getContextPath()%>/admin/login.jsp" target="_top">退出</a></td>
            </tr>
        </table>
        <div id="topdiv">
            <ul>
                <li><a href="<%=request.getContextPath()%>/admin/f3.jsp" target="mainFrame">起始页</a></li>
                <li><a href="<%=request.getContextPath()%>/AdminProductServlet.do?method=search" target="mainFrame">商品列表</a></li>
                <li><a href="<%=request.getContextPath()%>/orders.do?method=select" target="mainFrame">订单列表</a></li>
                <li><a href="<%=request.getContextPath()%>/admin/essay/Article.jsp" target="mainFrame">文章列表</a></li>
                <li><a href="#">会员管理</a></li>
                <li><a href="#">留言管理</a></li>
                <li><a href="#">推荐管理</a></li>
            </ul>
        </div>
         <div id="search">
            <select>
                <option>所有分类</option>
            </select>
            <input type="search"/>
            <a href="#" id="a1">搜索</a>
            <a href="#" id="a2">高级搜索</a>
        </div>
    </div>
 
</body>
</html>