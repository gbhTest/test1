/**
 * Created by admin on 2019/1/8.
 */
$(document).ready(function() {
	var flag = 0;
	$("#frm").submit(function(){
		var supplierCode = $("#supplierCode").val();
		var supplierGroup = $("#supplierGroup").val();
		var supplierName = $("#supplierName").val();
		var supplierAddress = $("#supplierAddress").val();
		var supplierPhone = $("#supplierPhone").val();
		var email = $("#email").val();
		if(supplierCode == "" || supplierCode == null){
			alert("供应商编号不能为空！");
			return false;
		}
		if(supplierGroup == "" || supplierGroup == null){
			alert("供应商名称不能为空！");
			return false;
		}
		if(supplierName == "" || supplierName == null){
			alert("供应商人姓名不能为空！");
			return false;
		}
		if(supplierAddress == "" || supplierAddress == null){
			alert("供应商地址不能为空！");
			return false;
		}
		if(supplierPhone == "" || supplierPhone == null){
			alert("联系电话不能为空！");
			if(supplierPhone.size() != 11){
				alert("请输入正确的电话号码！");
				return false;
			}
		}
		if(email == "" || email == null){
			alert("供应商Email不能为空！");
			return false;
		}
		return true;
	});
	
	$("#supplierCode").blur(function(){
		var supplierCode = $("#supplierCode").val();
		if(supplierCode != '' && supplierCode != null){
			$.post("Supplier/getTitle","supplierCode="+supplierCode,function(date){
				if(date == "0"){
					flag = 0;
					$("#spanId").html("供应商编号可以使用！");
				}else{
					flag = 1;
					$("#spanId").html("供应商编号不可以使用！");
				}
			},"json");
		}
	});
});
