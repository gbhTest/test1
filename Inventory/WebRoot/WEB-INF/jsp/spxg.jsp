<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<input type="hidden" id="path" val="${path}" />
<script src="${path}/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		var path = $("#path").val();
		$("#submit").click(function() {
			var id = $("#id").val();
			var goodsName = $("#goodsName").val();
			var goodsPrice = $("#goodsPrice").val();
			var goodsUnit = $("#goodsUnit").val();
			$.ajax({
				url :  "Goods/updateGoods.json",
				type : "post",
				data : {
					id : id,
					goodsName : goodsName,
					goodsPrice : goodsPrice,
					goodsUnit : goodsUnit
				},
				dataType : "json",
				success : function(date) {
					if (date == 1) {
						alert("修改成功！");
						Window.location.href ="/Goods/getGoods.html";
					} else {
						alert("修改失败！");
					}
				},error:function(){
					alert("系统错误！");
				}
			});
		});
	});
</script>
</head>

<body>
	<!-- <div class="container"> -->
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<div class="right-menu">
			<div class="main-hd">
				<div class="page-teb">
					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<div class="yg-gl">
									<div class="yg-tab">
										<div class="wrap-li">
											<button id="submit" class="ui-btn11 ui-btn-search ">更改</button>
											<table class="gridbar" border="1" cellspacing="0"
												cellpadding="0" cellspacing="0">
												<input type="hidden" id="id" name="id" value="${list.id}" />
												<thead>
													<tr>
														<td>商品名称：</td>
														<td><input type="text" id="goodsName"
															name="goodsName" value="${list.goodsName}" />
														</td>
													</tr>
													<tr>
														<td>商品单价：</td>
														<td><input type="text" id="goodsPrice"
															name="goodsPrice" value="${list.goodsPrice}" />
														</td>
													</tr>
													<tr>
														<td>商品单位：</td>
														<td><input type="text" id="goodsUnit"
															name="goodsUnit" value="${list.goodsUnit}" />
														</td>
													</tr>
												</thead>
											</table>
										</div>
									</div>
								</div>
								<!--员工管理   结束-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>
