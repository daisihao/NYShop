<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="../css/auction.css">

<title>拍卖活动</title>
</head>

<body>
<jsp:include page="../../include/header.jsp"></jsp:include>
    <!--头部分-->
<div id="content">
    	<!--设置左侧菜单栏-->
   
   <div class="blank5"></div>
   <div class="box">
   <div class="box_1">
    <h3><span style="margin:80px 100px">拍卖商品</span></h3>
    <div class="boxCenterList">
             <span style="margin:80px 100px; font-size:14px; line-height:36px;">当前没有拍卖活动</span>
      </div>
   </div>
  </div>
  <div class="blank5"></div>
  
<form name="selectPageForm" action="/68ecshop/auction.php" method="get">
<div id="pager">
  <span style="margin:80px 100px">总计 0 个记录，共0  页。 <a href="">第一页</a> <a href="">上一页</a> <a href="">下一页</a> <a href="">最末页</a> 
        <select name="page" id="page" onchange="selectPage(this)">
        </select>
        </span>
</div>
</form>
 
  
<jsp:include page="../../include/footer.jsp"></jsp:include>
 
</body>
</html>
