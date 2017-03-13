<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>找回密码</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/user/cs_regsitere1.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
<style type="text/css">

#apDiv5 {

	left: 25px;
	top: 15px;
	width: 71px;
	height: 22px;
	z-index: 5;
}
#apDiv6 {

	left: 20px;
	top: 61px;
	width: 724px;
	height: 103px;
	z-index: 6;
    margin: 0 auto 0 329px;
}
#apDiv7 {

	left: 21px;
	top: 183px;
	width: 724px;
	height: 284px;
	z-index: 7;
	margin: 0 auto 0 371px;
}
#apDiv7 #tfield1{
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
#apDiv7 #tfield2{
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
#apDiv7 #butt1{
	width: 100px;
	height: 30px;
}
#apDiv8 {

	left: 235px;
	top: 134px;
	width: 784px;
	height: 515px;

}
</style>
<script type="text/javascript">
$(function(){
	$("#au3").click(function(e){
		if($("#tfield1").val()==""||$("#tfield2").val()==""){
			return false;
		}
		
	});
	$("#tfield1").focus(function(){
		$(this).css('border','1px solid green');
		$("#cs_masg1").html("密码长度不能小于6！").css({'color':'green','font-size':'10px'});
	}).blur(function(){
		var exp2=/^.{6,12}$/
			var b=exp2.test($(this).val())
			if(!b){
			$("#cs_masg1").html("您设置的密码不符合要求！").css({'color':'red','font-size':'10px'});
			$(this).css('border','1px solid red');
			}else{
				$("#cs_masg1").html("&radic;").css('color','green');
			}
		});
	$("#tfield2").focus(function(){
		$(this).css('border','1px solid green');
	}).keyup(function(event){
		
		    var f=$("#tfield1").val()
		   
			var f2=$("#tfield2").val()
			
			if(f!=f2){
				
				$("#cs_masg2").html("您输入的密码不一致！").css({'color':'red','font-size':'10px'});
			
			}else{
				$("#cs_masg2").html("&radic;").css('color','green');
				$("#butt1").removeAttr('disabled')
			}
	});
	$("#butt1").on('click',function(){
		$("#cs_newpwdxiu").submit();
	})
	
		
		
})
	

	


</script>

</head>

<body>
<jsp:include page="../../include/header.jsp"></jsp:include>



<div id="apDiv8">
<div id="apDiv5">找回密码</div>
<div id="apDiv6"><img src="${pageContext.request.contextPath }/images/index/cs_refpwd_btt3.png" width="700" height="100" /></div>
<div id="apDiv7">
<form name="cs_newpwdxiu" id="cs_newpwdxiu" action="${pageContext.request.contextPath }/Servlet.do?method=newpwdxiu" method="post">
<table><tr>
<td height="92" class="t1">请重新设置密码：
</td>
<td>
  <label for="textfield"></label>
  <input type="password" name="cs_tfield1" id="tfield1" />
</td>
<td id=cs_masg1></td>
</tr>
<tr>
<td height="90" class="t1">请确认密码：
</td>
<td>
  <label for="textfield"></label>
  <input type="password" name="cs_tfield2" id="tfield2" />
</td>
<td id="cs_masg2"></td>
</tr>
<tr>
<td height="57">
</td>
<td><button  id="butt1" disabled="disabled">下一步</button>
</td>
</tr>
</table>
</form>
</div>
</div>
</body>


<jsp:include page="../../include/footer.jsp"></jsp:include>

</html>