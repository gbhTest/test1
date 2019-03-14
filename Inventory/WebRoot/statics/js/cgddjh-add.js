/**
 * Created by admin on 2019/1/8.
 */
$(document).ready(function() {
	var flag = 0;
	$("#frm").submit(function(){
		var orderPlanName = $("#orderPlanName").val();
		var orderPlanNumber = $("#orderPlanNumber").val();
		var orderPlanUnit = $("#orderPlanUnit").val();
		
		if(orderPlanName == "" || orderPlanName == null){
			alert("商品名称不能为空！");
			return false;
		}
		if(orderPlanName == "" || orderPlanName == null){
			alert("商品数量名称不能为空！");
			return false;
		}
		if(orderPlanUnit == "" || orderPlanUnit == null){
			alert("商品单位不能为空！");
			return false;
		}
		
		return true;
	});
	
	
});
