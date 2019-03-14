/**
 * Created by admin on 2019/1/8.
 */
$(document).ready(function() {
	$("#xg").click(function(){
		var path = $("#path").val();
		var id = $("#id").val();
		var clientName = $("#clientName").val();
		var clientPhone = $("#clientPhone").val();
		var clientAddress = $("#clientAddress").val();
		var clientEmail = $("clientEmail").val();
		if(clientName == "" || clientName == null){
			alert("客户姓名不能为空！");
			return false;
		}
		if(clientPhone == "" || clientPhone == null){
			alert("联系电话不能为空！");
			if(clientPhone.size() != 11){
				alert("请输入正确的电话号码！");
				return false;
			}
		}
		if(clientAddress == "" || clientAddress == null){
			alert("客户地址不能为空！");
			return false;
		}
		$.ajax({
			url : path+"/Client/getClientUpd.json",
			type : "post",
			data : {
				id : id,
				clientName : clientName,
				clientPhone : clientPhone,
				clientAddress : clientAddress,
				clientEmail : clientEmail
			},
			dataType : "json",
			success : function(date) {
				if (date > 0) {
					alert("修改成功！");
					location.href =path+"/Client/ClientList.html";
				} else {
					alert("修改失败！");
				}
			},
			error : function() {
				alert("系统错误！");
			}
		});
	});
});
