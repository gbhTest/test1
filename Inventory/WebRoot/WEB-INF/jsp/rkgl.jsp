<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%-- <%@ page isELIgnored=" false" %> --%>
<c:if test="${pageInfo==null}">
	<c:redirect url="stock/getQuery.html"></c:redirect>
</c:if>
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

<title>入库管理</title>

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
<script type="text/javascript">
	$(function() {
		var msg = $("#msg").val();
		if (msg != null && msg != "") {
			if (confirm(msg)) {
				msg = null;
			}
		} else {
			return "${pageContext.request.contextPath }/stock/getQuery.html";
		}
	});
</script>
</head>

<body>
	<!-- <div class="container"> -->
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<div class="right-menu">
			<input type="hidden" value="${msg }" id="msg" />
			<div class="main-hd">
				<div class="page-teb">
					<div class="l-tab-links">
						<ul style="left:0;">
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html" style="padding:0 25px;">首页</a>
							</li>
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">入库管理</a>
								<span class="close"></span>
							</li>
						</ul>
					</div>

					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--员工管理   开始-->
								<div class="yg-gl">
									<div class="yg-tab">
										<div class="grid">
											<div class="layoutitem" style="width:100%;border:none;">
												<form method="post" id="frm1"
													action="${pageContext.request.contextPath }/stock/getQuery.html">
													<div class="yg-add" style="height:48px;">
														<ul class="inline-rr">
															<li class="frr"><input type="text"
																class="ui-combo ui-rr-img" name="StockDate"
																placeholder="请输入入库时间">
															</li>
															<li class="frr"><input type="text" class="ui-combo"
																name="StockNumber" placeholder="请输入库存量">
															</li>
															<li class="frr"><select class="ui-combo"
																name="IsOrderRefundCargo">
																	<option value="">所有</option>
																	<option value="0">不是退货订单</option>
																	<option value="1">是退货订单</option>
															</select>
															</li>

															<li><input type="submit" name="search"
																class="ui-btn11 ui-btn-search" value="查询" />
															</li>
														</ul>
													</div>
													<table class="gridbar" border="0" cellpadding="0"
														cellspacing="0">
														<thead>
															<tr>
																<th>仓库ID</th>
																<th>商品名称</th>
																<th>商品单价</th>
																<th>库存量</th>
																<th>入库日期</th>
																<th>是否退货</th>
																<th>是否付款</th>
																<th>进货订单ID</th>
															</tr>
															<c:forEach items="${pageInfo.list}" var="sList">
																<tr class="odd-l">
																	<td>${sList.warehouseId }</td>
																	<td>${sList.orderCargo.orderCargoName }</td>
																	<td>${sList.orderCargo.orderCargoUnitPrice }</td>
																	<td>${sList.stockNumber }</td>
																	<td><fm:formatDate value="${sList.stockDate }"
																			pattern="yyyy-MM-dd" />
																	</td>
																	<c:if test="${sList.orderCargo.isOrderRefundCargo==1 }">
																		<td><a href="#">已退货</a></td>
																	</c:if>
																	<c:if test="${sList.orderCargo.isOrderRefundCargo==0 }">
																		<td><a
																			href="${pageContext.request.contextPath }/stock/rkth/${sList.orderCargo.id }"
																			onclick="return confirm('确定要退货吗？')">退货</a>
																		</td>
																	</c:if>
																	<c:if
																		test="${sList.orderCargo.isOrderCargoPayment==1 }">
																		<td><a
																			href="${pageContext.request.contextPath }/stock/toRegister/${sList.orderCargo.id }" id="dj">入库登记</a>
																		</td>
																	</c:if>
																	<c:if
																		test="${sList.orderCargo.isOrderCargoPayment==0 }">
																		<td><a href="${pageContext.request.contextPath }/orderCargo/payFor/${sList.orderCargo.id }">去付款</a></td>
																	</c:if>
																	<td>${sList.orderCargo.id }</td>
																</tr>
															</c:forEach>
														</thead>
													</table>
												</form>
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
													href="${pageContext.request.contextPath }/stock/getQuery.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/stock/getQuery.html?pageNo=${pageInfo.pageNum-1}">
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
															href="${pageContext.request.contextPath }/stock/getQuery.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a>
														</li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/stock/getQuery.html?pageNo=${pageInfo.lastPage}">尾页</a>
												</li>
											</ul>
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
