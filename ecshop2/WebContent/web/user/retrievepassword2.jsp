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
#apDiv7 #textfield1{
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
#apDiv7 #textfield2{
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
#apDiv7 #email{
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

#apDiv7 #au4:link{text-decoration:none;
background-color: #FFF; 
	border: #666 1px solid;
	color: #000; 
	height: 40px;
	padding:5px; }
#apDiv7 #au4:active:{color: red; } 
#apDiv7 #au4:visited {text-decoration:none;} 
#apDiv7 #au4:hover {text-decoration:none;}
#apDiv8 {
	left: 180px;
	top: 51px;
    width: 838px;
	height: 455px;


}
</style>
<script type="text/javascript">
$(function(){
	$("#au4").click(function(e){
		if($("#textfield2").val()==""){
			return false;
		}
	});
})

</script>

</head>

<body>
<jsp:include page="../../include/header.jsp"></jsp:include>


<div id="apDiv8">
<div id="apDiv5">找回密码</div>
<div id="apDiv6"><img src="${pageContext.request.contextPath }/images/index/cs_refpwd_btt2.png" width="700" height="100" /></div>
<div id="apDiv7">
<form name="cs_retyan" action="${pageContext.request.contextPath }/Servlet.do?method=retyan" method="post">
<table width="681" height="192"><tr>
<td width="199" height="75" class="t1">密保问题：</td>
<td width="470">
  <label for="textfield"></label>
  <input type="text" name="cs_textfield1" id="textfield1"   value="${xcvo.pwd_ques}"  readonly="readonly"/>
</td>
<td></td>
</tr>
<tr>
<td height="74" class="t1">答案：</td>
<td>
  <label for="textfield"></label>
  <input type="text" name="cs_textfield2" id="textfield2" />
 </td>
 <tr>
 <td></td>
 <td style="size: 10px; color:red " ><a href="${pageContext.request.contextPath }/web/user/password.jsp" style="size: 8px; color:red ">忘记答案了吗？点击邮箱找回</a></td>
 </tr>

</tr>

<td height="33" ></td>

<td>
  <a href="javascript:cs_retyan.submit()"id="au4">下一步</a></td>
</tr>
</table>
</form>
</div>
</div>
</body>


<jsp:include page="../../include/footer.jsp"></jsp:include>

</html>