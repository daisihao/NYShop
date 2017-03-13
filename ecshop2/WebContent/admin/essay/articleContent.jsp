<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/scripts/easyui/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/scripts/easyui/locale/easyui-lang-zh_CN.js"></script>
<title>显示文章内容</title>
</head>
<body>
<div align="right"><a href="/ecshop2/admin/essay/Article.jsp">返回文章列表</a></div>
${avo.content }
<div align="right"><a href="/ecshop2/admin/essay/Article.jsp">返回文章列表</a></div>
</body>
</html>