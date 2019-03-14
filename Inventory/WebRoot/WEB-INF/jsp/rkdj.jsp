<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>入库登记</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	.add {
	background: #ff0303;
	color: #fff;
	border-radius: 3px;
	text-align: center;
	height: 32px;
	width: 70px;
}
	.bc {
	background: #333;
	border-radius: 3px;
	text-align: center;
	color: #fff;
	height: 32px;
	width: 70px;
}
	</style>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/index.css" />

<script
	src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
<script type="text/javascript">
   	$(function(){
   		var msg = $("msg").val();
  		if(msg != null){
  			confirm(msg);
   		}else{
   			return"${pageContext.request.contextPath }/stock/getQuery.html";
   		}
   	});
   	</script>
</head>
<body>
	<!-- <div class="container"> -->
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<div class="right-menu">
		<input type="hidden" value="${msg }" id="msg"/>
			<div class="main-hd">
				<div class="page-teb">
					<div class="l-tab-links">
						<ul style="left:0;">
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">首页</a>
							</li>
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">入库登记</a>
								<span class="close"></span>
							</li>
						</ul>
					</div>

					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--入库单   开始-->
								<div class="gys-list">
									<div class="grid">
										<!--仓库基本信息   开始-->
										<div class="layoutitem" style="width:100%;border:none;">
											<form method="post"
												action="${pageContext.request.contextPath }/stock/getRegister.html">
												<div class="layoutgr">
													<ul>
														<li><label>订单编号</label> <input type="text"
															class="buedit" name="orderCargoID"
															value="${sessionScope.stock.orderCargo.id }">
														</li>
														<li><label>供应商ID</label> <input type="text"
															class="buedit"
															value="${sessionScope.stock.orderCargo.supplierId }">
														</li>
														<li><label>商品名称</label> <input type="text"
															class="buedit"
															value="${sessionScope.stock.orderCargo.orderCargoName }">
														</li>
														<li><label>商品数量</label> <input type="text"
															class="buedit" name="stockNumber"
															value="${sessionScope.stock.orderCargo.orderCargoNumber }">
														</li>
														<li><label>商品单价</label> <input type="text"
															class="buedit"
															value="${sessionScope.stock.orderCargo.orderCargoUnitPrice }">
														</li>
														<li><label>负责人ID</label> <input type="text"
															class="buedit"
															value="${sessionScope.stock.orderCargo.userId }">
														<li><label>仓库ID</label> <input type="text"
															class="buedit" name="warehouseId" value="">
														</li>

														<li><label>入库时间</label> <input type="text"
															class="buedit" name="stockDate" value="">
														</li>
													</ul>
												</div>
												<div class="cellspacing">
													<div class="cell-zd">
														<p>
															制单人：<span>${user.userName }</span>
														</p>
													</div>
													<div class="cell-je">
														<!-- <a href="#" class="rz">登记</a> <a href="#" class="bc">退出</a> -->
														<input type="submit" value="登记" class="add"/>  <input
															type="button" class="bc" value="退出"
															onclick="history.go(-1);" />
													</div>
												</div>
											</form>
										</div>
										<!--仓库基本信息   结束-->
									</div>
								</div>
							</div>
							<!--入库单   结束-->
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>
