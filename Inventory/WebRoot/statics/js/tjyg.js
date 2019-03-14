$(document).ready(function() {
	var flag = 0;
	$("#sumiId").click(function(){
		var userserial = $("#userSerial").val();
		var userfunction = $("#userFunction").val();
		var useraccount = $("#userAccount").val();
		var userpassword = $("#userPassword").val();
		var username = $("#userName").val();
		var userphone = $("#userPhone").val();
		if(userserial =="" || userserial == null || userserial == undefined){
			alert("员工编号不能为空");
			return false;
		}
		if(userfunction =="" || userfunction == null || userfunction == undefined){
			alert("所属不能为空");
			return false;
		}
		if(useraccount =="" || useraccount == null || useraccount == undefined){
			alert("员工账号不能为空");
			return false;
		}
		if(userpassword =="" || userpassword == null || userpassword == undefined){
			alert("员工密码不能为空");
			return false;
		}
		if(username =="" || username == null || username == undefined){
			alert("员工姓名不能为空");
			return false;
		}
		if(userphone =="" || userphone == null || userphone == undefined){
			alert("员工电话不能为空");
			return false;
		}
		$("#form1").submit();
	});
	$("#userSerial").blur(function(){
		var userserial = $("#userSerial").val();
		if(userserial !=null && userserial !=''){
			$.post("User/userSerial.json","userSerial="+userserial,function(date){
				if(date =="1"){
					flag =1;
				}else{
					flag = 0;
					alert("员工编号重复");
				}
			},"json");
		};
	});
	$("#userAccount").blur(function(){
		var useraccount = $("#userAccount").val();
		if(useraccount !=null && useraccount!=''){
			$.post("User/userAccount.json","userAccount="+useraccount,function(date){
				if(date =="1"){
					flag = 1;
				}else{
					flag = 0;
					alert("员工账号不可重用");
				}
			},"json");
		};
	});
	
});