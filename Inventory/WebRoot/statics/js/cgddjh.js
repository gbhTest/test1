/**
 * Created by admin on 2019/1/10.
 */
$(document).ready(function() {
	var path = $("#path").val();
	$("#upd").click(function(){
		var obj = $(this);
		var id =obj.parent().parent().prop("id"); 
		if(confirm("审核订单")){
			$.ajax({
				type:"get",
				url:path+"/orderPlan/updateIs.json",
				data:{
					id:id
				},
				dataType:"json",
				success:function(data){
					if(data == "1"){
						alert("审核成功！");
						location.href(path+"/orderPlan/selectOrderPlan.html");
					}else if(data == "3"){
						alert("您没有权限审核");
					}else{
						alert("审核失败！");
					}
				},
				error : function(){
					alert("服务器发生错误！");
				}
			});
		}
	});
});
