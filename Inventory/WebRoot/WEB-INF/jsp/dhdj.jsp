<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%-- <c:if test="${olist == null}">
<c:redirect url="/Allacotion/index.html"></c:redirect>
</c:if> --%>
<c:set var="path" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>调货登记</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
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
	height: 70px;
	line-height: 75px;
	margin-bottom: 10px;
	display: block;
	overflow: hidden;
	padding-top: 20px;
}

.item-input {
	float: left;
	overflow: hidden;
	display: inline-block;
	width: 50%;
}

.item-label {
	width: 88px;
	line-height: 40px;
	display: inline-block;
	text-align: right;
}

.layoutitemcon {
	width: 240px;
	background: #fff;
	height: 35px;
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
	height: 35px;
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
	margin-top: 25px;
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
	height: 32px;
	width: 72px;
}

.bc {
	background: #f94913;
	border-radius: 3px;
	text-align: center;
	color: #fff;
	height: 32px;
	width: 72px;
}

.tc {
	background: #333;
	border-radius: 3px;
	text-align: center;
	color: #fff;
	height: 32px;
	width: 72px;
}
</style>
</head>

<body>
	<div class="formoverlay"></div>
	<input type="hidden" value="${msg }" id="msg"/>
	<form
		action="${pageContext.request.contextPath }/Allacotion/dhdj.html"
		method="post" id="frm1">
		<table cellpadding="0" cellspacing="0" border="0" class="formborder"
			style="z-index:99;position:absolute;left:350px;top:40px;width:880px; display: block;">
			<tbody>
				<tr>
					<td align="left" valign="top"
						style="width:880px;height:550px;background:#fff;">
						<div class="formcontentsize" style="width:auto;height:auto;">
							<!--仓库基本信息   开始-->
							<div class="layoutitem">
								<div class="layout-xx">
									<ul>
										<li>
											<div class="item-input">
												<label class="item-label"> 调入时间</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="foldData">
											</div>
											<div class="item-input">
												<label class="item-label">调出时间</label> <input type="text"
													class="layoutitemcon" maxlength="50"
													name="calloutData">
											</div>											
										</li>
										<li>
											<div class="item-input">
												<label class="item-label">调货人</label> <input type="text"
													class="layoutitemcon" maxlength="50"
													name="allocatingName" id="allocatingName">
											</div>
											<div class="item-input">
												<label class="item-label">调货人电话</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="allocatingPhone" id="allocatingPhone">
											</div>
										</li>
										<li>
										<div class="item-input">
												<label class="item-label">调出仓库</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="calloutWarehouse" id="dcck">
													<input type="hidden" name="stockNumber" id="stockNumber"/>
											</div>
											<div class="item-input">
												<label class="item-label">调入仓库</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="foldWarehouse" id="drck">
											</div>
										</li>
										<li>
											<div class="item-input">
												<label class="item-label">调出仓库负责人</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="calloutWarehouseName" id="calloutName">
											</div>
											<div class="item-input">
												<label class="item-label"> 调入仓库负责人</label> <input type="text"
													class="layoutitemcon" maxlength="50" name="foldWarehouseName" id="foldName">
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="layoutitem-add">
								<button type="submit" id="add" class="add">添加</button>
								<button type="button" id="back" onclick="history.go(-1);"
									class="tc">退出</button>
							</div>
							 <input type="hidden" id="path" name="path" value="${pageContext.request.contextPath }"/>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	<!--弹窗 仓库管理开始-->
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
	var path = $("#path").val();
		$("#dcck").blur(function(){
			var calloutId = $("#dcck").val();
			$.ajax({
			url:path+"/Allacotion/getDate.html",
			type:'POST',
			data:{calloutWarehouse:calloutId},
			dataType:'json',
			success:function(date){
				if(date != null){
					$("#calloutName").val(date['warehouse'].warehouseName);
					$("#stockNumber").val(date['stock'].stockNumber);
					$("#allocatingName").val(date['warehouse'].warehousePrincipal);
					$("#allocatingPhone").val(date['warehouse'].warehousePhone);
				}
			},
			error:function(data){//回调失败
					$("#dcck").html("数据错误");
				}
			});
		});
		$("#drck").blur(function(){
			var foldId = $("#drck").val();
			$.ajax({
			url:path+"/Allacotion/getDate.html",
			type:'POST',
			data:{foldWarehouse:foldId},
			dataType:'json',
			success:function(date){
				if(date != null){
					$("#foldName").val(date['warehouse'].warehouseName);					
				}
			},
			error:function(data){//回调失败
					$("#drck").html("数据错误");
				}
			});
		});
	});
	
   	$(function(){
   		var msg = $("#msg").val();
  		if(msg != null && msg != ""){
  			confirm(msg);
   		}else{
   			return"${pageContext.request.contextPath }/stock/getQuery.html";
   		}
   	});
</script>
</html>
