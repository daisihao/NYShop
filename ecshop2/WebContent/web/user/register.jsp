<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/user/cs_regsitere1.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }">
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/user/cs_registere2.js"></script>
<title>用户注册</title>
<script type="text/javascript" >
$(document).ready(function(){
$("#cs_regsiter_content_nei_table_td_tf1").focus(function(){
		$(this).css('border','1px solid green');
		
		$("#cs_regsiter_content_nei_table_ursemag1").html("请输入6-18个由字母、数字、下划线组成的字符！").css({'color':'green','font-size':'14px'});
	}).blur(function(e){
		var exp1=/^\w{6,18}$/
		var b=$(this).val()
		var a=exp1.test(b)
		if(a){
			var _d={cs_regsiter_content_nei_table_td_tfcuut:$('#cs_regsiter_content_nei_table_td_tf1').val()};
			$.post("${pageContext.request.contextPath }/Servlet.do?method=regsach&t="+Math.random(),_d,function(e){
				if(e==1){
					$("#cs_regsiter_content_nei_table_ursemag1").text("此用户名已存在，请更换!").css({'color':'red','font-size':'14px'});
				}else{
					$("#cs_regsiter_content_nei_table_ursemag1").html("&radic;").css({'color':'green','font-size':'14px'});
				}
				
				});
		}else{
			
		
			$("#cs_regsiter_content_nei_table_ursemag1").html("用户名不符合要求！").css({'color':'red','font-size':'14px'});
			$(this).css('border','1px solid red');
		}
	});
$("#email").focus(function(){
	$(this).css('border','1px solid green');
	
}).blur(function(){
	var exp6=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var g=exp6.test($(this).val());
	if(!g){
	$("#cs_regsiter_content_table_ursemag6r").html("无效邮箱请正确输入！").css({'color':'red','font-size':'14px'});
	$(this).css('border','1px solid red');
	}else{
		$("#cs_regsiter_content_table_ursemag6r").html("&radic;").css({'color':'green','font-size':'14px'});
	}
});
});




	</script>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
    <div id="cs_regsiter_content">
    <div id="cs_regsiter_content_nei">
    <div id="cs_regsiter_nei_dv1">欢迎注册</div>
    <div id="cs_regsiter_content_nei_dv2">
    <form  name="cs_fcyue" action="${pageContext.request.contextPath }/Servlet.do?method=reg" method="post">
    <table>
    
    <tr class="cs_regsiter_content_nei_tr" >
    <td class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>用户名：</td>
    <td><input type="text" class="cs_regsiter_content_nei_inp" name="cs_regsiter_content_nei_table_td_tfcuut" id="cs_regsiter_content_nei_table_td_tf1" /></td>
    <td  class="cs_table_magstd" id="cs_regsiter_content_nei_table_ursemag1"></td>
    </tr>
    
     <tr class="cs_regsiter_content_nei_tr">
    <td  class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>请设置密码：</td>
    <td><input type="password" class="cs_regsiter_content_nei_inp"name="cs_regsiter_content_nei_table_td_tf2" id="cs_regsiter_content_nei_table_td_tf2" /></td>
    <td class="cs_table_magstd" id="cs_regsiter_content_nei_table_ursemag2"></td>
    </tr>
    
    <tr class="cs_regsiter_content_nei_tr">
    <td  class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>请确认密码：</td>
    <td><input type="password" class="cs_regsiter_content_nei_inp" name="cs_regsiter_content_table_td_tf3r" id="cs_regsiter_content_table_td_tf3r" /></td>
    <td class="cs_table_magstd" id="cs_regsiter_content_table_ursemag3r"></td>
    </tr>
    
    <tr class="cs_regsiter_content_nei_tr">
    <td  class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>密保问题：</td>
    <td><input type="text" class="cs_regsiter_content_nei_inp" name="cs_regsiter_content_table_td_tf4r" id="cs_regsiter_content_table_td_tf4r" /></td>
    <td class="cs_table_magstd" id="cs_regsiter_content_table_ursemag4r"></td>
    </tr>
    
     <tr class="cs_regsiter_content_nei_tr">
    <td  class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>密保答案：</td>
    <td><input type="text" class="cs_regsiter_content_nei_inp" name="cs_regsiter_content_nei_table_td_tf5" id="cs_regsiter_content_nei_table_td_tf5" /></td>
    <td class="cs_table_magstd" id="cs_regsiter_content_table_ursemag5r"></td>
    </tr>
     <tr class="cs_regsiter_content_nei_tr">
    <td  class="cs_regsiter_content_nei_td"><b class="cs_regsiter_td_b">*</b>请设置安全邮箱：</td>
    <td><input type="text" class="cs_regsiter_content_nei_inp" name="email" id="email" /></td>
    <td class="cs_table_magstd" id="cs_regsiter_content_table_ursemag6r"></td>
    </tr>
    
    <tr class="cs_regsiter_content_nei_tr">
    <td></td>
    <td>
    <input type="checkbox"  name="cs_regsiter_checkbox" id="cs_regsiter_checkbox" checked="checked" />
    <label style="color:#000" for="checkbox">我已阅读并同意</label>
     <a href="#" id="cs_regsiter_content_nei_table_td_a2">《用户协议》</a>
    </td>
    <td></td>
    </tr>
    
     
    <tr>
    <td></td>
    <td><a href="javascript:cs_fcyue.submit()"><img src="<%=request.getContextPath()%>/images/index/cs_regsite_bt1.png" /></a></td>
    <td></td>
    </tr>
    </table>
    </form>
    </div>
    </div>
    </div>
    <jsp:include page="../../include/footer.jsp"></jsp:include>


</body>
</html>