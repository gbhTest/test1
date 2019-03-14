/**
 * Created by admin on 2019/1/10.
 */
$(document).ready(function() {
	var path = $("#path").val();
	$(".del").click(function(){
		var obj = $(this);
		var id =obj.parent().parent().prop("id"); 
		var div = $("#div");
		if(confirm("确认删除此订单？")){
			$.ajax({
				type:"get",
				url:path+"/orderPlan/deleteOrder.json",
				data:{
					id:id
				},
				dataType:"json",
				success:function(data){
					if(data == 1){
						div.html("<font color='green'>删除成功！</font>");
						obj.parent().parent().remove();
					}else{
						div.html("<font color='blue'>删除失败！</font>");
					}
				},
				error : function(){
					div.html("<font color='red'>服务器发生错误！</font>");
				}
			});
		}
	});
});
