<%@page import="cn.inventory.pojo.OrderPlan"%>
<%@page import="cn.inventory.pojo.OrderCargo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<!-- <base href="<%=basePath%>"> -->

<title>采购订单计划</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/index.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<script
	src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/cgddjh-del.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/cgddjh.js"></script>
</head>

<body>
	<!-- <div class="container"> -->
	<%@include file="/WEB-INF/jsp/common/head.jsp"%>
	<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
	<input type="hidden" id="path"
		value="${pageContext.request.contextPath }" />
	<input type="hidden" value="${msg }" id="msg" />
	<div class="right-menu">
		<div class="main-hd">
			<div class="page-teb">
				<div class="l-tab-links">
					<ul style="left:0;">
						<li class="l-select"><a href="#" style="padding:0 25px;">首页</a>
						</li>
						<li class="l-select" onclick="history.go(-1);"><a href="${pageContext.request.contextPath }/User/index.html">采购订单计划</a>
							<span class="close"></span>
						</li>
					</ul>
				</div>
				<div class="l-tab-content" style="background:#fff;">
					<div class="tab-content-item">
						<div class="home">
							<!--订单管理   开始-->
							<form
								action="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html"
								method="post" id="frm1">
								<div class="ddgl-box">
									<div class="ddgl-list">
										<div class="dd-fl">进货订单管理</div>
										<div class="dd-rg">
											<div class="rg-01">
												过滤 <select class="dd-sel" id="isOrderPlanApproval"
													name="isOrderPlanApproval">
													<option value="">显示全部</option>
													<option value="0">未审核订单</option>
													<option value="1">审核通过订单</option>
												</select>
											</div>
											<button type="submit" class="ui-xz" data-method="offset">查询</button>
											<button class="ui-xz" data-method="offset">
												<a href="${pageContext.request.contextPath }/orderPlan/AddOrder.html">新增</a>
											</button>
										</div>
									</div>
									<%
										OrderPlan plan = (OrderPlan)session.getAttribute("plan");
										int num = 0;
										int sId = 0;
										int price = 0;
										int total =0;
										String unit =null;
										String name= null;
										if(plan != null ){
											num =plan.getOrderPlanNumber();
											/* price = plan.getGoodsPrice(); */
											Random random = new Random();
											price = random.nextInt(30);
											total =  num*price;
											unit = plan.getOrderPlanUnit();
											name = plan.getOrderPlanName();
											sId = plan.getSupplierId();
										}
									%>
									<!--订单管理  开始-->
									<div class="yg-tab">
										<div class="grid">
											<div class="layoutitem" style="width:100%;border:none;">
												<form method="post">
													<table class="gridbar" border="0" cellpadding="0"
														cellspacing="0">
														<thead>
															<tr>
																<th>商品名称</th>
																<th>商品数量</th>
																<th>商品单位</th>
																<th>计划日期</th>
																<th>是否审核</th>
																<th>操作</th>
															</tr>
															<c:forEach items="${pageInfo.list}" var="li">
																<tr id="${li.id }">
																	<td>${li.orderPlanName}</td>
																	<td>${li.orderPlanNumber}</td>
																	<td>${li.orderPlanUnit}</td>
																	<td><fmt:formatDate value="${li.orderPlanDate}"
																			pattern="yyyy-MM-dd" /></td>
																	<c:choose>
																		<c:when test="${li.isOrderPlanApproval == 0}">
																			<td><a
																				href="${pageContext.request.contextPath }/orderPlan/updateIs/${li.id }">去审核</a>
																			</td>
																		</c:when>
																		<c:otherwise>
																			<td>已审核</td>
																		</c:otherwise>
																	</c:choose>
																	<c:if test="${li.isOrderPlanApproval == 0}">
																			<td><a href="javascript:;" class="del"><img
																					src="${pageContext.request.contextPath }/statics/img/dele.png">
																			</a> <a
																				href="${pageContext.request.contextPath }/orderPlan/getOrderplan.html/${li.id}"><img
																					src="${pageContext.request.contextPath }/statics/img/xg1.png">
																			</a></td>

																		</c:if>
																</tr>
															</c:forEach>
														</thead>
													</table>
												</form>
												<div align="center" id="div"></div>
											</div>
											<ul class="pager">
												<div class="btn-group btn-group-justified" role="group">
													<div class="btn-group" role="group">
														<div dir="ltr" style="text-align:center">第
															${pageInfo.pageNum } 页 | 共${pageInfo.total } 条 | 共
															${pageInfo.pages } 页</div>
													</div>
												</div>
												<li><a
													href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html?pageNo=${pageInfo.pageNum-1}">
																上一页</a></li>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${!pageInfo.hasNextPage}">
														<li class="disabled"><a href="javascript:;">下一页 </a>
														</li>
													</c:when>
													<c:otherwise>
														<li><a
															href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a></li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html?pageNo=${pageInfo.lastPage}">尾页</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</form>
							<!--订单管理   结束-->
						</div>
						<input type="hidden" id="userId" value="${user.id}"/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- </div> -->
</body>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
		$(document).ready(function() {
							var msg = $("#msg").val();
							var path = $("#path").val();
							var userId = $("#userId").val();
							if (msg != null && msg != "") {
								confirm(msg);
								var orderCargo = {
									"orderCargoCode":"J_10000","supplierId":<%=sId%>,"orderCargoName":"<%=name%>",
									"orderCargoNumber":<%=num%>,"orderCargoUnit":"<%=unit%>",orderCargoUnitPrice:<%=price%>,"orderCargoTotalPrice":<%=total%>,
									"userId":userId,"orderCargoDate":"2019-01-18","isOrderRefundCargo":0,"isOrderCargoPayment":0
								};
								if(msg =="审核成功!!!"){
									$.ajax({
												type : "POST",
												url : path + "/orderCargo/addOrderCargo.html",
												data : {
													order:JSON.stringify(orderCargo)
												},
												dataType : "json",
												success : function(data) {
													if (data == "1") {
														alert("订单正在出货中!!!");
														location.href(path+ "/orderPlan/selectOrderPlan.html");
													} else {
														alert("订单在路上丢失了,请重试!!!");
													}
												},
												error : function() {
													alert("服务器发生错误！");
												}
											});
								 }
							}
						});
	</script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
</html>
