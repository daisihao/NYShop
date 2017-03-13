<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=utf-8" />
<!-- <link type="text/css" rel="stylesheet" href="../css/activity.css"> -->

<title>优惠活动</title>
</head>

<body>
	<jsp:include page="../../include/header.jsp"></jsp:include>

	<!--添加部分-->
	<div >
		<%-- <div>
				当前位置: <a href="${pageContext.request.contextPath }/IndexServlet.do">首页</a>
				<code>&gt;</code>
				活动列表
		</div> --%>
		<div style="margin-left:5%">当前位置:<a href="${pageContext.request.contextPath }/IndexServlet.do">首页</a>
				<code>&gt;</code>活动列表</div>
		<div id="search-right">
			<%-- <div style="padding: 15px 15px;">
				<form id="searchForm" name="searchForm" method="get"
					action="search.php" onSubmit="return checkSearchForm()">
					<img src="/images/admin/icon_search.gif" alt="search" />
					<select name="category" id="category"
						style="vertical-align: middle;">
						<option value="0">所有分类</option>
						<option value="6">手机</option>
						<option value="9">&nbsp;&nbsp;&nbsp;&nbsp;苹果</option>
						<option value="11">&nbsp;&nbsp;&nbsp;&nbsp;三星</option>
						<option value="7">&nbsp;&nbsp;&nbsp;&nbsp;华为</option>
						<option value="8">&nbsp;&nbsp;&nbsp;&nbsp;联想</option>
						<option value="1">手表</option>
						<option value="3">&nbsp;&nbsp;&nbsp;&nbsp;佳明</option>
						<option value="4">&nbsp;&nbsp;&nbsp;&nbsp;优者</option>
						<option value="5">&nbsp;&nbsp;&nbsp;&nbsp;郎技</option>
						<option value="2">&nbsp;&nbsp;&nbsp;&nbsp;Wtitech</option>
						<option value="12">键盘</option>
						<option value="13">&nbsp;&nbsp;&nbsp;&nbsp;得利</option>
						<option value="14">&nbsp;&nbsp;&nbsp;&nbsp;现代</option>
						<option value="15">&nbsp;&nbsp;&nbsp;&nbsp;炫光</option>
						<option value="16">&nbsp;&nbsp;&nbsp;&nbsp;微软</option>
					</select> <input name="keywords" class="textbox" type="text" id="keyword"
						value="" /> <input type="image" name="imageField"
						src="" /> <a href="${pageContext.request.contextPath }/index.jsp">高级搜索</a>
				</form>
			</div>
 --%>

			<!--分-->

				<div id="search-right" align="center">
					<table width="98%" height="160" border="0" bordercolor="#EEFFFF"
						align="center" class="activity-list">
						<tr>
							<th width="122" bgcolor="#FFFFFF">优惠活动名称：</th>
							<td colspan="3">7.1三星优惠活动</td>
						</tr>
						<tr>
							<th bgcolor="#FFFFFF">优惠开始时间：</th>
							<td width="181">2015-08-01 08:00</td>
							<th width="200">金额上限：</th>
							<td>10000.00</td>
						</tr>
						<tr>
							<th bgcolor="#FFFFFF">优惠结束时间：</th>
							<td>2015-0910-01 20:00</td>
							<th>金额下限：</th>
							<td width="226">500.00</td>
						</tr>
						<tr>
							<th bgcolor="#FFFFFF">优惠范围：</th>
							<td>以下品牌 :<br /> <a href="${pageContext.request.contextPath }/index.jsp" target="_blank">三星
									Galaxy S6 edge</a>
							</td>
							<th>享受优惠的会员等级：</th>
							<td>注册用户 vip</td>
						</tr>
						<tr>
							<th bgcolor="#FFFFFF">优惠方式：</th>
							<td colspan="3">享受价格折扣95.00%</td>
						</tr>
					</table>
				</div>
			

			<script type="text/javascript">
			<!--
				function checkSearchForm() {
					if (document.getElementById('keyword').value) {
						return true;
					} else {
						return false;
					}
				}
				-->
				<jsp:include page="../../include/footer.jsp"></jsp:include>
			</script>
		</div>
		</div>
</body>
</html>
