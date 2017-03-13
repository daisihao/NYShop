<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员说明</title>
   <link rel="stylesheet" type="text/css" href="http://misc.360buyimg.com/lib/skin/2013/base.css" media="all"/>
    <link type="text/css" rel="stylesheet" href="http://misc.360buyimg.com/help/misc/skin/2014/helpcenter.css?v=20150724"/>
</head>
<body>
<jsp:include page="../../include/header.jsp"></jsp:include>

 <div class="tabs-01" id="all-ques-tab">
        <ul class="tab">
        <li id="ques_list_all" class="list-item">
       	 	<strong class="dk-line">
       	 		全部
       	 	</strong>
        </li>
                	        	<li class="list-item">
				<strong class="dk-line">
                   会员级别
				</strong>
        	</li>
        	        	
                	        	<li class="list-item">
				<strong class="dk-line">
                    企业用户
				</strong>
        	</li>
        	        	
                	        	<li class="list-item">
				<strong class="dk-line">
                    购物行为评级
				</strong>
        	</li>
        	        	
                	        	<li class="list-item">
				<strong class="dk-line">
                    成长值
				</strong>
        	</li>
        	        	
                </ul>
        <div class="tabcons">
          <div class="tabcon">
            <h4 class="help-tit-l2">问题知识列表</h4>
            <ul class="help_list">
              	              <li>
                      
	                  <b>·</b>
	                  成为企业用户需要哪些条件？（如何成为企业用户？）
	               
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  企业用户与个人用户有什么区别？
	              
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  企业用户购买是否可以享受优惠政策？
	              
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  企业用户介绍
	              
	              </li>
              	              <li>
                   
	                  <b>·</b>
	                  会员俱乐部在哪？
	            
	              </li>
              	              <li>
                    
	                  <b>·</b>
	                  会员级别介绍
	                
	              </li>
              	              <li>
                    
	                  <b>·</b>
	                  什么是购物行为评级？
	               
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  如何提高购物行为评级？
	               
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  购物行为评级有什么用？
	                </a>
	              </li>
              	              <li>
                    
	                  <b>·</b>
	                  什么是成长值？
	             
	              </li>
              	              <li>
                      
	                  <b>·</b>
	                  如何获得成长值？
	                
	              </li>
              	              <li>
                      
	                  <b>·</b>
	                  我的成长值被扣了，是什么原因？
	              
	              </li>
              	              <li>
                  
	                  <b>·</b>
	                  为什么我没有得到成长值？
	               
	              </li>
              	              <li>
                     
	                  <b>·</b>
	                  会员礼包
	              
	              </li>
                            
            </ul>
                        
          </div>
        </div>
      </div>
<script type="text/javascript">
$(function(){
	if($("#all-ques-tab .currentCata").length < 1){
		$("#ques_list_all").addClass("current");
	}
	var catItem = $(".list-item[data-id="+151+"]"); 
	catItem.parents(".subside-mod").addClass("on");
	catItem.addClass("current");
	if($(".currentCata").html() != null){
		$('.breadcrumb').append('>&nbsp;<span>'+$(".currentCata strong").html()+'</span>');
	}
	
	$('#sLevel2').html(catItem.attr('data-name'));
	$('#sLevel1').html(catItem.attr('data-parent-name'));
});
</script>
    </div>
</div>

 <jsp:include page="../../include/footer.jsp"></jsp:include>

</body>
</html>