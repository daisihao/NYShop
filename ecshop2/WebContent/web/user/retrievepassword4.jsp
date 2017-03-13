<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">


#apDiv5 {

	left: 30px;
	top: 26px;
	width: 68px;
	height: 22px;
	z-index: 5;
}
#apDiv6 {
	left: 34px;
	top: 65px;
	width: 715px;
	height: 111px;
	
	margin: 0 auto 0 330px;
}

#apDiv8 {

	left: 178px;
	top: 400px;
	width: 341px;
	height: 35px;
	font-size: 24px;
	margin: 100px auto 0 500px;
}

</style>
</head>

<body>
<jsp:include page="../../include/header.jsp"></jsp:include>



<div id="apDiv9">
<div id="apDiv5">找回密码</div>
<div id="apDiv6"><img src="${pageContext.request.contextPath }/images/index/cs_refpwd_btt4.png" width="700" height="100" /></div>

<div id="apDiv8">密码设置完成，点击<a href="${pageContext.request.contextPath }/web/user/login.jsp">重新登录</a></div>
</div>
</body>


<jsp:include page="../../include/footer.jsp"></jsp:include>
</html>