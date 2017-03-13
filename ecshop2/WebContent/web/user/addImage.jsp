<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/scripts/easyui/themes/icon.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/scripts/easyui/jquery.easyui.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更改用户图片</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		$("form").submit(function(e) {
			if ($('#file').val() == "") {
				e.preventDefault();
				alert("表单阻止提交了");

			}
		})
	})
</script>
<body>
	<form enctype="multipart/form-data" method="post"
		action="${pageContext.request.contextPath}/UserServlet.do?method=009"
		id="form">
		<p>
			<input type="file" name="image" id="file" />
		</p>
		<input type="submit" value="上传头像" id="Button1" />
	</form>
</body>
</html>