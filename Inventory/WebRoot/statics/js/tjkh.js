$(document).ready(function(){
	var path = $("#path").val();
	$("#bc").click(function(){
		var clientName = $("#clientName").val();
		var clientPhone = $("#clientPhone").val();
		var clientAddress = $("#clientAddress").val();
		var clientEmail = $("#clientEmail").val();
		if(clientName == "" || clientName == null){
			alert("客户姓名不能为空");
			return false;
		}
		if(clientPhone == "" || clientPhone == null){
			alert("客户电话不能为空");
			return false;
		}
		if(clientAddress == "" || clientAddress == null){
			alert("客户地址不能为空");
				return false;
		}
		$.ajax({
			url:path+"/Client/clientAdd.json",
			type:"post",
			data:{
				clientName:clientName,
				clientPhone:clientPhone,
				clientAddress:clientAddress,
				clientEmail:clientEmail
			},
			dataType:"json",
			success:function(date){
				if(date > 0){
					alert("添加成功！");
					clientName.val(""); 
					clientPhone.val("");
					clientAddress.val("");
					clientEmail.val("");
				}else{
					alert("添加失败！");
				}
			},error:function(){
				alert("系统错误！");
			}
		});
	});
});