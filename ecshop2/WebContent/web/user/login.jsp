<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/user/cs_regsitere1.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/styles/user/cs_login.css">
<script type="text/javascript" src="${pageContext.request.contextPath }/scripts/user/cs_login.js"></script>
<script type="text/javascript">function dd(obj){
	obj.style.cursor="pointer";
}
function ff(obj){
	obj.src="<%=request.getContextPath()%>/admin/yzm.jsp?v="+new Date().getTime();
}
$(function(){
	$("#submit").click(function(e){
		if($("#username").val()==""||$("#pwd").val()==""){
			return false;
		}
	});
	$("#username").blur(function(e){

			var _d={username:$('#username').val()};
			
			$.post("${pageContext.request.contextPath }/Servlet.do?method=cutsrlongin&t="+Math.random(),_d,function(e){
				if(e==1){
				$("#magss").text("该用不存在，请注册！").css({'color':'red','font-size':'14px'});
				}else{
					$("#magss").text("");
				}
				});
	
	});
})

</script>
<title>用户登录</title>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
  <div id="cs_login_comer1">
  <div id="cs_login_nei">
  <div id="cs_login_comer2">
  <span id="cs_login_span1">会员登录</span>
  </div>
  <div id="cs_login_tble1">
  <form  name="cs_formi1" action="${pageContext.request.contextPath }/Servlet.do?method=longin" method="post">
  <table id="tabl1">
  <tr><td><input type="text"  class="cs_login_tble1_tf1"  id="username" name="username" placeholder="用户名"/></td>
  <td id=magss></td>
  </tr>
   <tr><td><input type="password"  class="cs_login_tble1_tf1"  id="pwd" name="pwd" placeholder="密码"/></td></tr>
   </table>

   <table id="tabl2">
   <tr>
    <th><input type="text"  id="cs_login_tble1_tf3"  name="yzmwt" placeholder="验证码"/></th>
    <th id="cs_logon_tble_span1">
  
   <img alt="" src="${pageContext.request.contextPath }/admin/yzm.jsp" onmouseover="dd(this)" onclick="ff(this)"> 
  </th>
    </tr>
    </table>
    <table id="tabl2">
    <tr><th>
    <a  id="submit" href="javascript:cs_formi1.submit()" >
    <img  id="imgbennt" src="${pageContext.request.contextPath }/images/index/cs_login_bt2.png" />
    </a>
    </th>
    
    <th id="cs_logon_tble_span2" "><a href="${pageContext.request.contextPath }/web/user/retrievepassword1.jsp">您忘记密码了吗？</a></th>
    </tr>
   </table>
  
  </form>
  </div>
  </div>
  </div>
   
      
        
        <jsp:include page="../../include/footer.jsp"></jsp:include>
      
       
</body>
</html>