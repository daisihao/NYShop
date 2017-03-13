<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/UserServlet.do?method=012" method="post">
		请输入您的账户名：<input type="text" id="account" name="account" >&nbsp;&nbsp;&nbsp;
		请输入安全邮箱：<input type="text" id="email" name="email">&nbsp;&nbsp;&nbsp;
		<input type="submit" value="点击发送邮件" />
	
	</form>
</body>
</html>