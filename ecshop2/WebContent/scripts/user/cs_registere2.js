// JavaScript Document
 $(document).ready(function(){
	$("#cs_regsiter_content_nei_table_td_tf2").focus(function(){
		$(this).css('border','1px solid green');
		$("#cs_regsiter_content_nei_table_ursemag2").html("密码长度不能小于6！").css({'color':'green','font-size':'14px'});
	}).blur(function(){
		var exp2=/^.{6,12}$/
		var b=exp2.test($(this).val())
		if(!b){
		$("#cs_regsiter_content_nei_table_ursemag2").html("您设置的密码不符合要求！").css({'color':'red','font-size':'14px'});
		$(this).css('border','1px solid red');
		}else{
			$("#cs_regsiter_content_nei_table_ursemag2").html("&radic;").css({'color':'green','font-size':'14px'});
		}
	});

	$("#cs_regsiter_content_table_td_tf3r").focus(function(){
		$(this).css('border','1px solid green');
	}).blur(function(){
		var c=$("#cs_regsiter_content_nei_table_td_tf2").val()
		var f=$(this).val()		
		if(c==""){
		$("#cs_regsiter_content_nei_table_ursemag2").html("密码不能为空").css({'color':'red','font-size':'14px'});
		
		}else if(c==f){
			$("#cs_regsiter_content_table_ursemag3r").html("&radic;").css({'color':'green','font-size':'14px'});
		}else{
			$("#cs_regsiter_content_table_ursemag3r").html("密码不一致，请重新输入！").css({'color':'red','font-size':'14px'});
			$(this).css('border','1px solid red');
		}
	});
	$("#cs_regsiter_content_table_td_tf4r").focus(function(){
		$(this).css('border','1px solid green');
	}).blur(function(){
		var f=$(this).val()
		if(f!=""){
			$("#cs_regsiter_content_table_ursemag4r").html("&radic;").css({'color':'green','font-size':'14px'});
		
		}else{
			$("#cs_regsiter_content_table_td_tf4r").html("密保问题不能为空！").css({'color':'red','font-size':'14px'});
			$(this).css('border','1px solid red');
		}
	});

	$("#cs_regsiter_content_nei_table_td_tf5").focus(function(){
		$(this).css('border','1px solid green');
	}).blur(function(){
		
		var f2=$(this).val()
		if(f2!=""){
			$("#cs_regsiter_content_table_ursemag5r").html("&radic;").css({'color':'green','font-size':'14px'});
		}else{
		
			$("#cs_regsiter_content_table_td_tf5r").html("密保答案不能为空！").css({'color':'red','font-size':'14px'});
			$(this).css('border','1px solid red');
		}
	});

		
	 });
