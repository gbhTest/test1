<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>客户往来账</title>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />contentType="text/html; charset=UTF-8" -->
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
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html" style="padding:0px 25px;">首页</a>
							</li>
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">客户往来账</a>
								<span class="close"></span></li>
						</ul>
					</div>

					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<div class="yg-gl">
									<div class="yg-tab">
										<div class="grid">
											<div class="layoutitem" style="width:100%;border:none;">
												<!--成交金额及订单数量-->
												<div style="display: inline-flex;margin:5px 0 20px 0;">
													<div
														style="width: 300px;margin: 0 20px;height: 60px; " class="bg-deep">
														<div style="margin: 10px 20px;">
															<img
																src="${pageContext.request.contextPath }/statics/img/left-img1.png">
														</div>
														<p
															style="margin-top: -10px;font-size: 18px;color: whitesmoke;">成交金额</p>
														<p
															style="margin-top: -40px;margin-left: 80px;font-size: 18px;color: whitesmoke;">${sum}元</p>
													</div>
													<div
														style="width: 300px;margin: 0 20px;height: 60px; " class="bg-red">
														<div style="margin: 10px 20px;">
															<img
																src="${pageContext.request.contextPath }/statics/img/left-img2.png">
														</div>
														<p
															style="margin-top: -10px;font-size: 18px;color: whitesmoke;">总订单量</p>
														<p
															style="margin-top: -40px;margin-left: 80px;font-size: 18px;color: whitesmoke;">${totalCount}笔</p>
													</div>
													<div
														style="width: 300px;margin: 0 20px;height: 60px; " class="bg-green">
														<div style="margin: 10px 20px;">
															<img
																src="${pageContext.request.contextPath }/statics/img/left-img2.png">
														</div>
														<p
															style="margin-top: -10px;font-size: 18px;color: whitesmoke;">成交订单</p>
														<p
															style="margin-top: -40px;margin-left: 80px;font-size: 18px;color: whitesmoke;">${count}笔</p>
													</div>
													<div
														style="width: 300px;margin: 0 20px;height: 60px; " class="bg-purple">
														<div style="margin: 10px 20px;">
															<img
																src="${pageContext.request.contextPath }/statics/img/left-img2.png">
														</div>
														<p
															style="margin-top: -10px;font-size: 18px;color: whitesmoke;">未成交</p>
														<p
															style="margin-top: -40px;margin-left: 80px;font-size: 18px;color: whitesmoke;">${falgcount}笔</p>
													</div>
												</div>
												<form
													action="${pageContext.request.contextPath }/CustomerOrder/khwlz.html"
													method="get"
													style="text-align: center;font-size: 20px;margin:10px 0px;">

													<span>是否付款：</span> <select name="queryIsPayment">
														<option value="">--请选择--</option>
														<option value="0" ${queryIsPayment== 0 ? "selected=\"selected\"":"" }>未付款</option>
														<option value="1" ${queryIsPayment== 1 ? "selected=\"selected\"":"" }>已付款</option>
													</select> <input type="hidden" name="pageIndex" value="1" /> <input
														value="查 询" type="submit" id="searchbutton">
												</form>
												<table class="gridbar bar" border="1" cellpadding="0"
													cellspacing="0">
													<thead>
														<th>订单编号</th>
														<th>商品名称</th>
														<th>商品数量</th>
														<th>单价</th>
														<th>合计金额(元)</th>
														<th>客户姓名</th>

														<th>状态</th>
														<c:forEach var="clist" items="${pageInfo.list }"
															varStatus="status">
															<tr>
																<td>${clist.customerOrderCode }</td>
																<td>${clist.goodsName }</td>
																<td>${clist.customerOrderNumber }</td>
																<td>${clist.customerOrderUnitPrice }</td>
																<td>${clist.customerOrderTotalPrice }</td>
																<td>${clist.clientName }</td>
																<td><c:choose>
																		<c:when test="${clist.isCustomerOrderRefund==0 }">未退货订单</c:when>
																		<c:when test="${clist.isCustomerOrderRefund==1 }">退货订单</c:when>
																	</c:choose>
																</td>
															</tr>
														</c:forEach>
													</thead>
												</table>
											</div>
											<!-- 分页   连接  rollpage.jsp-->
											<ul class="pager">
												<div class="btn-group btn-group-justified" role="group">
													<div class="btn-group" role="group">
														<div dir="ltr" style="text-align:center">第
															${pageInfo.pageNum } 页 | 共${pageInfo.total } 条 | 共
															${pageInfo.pages } 页</div>
													</div>
												</div>
												<li><a
													href="${pageContext.request.contextPath }/CustomerOrder/khwlz.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/CustomerOrder/khwlz.html?pageNo=${pageInfo.pageNum-1}">
																上一页</a>
														</li>
														</li>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${!pageInfo.hasNextPage}">
														<li class="disabled"><a href="javascript:;">下一页 </a>
														</li>
													</c:when>
													<c:otherwise>
														<li><a
															href="${pageContext.request.contextPath }/CustomerOrder/khwlz.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a></li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/CustomerOrder/khwlz.html?pageNo=${pageInfo.lastPage}">尾页</a>
												</li>
										</div>
									</div>
								</div>
								<!--出款单   结束-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>
