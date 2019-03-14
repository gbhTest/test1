$(document).ready(function() {
	$("#xgId").click(function(){
		var userName = $("#userName").val();
		var userPassword = $("#userPassword").val();
		var userFunction = $("#userFunction").val();
		var userPhone = $("#userPhone").val();
		if(userName == ""|| userName == null || userName == undefined){
			return false;
		}
		if(userPassword == ""|| userPassword == null || userPassword == undefined){
			return false;
		}
		if(userFunction == ""|| userFunction == null || userFunction == undefined){
			return false;
		}
		if(userPhone == ""|| userPhone == null || userPhone == undefined){
			return false;
		}
		alert("修改成功");
		return true;
	});
});