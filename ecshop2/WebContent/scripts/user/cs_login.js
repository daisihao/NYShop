$(function(){
	$("#aur4").on("click",function(e){
		obj.src="<%=request.getContextPath()%>/admin/yzm.jsp?v="+new Date().getTime();
	}).on("mouseover",function(e){
		obj.style.cursor="pointer";
	})
})
function dd(obj){
		obj.style.cursor="pointer";
	}
	function ff(obj){
		obj.src="<%=request.getContextPath()%>/admin/yzm.jsp?v="+new Date().getTime();
	}