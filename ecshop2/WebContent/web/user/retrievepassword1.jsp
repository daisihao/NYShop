<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/user/cs_regsitere1.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
<style type="text/css">

#apDiv5 {
	
	left: 19px;
	top: 9px;
	width: 65px;
	height: 19px;
	z-index: 5;
}
#apDiv6 {

	left: 30px;
	top: 47px;
	width: 737px;
	height: 100px;
	z-index: 6;
	margin: 0 auto 0 329px;
}
#apDiv7 {
	
	left: 30px;
	top: 157px;
	width: 751px;
	height: 277px;
	z-index: 7;
	margin: 0 auto 0 371px;
}
#apDiv7 #textfield{
	 width:238px;
    height:16px;
    padding:10px 25px 10px 5px;
    border:1px solid #cccccc;
    float:none;
    font-size:14px;
    font-family:arial,"宋体";
    color: #999;
    overflow:hidden;
	
}
#apDiv7 .t1{
	width:190px;text-align:right;font-size:14px;color:#999;padding-right:10px;
}

#apDiv7 #au3:link{text-decoration:none;
background-color: #FFF; 
	border: #666 1px solid;
	color: #000; 
	width: 100px;
	height: 30px;
	padding:10px;
	 }
#apDiv7 #au3:active:{color: red; } 
#apDiv7 #au3:visited {text-decoration:none;} 
#apDiv7 #au3:hover {text-decoration:none;}
#apDiv8 {

	left: 300px;
	top: 200px;
	width: 838px;
	height: 455px;
	z-index: 8;
	
}
</style>
<script type="text/javascript">

	$(function(){
		$("#tfield2").focus(function(){
			$(this).css('border','1px solid green');
		}).keyup(function(event){
			
		});
		
		$("#au3").click(function(e){
			if($("#textfield").val()==""){
				return false;
			}
		});
		
		$("#textfield").focus(function(){
			$(this).css('border','1px solid green');
		})

	})
	


</script>

</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
<div id="apDiv8">
<div id="apDiv5">找回密码</div>
<div id="apDiv6"><img src="${pageContext.request.contextPath }/images/index/cs_refpwd_btt1.png" width="700" height="100" /></div>
<div id="apDiv7">
<form  name="cs_retpwdcoust"  id="cs_retpwdcoust" action="${pageContext.request.contextPath }/Servlet.do?method=retpwdcoust" method="post">
<table width="681" height="192">
<tr>
<td width="199" height="75" class="t1">请输入用户名：</td>
<td width="300">
  <label for="textfield"></label>
  <input type="text" name="textfield" id="textfield" />
</td>
<td id="magss" style="color:red  ">${magss}</td>
</tr>
<tr><td></td>
<td><a href="javascript:cs_retpwdcoust.submit()"id="au3">下一步</a></td>
</tr>
</table>
</form>
</div>
</div>
<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>