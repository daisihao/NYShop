<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="../../include/header.jsp"%>



<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>黄师图书交易系统</title>
<link href="${pageContext.request.contextPath}/styles/user/order_style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/user/city_jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/user/city.min.js"></script>


<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/user/con_form.js"></script>

</head>
<body>
	<div id="container">
		<!--上面头部分-->


		<!--中间内容部分-->
		<div id="content">
			<form method="post"	
				action="${pageContext.request.contextPath}/UserServlet.do?method=006&&customer_id=${custvo.customer_id}">
				<div class="flowBox">
					<h6>
						<span>完善用户信息</span>
					</h6>
					

					<table class="table" id="table01">


						<tr>
							<td class="td1"><b class="ftx04">*&nbsp;</b>真实姓名：</td>
							<td><input name="realname" type="text" class="inputBg"
								id="realname" value="" onfocus="consignee_0GetFocus()"
								onblur="consignee_0LoseFocus()" /> <span id="consignee_1">至少由2个汉字组成</span>
							</td>
						</tr>

						<tr class="tr1">
							<td class="td1"><b class="ftx04">*&nbsp;</b>手机：</td>
							<td><input name="mobile" type="text" class="inputBg"
								id="mobile" value="" onfocus="mobile_0GetFocus()"
								onblur="mobile_0LoseFocus()" /> <span id="mobile_1">请正确填写手机号</span></td>
						</tr>


						<tr>
							<td class="td1">家庭电话：</td>
							<td><input name="telphone" type="text" class="inputBg" id="telphone"
								value="" onfocus="tel_0GetFocus()" onblur="tel_0LoseFocus()" /></td>
						</tr>


						<tr class="tr1">
							<td class="td1">电子邮件地址：</td>
							<td><input name="email" type="text" class="inputBg"
								id="email" value="" onfocus="emailGetFocus()"
								onblur="emailLoseFocus()" /> <span id="email_1">请正确填写email地址</span></td>
						</tr>



						<tr>
							<td class="td1">QQ：</td>
							<td><input name="qq" type="text" class="inputBg"
								id="qq" value="" onfocus="best_time_0GetFocus()"
								onblur="best_time_0LoseFocus()" /></td>
						</tr>



						<tr class="tr1">
							<td class="td2"><input type="submit" class="submit"
								onclick="return check(this.form)" value="保存用户信息"></td>
						</tr>
						
						
						<script type="text/javascript">
						
							function check(form) {
								var value2=document.getElementById("mobile").value;
								var reg2=/^[1][0-9]{10}$/;								
								var value3=document.getElementById("email").value;
								var reg3=/^(\w-*\.*)+@(\w-?)+(\.\w{2,})+$/;
								
								if(!reg3.test(value3)){
									alert("请填写正确的邮箱!");
									return false;
								}
							
								if (!reg2.test(value2)) {
									alert("请填写正确的手机号!");
									//form.mobile.mobile_0GetFocus();
									return false;
								} 
								return true;
							}

							/* alter("请仔细检查您的收货人信息后再次提交！");
							var reg=/^[\u4e00-\u9fa5]{2,}$/;
							var reg1=/^[1][0-9]{10}$/;
							if($("#cho_Area").val()=="请选择地区"||!reg.test($("#consignee_0").val())||
									$("address_0").val()==""||!reg1.test($("mobile_0").val())){
								alter("请仔细检查您的收货人信息后再次提交！");
								return false;
							}else{
								$('form').submit();
							} */
						</script>
					</table>
				</div>
			</form>
		</div>
		<!--下面尾部分-->

		<!-- <div class="footer_bg" style="clear: both">
			<div class="wrap">
				<div class="footer">
					start grids_of_4
					<div class="grids_of_4">
						<div class="grid1_of_4">
							<h4>帮助支持</h4>
							<ul class="f_nav">
								<li><a href="">alexis Hudson</a></li>
								<li><a href="">american apparel</a></li>
								<li><a href="">ben sherman</a></li>
							</ul>
						</div>
						<div class="grid1_of_4">
							<h4>客户投诉</h4>
							<ul class="f_nav">
								<li><a href="">alexis Hudson</a></li>
								<li><a href="">american apparel</a></li>
								<li><a href="">ben sherman</a></li>
							</ul>
						</div>
						<div class="grid1_of_4">
							<h4>关于我们</h4>
							<ul class="f_nav">
								<li><a href="">alexis Hudson</a></li>
								<li><a href="">american apparel</a></li>
								<li><a href="">ben sherman</a></li>
							</ul>
						</div>
						<div class="grid1_of_4">
							<h4>友情链接</h4>
							<ul class="f_nav">
								<li><a href="https://www.tmall.com/">天猫商城</a></li>
								<li><a href="http://www.jd.com/">京东商城</a></li>
								<li><a href="http://www.gome.com.cn/">国美在线</a></li>
							</ul>
						</div>
						<div class="clear"></div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- start footer -->
		<div class="footer_bg1">
			<div class="wrap">
				<div class="footer">
					<!-- scroll_top_btn -->
					<script type="text/javascript">
						$(document).ready(function() {

							var defaults = {
								containerID : 'toTop', // fading element id
								containerHoverID : 'toTopHover', // fading element hover id
								scrollSpeed : 1200,
								easingType : 'linear'
							};

							$().UItoTop({
								easingType : 'easeOutQuart'
							});

						});
					</script>
					<a href="#" id="toTop" style="display: block;"><span
						id="toTopHover" style="opacity: 1;"></span></a>
					<!--end scroll_top_btn -->
					<div class="copy">
						<p class="link">
							<a href="${pageContext.request.contextPath}/admin/login.jsp">Copyright</a>
							&copy; 2014-2015 南鱼队 版权所有，并保留所有权利。<a
								href="http://www.nanyu.com.cn/" target="_blank" title="南鱼商城">www.nanyu.com.cn</a>
						</p>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

