<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>供应商管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/gysgl.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/index.css" />
<script
	src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/cgddjh-update.js"></script>
</head>

<body>
	<!-- <div class="container"> -->
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<div class="right-menu">
			<div class="main-hd">
				<div class="page-teb">
					<div class="l-tab-links">
						<ul style="left:0;">
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">首页</a>
							</li>
							<li class="l-select" ><a href="${pageContext.request.contextPath }/User/index.html">新增供应商</a>
								<!-- onclick="history.go(-1);" -->
								<span class="close"></span>
							</li>
						</ul>
					</div>
					<!--  style="background:#fff;" -->
					<div class="l-tab-content">
						<form
							action="${pageContext.request.contextPath }/orderPlan/updateOrder.html"
							method="post" style="padding:20px" id="frm">

							<table cellpadding="0" cellspacing="0" border="0"
								class="formborder"
								style="z-index:99;position:absolute;left:245px;top:40px;width:880px; display: block;">
								<tbody>

									<tr>
										<td align="left" valign="top"
											style="width:880px;height:300px;background:#fff;">
											<div class="formcontentsize" style="width:auto;height:auto;">
												<!--仓库基本信息   开始-->
												<div class="layoutitem">
													<div class="layout-tit">修改订单</div>
													<div class="layout-xx">
													<input type="hidden" id="id" name="id" value="${orderlist.id }" />
														<ul>
															<li>
																<div class="item-input">
																	<label class="item-label"> 商品名称</label> <input
																		type="text" id="orderPlanName" name="orderPlanName"
																		class="layoutitemcon" maxlength="50" value="${orderlist.orderPlanName }" />
																</div>
																<div class="item-input">
																	<label class="item-label">商品数量</label><input
																		type="text" id="orderPlanNumber" name="orderPlanNumber"
																		class="layoutitemcon" maxlength="50" value="${orderlist.orderPlanNumber }"/>
																</div></li>

															<li>
																<div class="item-input">
																	<label class="item-label">商品单位</label> <input
																		type="text" class="layoutitemcon" maxlength="50"
																		id="orderPlanUnit" name="orderPlanUnit" value="${orderlist.orderPlanUnit }"/>
																</div>
																<div class="item-input">
																	<label class="item-label">供应商</label>
																	<select name="supplierId" id="supplierId">
																	<option><--显示全部--></option>
																		<c:forEach items="${list}" var="li">
																			<option value="${li.id}">${li.supplierGroup}</option>
																		</c:forEach>
																	</select>
																</div></li>
															<li>
																<!-- <div class="item-input">
																	<label class="item-label">计划日期</label> <input
																		class="layoutitemcon" maxlength="50" type="text"
																		id="orderPlanDate" name="orderPlanDate" />*
																</div> -->
																</li>

														</ul>
													</div>
												</div>
												<!--仓库基本信息   结束-->

												<div class="layoutitem-add">
													<button type="submit" class="add">修改</button>
													 <a
														href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html"
														class="tc">返回</a>
												</div>
											</div></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>

				</div>
			</div>
		</div>

	<!-- </div> -->
</body>
</html>
