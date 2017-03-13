<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理中心 - 发货单列表 </title>
<meta name="robots" content="noindex, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="styles/general.css" rel="stylesheet" type="text/css" />
<link href="styles/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-color: #F4FFFF;
}
</style>
</head>

<body>
<table>
<h3>
  <div style="clear:both">
    <table width="1000" border="0" bordercolor="#F7FFFF">
      <tr>
        <td width="829"><a href="index.php?act=main">南鱼商城 管理中心</a> <span id="search_id">- 发货单列表</span></td>
      </tr>
    </table>
  </div>
</h3>
<script type="text/javascript" src="../js/utils.js"></script><script type="text/javascript" src="js/listtable.js"></script><!-- 订单搜索 -->
<script type="text/javascript" src="../js/utils.js"></script><script type="text/javascript" src="js/listtable.js"></script><!-- 订单搜索 -->
<div class="form-div">
  <form action="javascript:searchOrder()" name="searchForm">
    发货单流水号<input name="delivery_sn" type="text" id="delivery_sn" size="15">
    订单号<input name="order_sn" type="text" id="order_sn" size="15">
    收货人<input name="consignee" type="text" id="consignee" size="15">
    发货单状态    <select name="status" id="status">
      <option value="-1" selected="selected">请选择...</option>
      <option value="0">已发货</option><option value="1">退货</option><option value="2">正常</option>    </select>
    <input type="submit" value=" 搜索 " class="button" />
  </form>
</div> 


  

    <table width="1173" border="0" bordercolor="#F7FFFF">
  <tr>
    <td width="192" align="center" bgcolor="#D9ECFF"><input onclick="listTable.selectAll(this, 'delivery_id')" type="checkbox" />
    <a title="点击对列表排序" href="javascript:listTable.sort('delivery_sn', 'DESC'); ">发货单流水号</a></td>
    <td width="147" align="center" bgcolor="#D9ECFF"><a title="点击对列表排序" href="javascript:listTable.sort('order_sn', 'DESC'); ">订单号</a></td>
    <td width="207" align="center" bgcolor="#D9ECFF"><a title="点击对列表排序" href="javascript:listTable.sort('add_time', 'DESC'); ">下单时间</a></td>
    <td width="73" align="center" bgcolor="#D9ECFF"><a title="点击对列表排序" href="javascript:listTable.sort('add_time', 'DESC'); "></a><a title="点击对列表排序" href="javascript:listTable.sort('consignee', 'DESC'); ">收货人</a></td>
    <td width="199" align="center" bgcolor="#D9ECFF"><a title="点击对列表排序" href="javascript:listTable.sort('update_time', 'DESC'); ">发货时间</a></td>
    <td width="53" align="center" bgcolor="#D9ECFF">操作人</td>
    <td width="99" align="center" bgcolor="#D9ECFF">操作</td>
    
  </tr>
  <tr align="center" bgcolor="#FFFFFF">
    <td></td>
    <td><br /></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="invoice_list.jsp">查看</a> <a onclick="{if(confirm('您确定要删除吗？')){return true;}return false;}" href="order.php?act=operate&amp;remove_invoice=1&amp;delivery_id=3">移除</a></td>
   
  </tr>
  <tr align="center" bgcolor="#FFFFFF">
    <td></td>
    <td><br/></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="invoice_list.jsp">查看</a> <a onclick="{if(confirm('您确定要删除吗？')){return true;}return false;}" href="order.php?act=operate&amp;remove_invoice=1&amp;delivery_id=3">移除</a></td>
  
  </tr>
  <tr align="center" bgcolor="#FFFFFF">
    <td></td>
    <td><br /></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="invoice_list.jsp">查看</a> <a onclick="{if(confirm('您确定要删除吗？')){return true;}return false;}" href="order.php?act=operate&amp;remove_invoice=1&amp;delivery_id=3">移除</a></td>
   
  </tr>
  <tr align="center" bgcolor="#FFFFFF">
    <td height="20"></td>
    <td><br /></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td><a href="invoice_list.jsp">查看</a> <a onclick="{if(confirm('您确定要删除吗？')){return true;}return false;}" href="order.php?act=operate&amp;remove_invoice=1&amp;delivery_id=3">移除</a></td>
   
  </tr>
</table>

    <!-- 分页 -->
<table width="1172" cellspacing="0" id="page-table">
  <tr>
    <td width="1077" align="right" nowrap="true" bgcolor="#F0F0F0">
          <!-- $Id: page.htm 14216 2008-03-10 02:27:21Z testyang $ -->
            <div id="turn-page">
        总计  <span id="totalRecords">4</span>个记录分为 <span id="totalPages">1</span>
        页当前第 <span id="pageCurrent">1</span>
        页，每页 
        <input type='text' size='3' id='pageSize' value="15" onkeypress="return listTable.changePageSize(event)" />
        <span id="page-link">
          <a href="javascript:listTable.gotoPageFirst()">第一页</a>
          <a href="javascript:listTable.gotoPagePrev()">上一页</a>
          <a href="javascript:listTable.gotoPageNext()">下一页</a>
          <a href="javascript:listTable.gotoPageLast()">最末页</a>
          <select id="gotoPage" onchange="listTable.gotoPage(this.value)">
        <option value='1'>1</option>          </select>
        </span>
      </div>
    </td>
  </tr>

</table>
</table>

</body>
</html>
