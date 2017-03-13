<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>管理中心 - 添加新商品</title>
<meta name="robots" content="noindex, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<%=request.getContextPath()%>/styles/admin/general.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/styles/admin/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/transport.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/common.js"></script>
<script language="JavaScript">
<!--
// 这里把JS用到的所有语言都赋值到这里
var process_request = "正在处理您的请求...";
var todolist_caption = "记事本";
var todolist_autosave = "自动保存";
var todolist_save = "保存";
var todolist_clear = "清除";
var todolist_confirm_save = "是否将更改保存到记事本？";
var todolist_confirm_clear = "是否清空内容？";
var goods_name_not_null = "商品名称不能为空。";
var goods_cat_not_null = "商品分类必须选择。";
var category_cat_not_null = "分类名称不能为空";
var brand_cat_not_null = "品牌名称不能为空";
var goods_cat_not_leaf = "您选择的商品分类不是底级分类，请选择底级分类。";
var shop_price_not_null = "本店售价不能为空。";
var shop_price_not_number = "本店售价不是数值。";
var select_please = "请选择...";
var button_add = "添加";
var button_del = "删除";
var spec_value_not_null = "规格不能为空";
var spec_price_not_number = "加价不是数字";
var market_price_not_number = "市场价格不是数字";
var goods_number_not_int = "商品库存不是整数";
var warn_number_not_int = "库存警告不是整数";
var promote_not_lt = "促销开始日期不能大于结束日期";
var promote_start_not_null = "促销开始时间不能为空";
var promote_end_not_null = "促销结束时间不能为空";
var drop_img_confirm = "您确实要删除该图片吗？";
var batch_no_on_sale = "您确实要将选定的商品下架吗？";
var batch_trash_confirm = "您确实要把选中的商品放入回收站吗？";
var go_category_page = "本页数据将丢失，确认要去商品分类页添加分类吗？";
var go_brand_page = "本页数据将丢失，确认要去商品品牌页添加品牌吗？";
var volume_num_not_null = "请输入优惠数量";
var volume_num_not_number = "优惠数量不是数字";
var volume_price_not_null = "请输入优惠价格";
var volume_price_not_number = "优惠价格不是数字";
var cancel_color = "无样式";
//-->
</script>
</head>
<body>

	<h1>
		<span class="action-span"><a href="<%=request.getContextPath()%>/AdminProductServlet.do?method=search">商品列表</a></span>
		<span class="action-span1">NANYUSHOP
				管理中心</span><span id="search_id" class="action-span1"> - 添加新商品 </span>
		<div style="clear: both"></div>
	</h1>
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/js/utils.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/selectzone.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin/colorselector.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/scripts/admin//calendar.php?lang="></script>
	<link href="<%=request.getContextPath()%>/styles/admin/calendar/calendar.css" rel="stylesheet"
		type="text/css" />


	<!-- start goods form -->
	<div class="tab-div">
		<!-- tab bar -->
		<div id="tabbar-div">
			<p>
				<span class="tab-front" id="general-tab">通用信息</span>

			</p>
		</div>

		<!-- tab body -->
		<div id="tabbody-div">
			<form enctype="multipart/form-data" action="<%=request.getContextPath()%>/AdminProductServlet.do?method=insert" method="post"
				>
				<input type="hidden" name="MAX_FILE_SIZE" value="2097152" />
				<table width="90%" id="general-table" align="center">
					<tr>
						<td class="label" >商品名称：</td>
						<td><input type="text" name="productname" value=""
							style="float: left; color:;" size="30" />
						<div style="background-color:; float: left; margin-left: 2px;"
								id="font_color" onclick="ColorSelecter.Show(this);">
								<img
									src="<%=request.getContextPath()%>/images/admin/color_selecter.gif"
									style="margin-top: -1px;" />
							</div>
							<input type="hidden" id="goods_name_color"
							name="goods_name_color" value="" />&nbsp; <select
							name="goods_name_style">
								<option value="">字体样式</option>
								<option value="strong">加粗</option>
								<option value="em">斜体</option>
								<option value="u">下划线</option>
								<option value="strike">删除线</option>
						</select> <span class="require-field">*</span></td>
					</tr>
					<tr>
						<td class="label"><a
							href="javascript:showNotice('noticeGoodsSN');" title="点击此处查看提示信息"><img
								src="<%=request.getContextPath()%>/images/admin/notice.gif"
								width="16" height="16" border="0" alt="点击此处查看提示信息"></a> 商品货号：
						</td>
						<td><input type="text" name="productcode"  size="20"
							 /> </td>
					</tr>
					<tr>
						<td class="label">商品分类：</td>
						<td><select name="productcatalogid" onchange="hideCatDiv()"><option
									value="0">请选择...</option>
								<option value="100">产品</option>
								<option value="101">正在热销</option>
								<option value="102">出版图书</option>
								<option value="103">网络图书</option>
								<!-- <option value="104">104</option>
								<option value="105">105</option>
								<option value="106">106</option>
								<option value="107">107</option>
								<option value="120">120</option> -->
								</select>	
							</td>
					</tr>
					<tr>
						<td class="label">颜色：</td>
						<td><input type="text" name="productcolor" /></td>
					</tr>
					<tr>
						<td class="label">产地：</td>
						<td><input type="text" name="productmade" /></td>
					</tr>
					<tr>
						<td class="label">标题：</td>
						<td><input type="text" name="producttitle" /><span class="require-field">*</span></td>
					</tr>
					<tr>
						<td class="label">商品简介：</td>
						<td><textarea name="productprofile"  rows="4" cols="26" style="resize:none"></textarea>
						<span class="require-field">*</span></td>
					</tr>
					<tr>
						<td class="label">选择供货商：</td>
						<td><select name="productsupplier" id="suppliers_id">
								<option value="南鱼商城">不指定供货商属于本店商品</option>
								<option value="北京供货商">北京供货商</option>
								<option value="上海供货商">上海供货商</option>
						</select></td>
					</tr>
					<tr>
						<td class="label">本店售价：</td>
						<td><input type="text" name="productprice" value="0" size="20"
							 /><span class="require-field">*</span></td>
					</tr>


					<tr>
						<td class="label">是否上架：</td>
						<td><input type="text" name="productup" value="1"
							size="20" /> <span class="require-field">*</span>
							</td>
					</tr>
				
					<tr>
						<td class="label"><label for="is_promote"><input
								type="checkbox" id="is_promote" name="" value="1"
								onclick="handlePromote(this.checked);" /> 库存：</label></td>
						<td id="promote_3"><input type="text" 
							name="productstore" value="0" size="20" /></td>
					</tr>
					<tr>
						
						<td class="label">上传商品图片：</td>
						<td><input type="file" name="imgproduct" size="35" /> <img
							src="<%=request.getContextPath()%>/images/admin/no.gif" /> <br />
						<input type="text" size="40" value="商品图片外部URL"
							style="color: #aaa;"
							onfocus="if (this.value == '商品图片外部URL'){this.value='http://';this.style.color='#000';}"
							name="imgurl" /></td>
					</tr>
				</table>
				<div class="button-div">
					<input type="hidden" name="goods_id" value="0" /> <input
						type="submit" value=" 确定 "  />
					<input type="reset" value=" 重置 " class="button" />
				</div>
				<input type="hidden" name="act" value="insert" />
			</form>
		</div>
	</div>
	
	<div id="footer">
		Gzip 已禁用，内存占用 3.193 MB<br /> 版权所有 &copy;
		2014-2015上海商派网络科技有限公司，并保留所有权利。
	</div>
</body>
</html>