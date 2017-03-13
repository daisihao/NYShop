<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户留言</title>
<style type="text/css">
#cs_message_nei {
	height: 800px;
	width: 811px;
}

#cs_message_nei_tu {
	width: 811px;
	left: 0px;
	top: 150px;
	margin: 0 auto 0 350px;
}

#cs_message_nei_ping {
	width: 811px;
	margin: 0 auto 0 350px;
}

#cs_message_nei_ji {
	left: 300px;
	top: 200px;
	width: 92px;
	height: 21px;
	z-index: 4;
	margin: 0 auto 0 350px;
}

#cs_message_nei_k {
	margin: 0 auto 0 330px;
}

#cs_message_nei_tu2 {
	left: 240px;
	top: 226px;
	width: 759px;
	height: 52px;
	z-index: 6;
}

#cs_message_nei_tb {
	left: 240px;
	top: 304px;
	width: 808px;
	height: 389px;
	z-index: 7;
	margin: 0 auto 0 300px;
}

#cs_message_nei_tb .tt1 {
	width: 190px;
	text-align: right;
	font-size: 14px;
	padding-right: 10px;
}

#apDiv1 {
	border: 1px solid #CCC;
}

#apDiv5 {
	border: 1px solid #CCC;
}

#apDiv8 {
	left: 59px;
	top: 4px;
	width: 1039px;
	height: 18px;
	z-index: 8;
}
</style>


</head>
<body>
	<jsp:include page="../../include/header.jsp"></jsp:include>

	<div id="cs_message_nei" style="margin-top: 5%">
		<div id="cs_message_nei_ping">
			[评论]&nbsp;&nbsp;nanyushop:评论了<a href="#">某某商品</a>(2015-6-10&nbsp;13:45:20)<br />
			很好，我很喜欢！<br />
			<hr style="border: 1px dashed #ccc" />
		</div>
		<div id="cs_message_nei_ji">总计1个记录</div>
		<div id="cs_message_nei_k"></div>
		<form>
			<div id="cs_message_nei_tb">
				<table>
					<tr>
						<td width="116" height="26" class="tt1">用户名：</td>
						<td width="325">匿名用户</td>
					</tr>
					<tr>
						<td height="42" class="tt1">电子邮件地址：</td>
						<td><label for="textfield"></label> <input type="text"
							name="textfield" id="textfield" /></td>
					</tr>
					<tr>
						<td height="33" class="tt1">留言类型：</td>
						<td><input type="radio" name="radio" id="radio" value="radio" />
							<label for="radio">留言</label> <input type="radio" name="radio2"
							id="radio2" value="radio" /> <label for="radio2">投诉</label> <input
							type="radio" name="radio3" id="radio3" value="radio" /> <label
							for="radio3">询问</label> <input type="radio" name="radio4"
							id="radio4" value="radio" /> <label for="radio4">售后</label> <input
							type="radio" name="radio5" id="radio5" value="radio" /> <label
							for="radio5">求购</label></td>
					</tr>
					<tr>
						<td height="33" class="tt1">主题：</td>
						<td><label for="textfield2"></label> <input type="text"
							name="textfield2" id="textfield2" /></td>
					</tr>
					<tr>
						<td height="37" class="tt1">验证码：</td>
						<td><label for="textfield3"></label> <input type="text"
							name="textfield3" id="textfield3" /> <img
							style="cursor: pointer; width: 100px; height: 26px;" alt="验证码" " />
						</td>
					</tr>
					<tr>
						<td height="112" class="tt1">留言内容：</td>
						<td><label for="textarea"></label> <textarea name="textarea"
								id="textarea" cols="80" rows="7"></textarea></td>
					</tr>
					<tr>
					<td><input type="button" value="提交"></td>
					</tr>
				</table>
			</div>
		</form>
	</div>


	<jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>