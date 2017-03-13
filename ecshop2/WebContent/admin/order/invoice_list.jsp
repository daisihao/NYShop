<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<style type="text/css">
body {
	background-color: #F4FFFF;
}
</style>
</head>

<body>
<table width="802" height="30" border="0" bordercolor="#F7FFFF">
  <tr>
    <td width="781" height="30" align="left" bgcolor="#F4FFFF"><a href="index.php?act=main">南鱼商城 管理中心</a> <span id="search_id">- 发货单操作：查看      </span></td>
  </tr>
</table>
<table width="800" border="0" bordercolor="#F7FFFF">
  <tr>
    <td colspan="4" align="center" bgcolor="#D9ECFF">基本信息</td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="173"><div align="right"><strong>发货单流水号：</strong></div></td>
    <td width="174"></td>
    <td width="125"><div align="right"><strong>发货时间：</strong></div></td>
    <td width="300"></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>订单号：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>下单时间：</strong></div></td>
    <td></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>购货人：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>缺货处理：</strong></div></td>
    <td></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>配送方式：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>配送费用：</strong></div></td>
    <td></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>是否保价：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>保价费用：</strong></div></td>
    <td></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>发货单号：</strong></div></td>
    <td colspan="3"></td>
  </tr>
</table>
<table width="800" border="0" bordercolor="#F7FFFF">
  <tr>
    <td colspan="4" align="center" bgcolor="#D9ECFF">收货人信息</td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="173"><div align="right"><strong>收货人：</strong></div></td>
    <td width="170"></td>
    <td width="128"><div align="right"><strong>电子邮件：</strong></div></td>
    <td width="296"></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>地址：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>邮编：</strong></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>电话：</strong></div></td>
    <td></td>
    <td><div align="right"><strong>手机：</strong></div></td>
    <td></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><div align="right"><strong>标志性建筑：</strong></div></td>
    <td>&nbsp;</td>
    <td><div align="right"><strong>最佳送货时间：</strong></div></td>
    <td>&nbsp;</td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td height="23"><div align="right"><strong>客户给商家的留言：</strong></div></td>
    <td colspan="3">&nbsp;</td>
  </tr>
</table>
<table width="800" border="0" bordercolor="#F7FFFF">
  <tr>
    <td colspan="5" align="center" bgcolor="#D9ECFF">商品信息</td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td width="155"><div align="center"><strong>商品名称 [ 品牌 ]</strong></div></td>
    <td width="117"><div align="center"><strong>货号</strong></div></td>
    <td width="118"><div align="center"><strong>货品号</strong></div></td>
    <td width="124"><div align="center"><strong>属性</strong></div></td>
    <td width="259"><div align="center"><strong>发货数量</strong></div></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td align="center"></td>
    <td>&nbsp;</td>
    <td align="center"><div align="left"></div></td>
    <td>&nbsp;</td>
    <td align="center"></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="800" border="0" bordercolor="#F7FFFF">

  <tr>
    <td height="30" colspan="6" align="center" bgcolor="#D9ECFF">发货操作信息</td>
  </tr>
 
  <tr align="center" bgcolor="#D9ECFF">
    <td width="105" height="33">操作者：</td>
    <td width="107">操作时间</td>
    <td>订单状态</td>
    <td width="107">付款状态</td>
    <td width="108">发货状态</td>
    <td width="257"><table cellspacing="1" cellpadding="3">
      <tbody>
        <tr>
          <th bgcolor="#D9ECFF">备注</th>
        </tr>
      </tbody>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
