/**
 * Created by admin on 2019/1/8.
 */
$(document).ready(function() {
	var path = $("#path").val();
	$("#submit").click(function() {
		var name = $("#userAccount").val();
		var pwd = $("#userPassword").val();
		if (name == null || name == '') {
			layer.msg("用户账号不能为空！",{shift:6});
			return false;
		}
		if (pwd == null || pwd == '') {
			layer.msg("用户密码不能为空！",{shift:6});
			return false;
		}
		var index = null;
		$.ajax({
			type : "post",
			url : path + "/User/doLogin.json",
			data : {
				userAccount : name,
				userPassword : pwd
			},
			  beforeSend: function () {
	              index = layer.load();
	            },
			dataType : "json",
			
			success : function(date) {
				if(date.starts == 50){
					alert("登录成功！");  
					location.href = path + "/User/index.html";
				}else{
					layer.msg("登录失败！",{shift:6});
				}
			},
	            complete: function () {
	               layer.close(index);
	            }
		});
	});
});
