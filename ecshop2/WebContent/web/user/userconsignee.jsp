<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@include file="../../include/header.jsp"%>



<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上商城——图书系统</title>
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
				action="${pageContext.request.contextPath}/web/user/consignee.do?method=usersubmit">
				<div class="flowBox">
					<h6>
						<span>请填写您的收货人信息</span>
					</h6>
					<div class="infolist">
						<lable>
						<b class="ftx04">*&nbsp;</b>所在地：</lable>
						<div class="liststyle">
							<span id="Province"> <i>请选择省份</i>
								<ul>
									<li><a href="javascript:void(0)" alt="请选择省份">请选择省份</a></li>
								</ul> <input type="hidden" id="cho_Province" name="cho_Province" value="请选择省份"></span>
							<span id="City"> <i>请选择城市</i>
								<ul>
									<li><a href="javascript:void(0)" alt="请选择城市">请选择城市</a></li>
								</ul> <input type="hidden" id="cho_City" name="cho_City" value="请选择城市"></span> <span
								id="Area"> <i>请选择地区</i>
								<ul>
									<li><a href="javascript:void(0)" alt="请选择地区">请选择地区</a></li>
								</ul> <input type="hidden" id="cho_Area" name="cho_Area" value="请选择地区"></span>
						</div>
					</div>

					<table class="table" id="table01">

						<tr class="tr1">
							<td class="td1"><b class="ftx04">*&nbsp;</b>详细地址：</td>
							<td><input name="address" type="text" class="inputBg"
								id="address_0" value="" onfocus="address_0GetFocus()"
								onblur="address_0LoseFocus()" /> <span id="address_1">请正确填写详细地址</span></td>

						</tr>


						<tr>
							<td class="td1"><b class="ftx04">*&nbsp;</b>收货人姓名：</td>
							<td><input name="consignee" type="text" class="inputBg"
								id="consignee_0" value="" onfocus="consignee_0GetFocus()"
								onblur="consignee_0LoseFocus()" /> <span id="consignee_1">至少由2个汉字组成</span>
							</td>
						</tr>

						<tr class="tr1">
							<td class="td1"><b class="ftx04">*&nbsp;</b>手机：</td>
							<td><input name="mobile" type="text" class="inputBg"
								id="mobile_0" value="" onfocus="mobile_0GetFocus()"
								onblur="mobile_0LoseFocus()" /> <span id="mobile_1">请正确填写手机号</span></td>
						</tr>


						<tr>
							<td class="td1">邮政编码：</td>
							<td><input name="zipcode" type="text" class="inputBg"
								id="zipcode_0" value="" onfocus="zipcode_0GetFocus()"
								onblur="zipcode_0LoseFocus()" /> <span id="zipcode_1">请正确填写邮政编码</span></td>
						</tr>


						<tr class="tr1">
							<td class="td1">电子邮件地址：</td>
							<td><input name="email" type="text" class="inputBg"
								id="email_0" value="" onfocus="email_0GetFocus()"
								onblur="email_0LoseFocus()" /> <span id="email_1">请正确填写email地址</span></td>
						</tr>


						<tr>
							<td class="td1">电话：</td>
							<td><input name="tel" type="text" class="inputBg" id="tel_0"
								value="" onfocus="tel_0GetFocus()" onblur="tel_0LoseFocus()" /></td>
						</tr>

						<tr class="tr1">
							<td class="td1">标志建筑：</td>
							<td><input name="sign_building" type="text" class="inputBg"
								id="sign_building_0" value=""
								onfocus="sign_building_0GetFocus()"
								onblur="sign_building_0LoseFocus()" /></td>

						</tr>


						<tr>
							<td class="td1">最佳送货时间：</td>
							<td><input name="best_time" type="text" class="inputBg"
								id="best_time_0" value="" onfocus="best_time_0GetFocus()"
								onblur="best_time_0LoseFocus()" /></td>
						</tr>
						<tr class="tr1">
							<td class="td2"><input type="submit" class="submit"
								onclick="return check(this.form)" value="保存配送地址"></td>
						</tr>
						<script type="text/javascript">
						
							function check(form) {
								var value1=document.getElementById("consignee_0").value;
								var reg1=/^[\u4e00-\u9fa5]{2,}$/;
								var value2=document.getElementById("mobile_0").value;
								var reg2=/^[1][0-9]{10}$/;
								if (form.cho_Area.value == '请选择地区') {
									alert("请选择地区!");
									return false;
								}
								if (form.address.value == '') {
									alert("请输入详细收货地址!");
									//form.address.address_0GetFocus();
									return false;
								}
								if (!reg1.test(value1)) {
									alert("收货人姓名至少由两个汉字组成!");
									//form.consignee.consignee_0GetFocus();
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

		<%-- <div class="footer_bg" style="clear:both">
<div class="wrap">	
	<div class="footer">
		<!-- start grids_of_4 -->	
		<div class="grids_of_4">
			<div class="grid1_of_4">
				<h4>明星产品</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=3">你若安好,便是晴天</a></li>
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=1">民国最美女神</a></li>
					<li><a href="${pageContext.request.contextPath}/ProductServlet.do?productID=21">我与世界只差一个你</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>帮助支持</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/web/link/re.jsp">联系我们</a></li>
				</ul>
			</div>
			<div class="grid1_of_4">
				<h4>关于我们</h4>
				<ul class="f_nav">
					<li><a href="${pageContext.request.contextPath}/web/link/rel.jsp">项目介绍</a></li>
					
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
</div>	 --%>
<!-- start footer -->
<div class="footer_bg1">
<div class="wrap">
	<div class="footer">
		<!-- scroll_top_btn -->
	    <script type="text/javascript">
			$(document).ready(function() {
			
				var defaults = {
		  			containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
		 		};
				
				
				$().UItoTop({ easingType: 'easeOutQuart' });
				
			});
		</script>
		 <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
		<!--end scroll_top_btn -->
		<div class="copy">
			<p class="link"><a href="<%=request.getContextPath()%>/admin/login.jsp">Copyright</a> &copy; 2015-2016 游佳慧毕业设计，并保留所有权利。</p>
		</div>
		<div class="clear"></div>
	</div>
</div>
</div>
	</div>
</body>
</html>

