<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>消息中心</title>
<link href="/smc/webstatic/css/common.css" rel="stylesheet" type="text/css"/>
<link href="/smc/webstatic/css/page.css" rel="stylesheet" type="text/css"/>
<link href="/smc/webstatic/css/print.css" rel="stylesheet" type="text/css"/>
<link href="/smc/webstatic/css/message.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>

	<div class="right-section" style="margin-left:10%">
		<div id="noticeList" class="main-article">
			<div class="fixed-top">
				<ul class="tags clearfix">
					<li onclick="queryLimitAllNotice()" class="tag-on"><b>全部公告</b></li>
				</ul>
			</div>
			<!-- tab切换 start [[ -->
				<ul class="tags-field">
					<div id="allNotice" class="tag-field" style="display:block;">
					<!-- 消息列表 start [[ -->
					<div class="message-section"> 
						<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-24 10:11:44</span>
							<em>重要</em>
							【云台活动】818营销活动简介和费用承担说明
							</li>
							<li class="message-item-article">
			                 <p>818营销活动简介和费用承担说明</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
						</div>
					</div>
					<div class="message-item">
						<ul>
						<li class="message-item-title">
						<span class="r grey">2015-07-23 12:06:22</span>
							<em>重要</em>
							【违规通报】对商品抽检不合格商户的处罚公告
						</li>
						<li class="message-item-article">
			                 <p>对商品抽检不合格商户的处罚通知</p>
						</li>
						<li class="message-item-property">
						</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
							<span class="r grey">2015-07-21 17:47:26</span>
							【云台活动】​百货类目商家“好声音”活动公告
							</li>
							<li class="message-item-article">
			                 <p>​百货类目商家“好声音”活动公告</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
						<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-20 16:08:09</span>
							【商家服务】云钻全额抵扣-历史数据处理公告
							</li>
							<li class="message-item-article">
			                 <p>云钻全额抵扣-历史数据处理公告</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
						</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-20 11:44:44</span>
							【商家服务】关于规范商家维护发货时效的公告
							</li>
							<li class="message-item-article">
			    		             <p>关于规范商家维护发货时效的公告</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
						<li class="message-item-title">
						<span class="r grey">2015-07-17 17:59:36</span>
							【商家培训】【7.20-7.24直播课程】
						</li>
						<li class="message-item-article">
			                 <p>商户培训</p>
						</li>
						<li class="message-item-property">
						</li>
					</ul>
					</div>
					<div class="message-item">
						<ul>
						<li class="message-item-title">
						<span class="r grey">2015-07-17 16:04:35</span>
							【商家服务】关于企业版零钱宝自动转入规则变更的通知
						
						</li>
						<li class="message-item-article">
			                 <p>企业版零钱宝自动转入规则变更</p>
						</li>
						<li class="message-item-property">
						</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-16 09:44:32</span>
							<em>重要</em>
							【商家服务】消费云钻结算规则变更
						
						</li>
						<li class="message-item-article">
			                 <p>消费云钻结算规则变更</p>
						</li>
						<li class="message-item-property">
						</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
						<li class="message-item-title">
						<span class="r grey">2015-07-15 20:09:40</span>
							<em>重要</em>
							【云台活动】券维护通知
						
						</li>
						<li class="message-item-article">
			                 <p>7月25日-7月28日重新维护、券维护通知</p>
						</li>
						<li class="message-item-property">
						</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-15 19:36:54</span>
									<em>重要</em>
									【云台规则】关于南鱼联盟收费调整的公告
								
							</li>
							<li class="message-item-article">
					                 <p>南鱼联盟收费调整</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-15 16:30:52</span>
									【产品公告】商品系统升级通知
								
							</li>
							<li class="message-item-article">
					                 <p>商品系统升级、2015年7月15日晚23点至2015年7月16日早8点</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-15 10:37:29</span>
									<em>重要</em>
								【产品公告】退款异常通知
								
							</li>
							<li class="message-item-article">
					                 <p>手机银联退款异常、7月27日修复</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-14 14:32:24</span>
									【产品公告】测试数据易道消息公告
								
							</li>
							<li class="message-item-article">
					                 <p>test by 0714</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-13 19:27:57</span>
									<em>重要</em>
								【产品公告】关于云台商品系统升级的通知
								
							</li>
							<li class="message-item-article">
					                 <p>云台商品系统升级、商品管理下所有菜单将临时关闭</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-10 16:58:07</span>
									【商家培训】【7.13-7.17课程直播】
								
							</li>
							<li class="message-item-article">
					                 <p>商户培训</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-10 11:56:16</span>
									【产品公告】店铺二期开放公告
								
							</li>
							<li class="message-item-article">
					                 <p>店铺二期开放公告</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-10 11:39:51</span>
									<em>重要</em>
									【云台规则】无理由退换货规则变更公告
								
							</li>
							<li class="message-item-article">
					                 <p>无理由退换货规则变更公告</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-09 11:00:03</span>
									<em>重要</em>
									【产品公告】7月8日系统升级优化的通知
								
							</li>
							<li class="message-item-article">
					                 <p>7月8日系统升级优化的通知</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-09 00:48:50</span>
									<em>重要</em>
									【其他公告】苏宁帮客，火热招商中
								
							</li>
							<li class="message-item-article">
					                 <p>我们诚邀您的加入</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					<div class="message-item">
						<ul>
							<li class="message-item-title">
								<span class="r grey">2015-07-06 17:01:16</span>
									【商家服务】食品酒水及家居类目调整的通知及注意事项
								
							</li>
							<li class="message-item-article">
					                 <p>食品酒水及家居类目调整的通知及注意事项</p>
							</li>
							<li class="message-item-property">
							</li>
						</ul>
					</div>
					
				</div>
				</ul>
		</div>
	</div>
<script type="text/javascript">
function jumpPage(no,url){
    var pageCount = 0;
	pageCount = 7;
    if(no>pageCount){
    	no=pageCount;
    }
	var noticeClass = $('#noticeClass').val();
	var custNum = $('#custNum').val();
	var placeCode = $('#placeCode').val();
	ajaxInSameDomain(
		url,
		{"page":no,"pageSize":'20',"noticeClass":noticeClass,"custNum":custNum,"placeCode":placeCode},
		"POST",
		function(data){
			$("#allNotice").html(data);
			bgChange($('.message-item'));
		}
	);
}
</script>


<jsp:include page="../../include/footer.jsp"></jsp:include>
</body>
</html>