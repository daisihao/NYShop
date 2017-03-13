// JavaScript Document
	function consignee_0GetFocus(){
		document.getElementById("consignee_0").style="border: 1px solid #7abd54";
		document.getElementById("consignee_1").style="display:inline;color:red"
	}
	function consignee_0LoseFocus(){
		var value=document.getElementById("consignee_0").value;
		var reg=/^[\u4e00-\u9fa5]{2,}$/;
		if(!reg.test(value)){
			document.getElementById("consignee_0").style="border: 1px solid red";
			
		}else{
			document.getElementById("consignee_0").style="";
			document.getElementById("consignee_1").style="display:none;"
			}
	}
	
	
	function email_0GetFocus(){
		document.getElementById("email_0").style="border: 1px solid #7abd54";
		
	}
	function email_0LoseFocus(){
		document.getElementById("email_0").style="";
	}	
			
	function address_0GetFocus(){
		document.getElementById("address_0").style="border: 1px solid #7abd54";
		document.getElementById("address_1").style="display:inline;color:red"
	}
	function address_0LoseFocus(){
		var value=document.getElementById("address_0").value;
		if(value.length==0){
			document.getElementById("address_0").style="border: 1px solid red";
			
		}else{
			document.getElementById("address_0").style="";
			document.getElementById("address_1").style="display:none;"
			}
	}
	
	
	function zipcode_0GetFocus(){
		document.getElementById("zipcode_0").style="border: 1px solid #7abd54";
		
	}
	function zipcode_0LoseFocus(){
		document.getElementById("zipcode_0").style="";
	}
	
	
	
	function mobile_0GetFocus(){
		document.getElementById("mobile_0").style="border: 1px solid #7abd54";
		document.getElementById("mobile_1").style="display:inline;color:red"
	}
	function mobile_0LoseFocus(){
		var value=document.getElementById("mobile_0").value;
		var reg=/^[1][0-9]{10}$/;
		if(!reg.test(value)){
			document.getElementById("mobile_0").style="border: 1px solid red";
			
		}else{
			document.getElementById("mobile_0").style="";
			document.getElementById("mobile_1").style="display:none;"
			}
	}
	
	
	function tel_0GetFocus(){
		document.getElementById("tel_0").style="border: 1px solid #7abd54";
	}
	function tel_0LoseFocus(){
		document.getElementById("tel_0").style="";	
	}
	
	
	function sign_building_0GetFocus(){
		document.getElementById("sign_building_0").style="border: 1px solid #7abd54";
	}
	function sign_building_0LoseFocus(){
		document.getElementById("sign_building_0").style="";	
	}
	
	
	
	function best_time_0GetFocus(){
		document.getElementById("best_time_0").style="border: 1px solid #7abd54";
	}
	function best_time_0LoseFocus(){
		document.getElementById("best_time_0").style="";	
	}