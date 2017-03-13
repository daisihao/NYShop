<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>黄师图书系统后台管理</title>
</head>
<frameset  rows="20%,*" frameborder="no">
   <frame noresize="noresize" src="<%=request.getContextPath()%>/admin/header.jsp">
   <frameset rows="*" cols="15%,*" frameborder="no">
      <frame noresize="noresize" src="<%=request.getContextPath()%>/admin/f2.jsp">
      <frame noresize="noresize" src="<%=request.getContextPath()%>/admin/f3.jsp" name="mainFrame">
   </frameset>
</frameset><noframes></noframes>      
<body>
</body>
</html>