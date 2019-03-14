<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>\
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>弹窗-仓库管理</title>
<input type="hidden" id="path" value="${path}" />
<script src="${path}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		$("#xg").click(function() {
			var path = $("path").val();
			var id = $("id").val();
			var clientName = $("clientName").val();
			var clientPhone = $("clientPhone").val();
			var clientAddress = $("clientAddress").val();
			var clientEmail = $("clientEmail").val();
			$ajax({
				url : path + "/Client/getClientUpd.json",
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
					if (date > 1) {
						alert("修改成功！");
						Window.location.href = "/Client/ClientList.html";
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
</script>
<style>
html,body,div,span,ul,li,h1,h2,h3,h4,p,a,img,input,form {
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	outline: 0;
}

div,td,ul,li,dl,dt,dd,h2,h3,h4 {
	list-style: none;
	margin: 0;
	padding: 0;
}

div {
	display: block;
}

body {
	font-size: 12px;
	font-family: "微软雅黑", "宋体", Arial;
	color: #666;
}

li {
	display: list-item;
	text-align: -webkit-match-praent;
}

img {
	vertical-align: middle;
}

em {
	font-style: normal;
	color: #fff;
}

input,textarea,select,button {
	font-family: inherit;
	font-size: 100%;
	outline: 0;
}

a img {
	border: 0
}

body {
	color: #333;
	font: 12px "微软雅黑";
}

ul,ol,li {
	list-style-type: none;
	vertical-align: 0
}

a {
	outline-style: none;
	color: #535353;
	text-decoration: none;
	cursor: pointer
}

a:hover {
	text-decoration: none;
}

.clear {
	height: 0;
	overflow: hidden;
	clear: both
}

i,s {
	text-decoration: none;
	font-style: normal;
}

.formoverlay {
	cursor: default;
	width: 1419px;
	height: 949px;
	z-index: 5;
	opacity: 0.5;
	background: #999;
	position: absolute;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	display: block;
}

.formborder {
	border: 1px solid #476f9a;
}

.formcap {
	color: #fff;
	background: #476f9a;
}

td {
	font-size: 12px;
	line-height: 18px;
}

.form-cap-label {
	padding: 3px 0 0 4px;
	height: 30px;
	cursor: default;
}

.form-cap-txt {
	font-size: 14px;
	text-indent: 5px;
	letter-spacing: 1px;
}

.formcap-btn {
	padding-right: 5px;
}

.formcap-btn a img {
	width: 15px;
	height: 15px;
}

.layoutitem {
	width: 840px;
	border: 1px solid #ddd;
	margin: 15px auto;
}

.layout-tit {
	height: 30px;
	background: #eee;
	line-height: 30px;
	padding-left: 8px;
}

.layout-xx {
	padding: 8px;
}

.layout-xx li {
	height: 40px;
	line-height: 40px;
	margin-bottom: 5px;
	display: block;
	overflow: hidden;
}

.item-input {
	float: left;
	overflow: hidden;
	display: inline-block;
	width: 50%;
}

.item-label {
	width: 68px;
	line-height: 40px;
	display: inline-block;
	text-align: right;
}

.layoutitemcon {
	width: 235px;
	background: #fff;
	height: 24px;
	line-height: 24px;
	border: 1px solid #c9c9c9;
	text-indent: 5px;
	margin-left: 8px;
}

.layout-sele {
	width: 110px;
	background: #fff;
	height: 24px;
	line-height: 24px;
	border: 1px solid #c9c9c9;
	text-align: center;
	margin-left: 8px;
}

.layout-input {
	width: 200px;
	border: 1px solid #c9c9c9;
	height: 24px;
	line-height: 24px;
	margin-left: 8px;
	text-indent: 5px;
}

.item-input1 {
	overflow: hidden;
	display: inline-block;
	width: 100%;
	float: left;
}

.layout-bz {
	width: 687px;
	height: 24px;
	line-height: 24px;
	border: 1px solid #c9c9c9;
	background: #fff;
	margin-left: 8px;
	text-indent: 5px;
}

.lab {
	text-indent: 5px;
}

.layoutitem-add {
	float: right;
	padding-right: 15px;
}

.layoutitem-add a {
	width: 45px;
	height: 24px;
	line-height: 24px;
	margin: 12px 8px;
	display: inline-block;
	padding: 2px 3px;
}

.add {
	background: #ff0303;
	color: #fff;
	border-radius: 3px;
	text-align: center;
}

.bc {
	background: #f94913;
	border-radius: 3px;
	text-align: center;
	color: #fff;
}

.tc {
	background: #333;
	border-radius: 3px;
	text-align: center;
	color: #fff;
}
</style>
</head>

<body>
	<!-- <div class="container"> -->
		<div class="formoverlay"></div>
		<table cellpadding="0" cellspacing="0" border="0" class="formborder"
			style="z-index:99;position:absolute;left:359px;top:40px;width:880px; display: block;">
			<tbody>
				<tr>
					<td align="left" valign="top"
						style="width:880px;height:579px;background:#fff;">
						<!--仓库基本信息   开始-->
						<div class="layout-tit">
							<div class="layoutitem  item-ts">
								<div class="layout-tit">客户信息</div>
								<div class="layout-xx">
									<input type="hidden" id="clientId" value="${list.id}" />
									<ul>
										<li>
											<div class="item-input">
												<label class="item-label">客户姓名：</label> <input type="text"
													id="clientName" class="clientName"
													value="${list.clientName}" maxlength="50">
											</div>
											<div class="item-input">
												<label class="item-label">客户电话：</label> <input type="text"
													id="clientPhone" class="clientPhone"
													value="${list.clientPhone}" maxlength="50">
											</div>
										</li>
										<li>
											<div class="item-input">
												<label class="item-label">客户地址：</label> <input type="text"
													id="clientAddress" class="clientAddress"
													value="${list.clientAddress}" maxlength="50">
											</div>
											<div class="item-input">
												<label class="item-label">客户邮箱：</label> <input type="text"
													id="clientEmail" class="clientEmail"
													value="${list.clientEmail}" maxlength="50">
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="layoutitem-add">
								<a href="#" id="xg" class="xg">修改</a> <a href="#" id="tc"
									onclick="history.go(-1);" class="tc">退出</a>
							</div>
						</div></td>
				</tr>
			</tbody>
		</table>
		<!--弹窗 仓库管理开始-->
	<!-- </div> -->
</body>
</html>
