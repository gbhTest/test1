<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

<title>销售查询</title>

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
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html" style="padding:0 25px;">首页</a>
							</li>
							<li class="l-select" ><a href="${pageContext.request.contextPath }/User/index.html">销售查询</a>
								<span class="close"></span></li>
						</ul>
					</div>
					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--员工管理   开始-->
								<div class="yg-gl">
									<div class="yg-add" style="height:48px;">
										<form
											action="${pageContext.request.contextPath }/CustomerOrder/query.html"
											method="get">
											<div class="yg-add" style="height:48px;">
												<ul class="inline-rr">
													<li class="frr"><input type="text" class="ui-combo"
														name="clientName" id="clientName" placeholder="请输入客户名称">
													</li>
													<li class="frr"><select class="ui-combo"
														id="isCustomerOrderPrice" name="isCustomerOrderPrice">
															<option value="">是否付款</option>
															<option value="1">是</option>
															<option value="0">否</option>
													</select>
													</li>
													<li><button type="submit"
															class="ui-btn11 ui-btn-search">查询</button>
													</li>
												</ul>
											</div>
										</form>
									</div>
									<div class="yg-tab">
										<div class="grid">
											<div class="layoutitem" style="width:100%;border:none;">
												<form action="" method="post">
													<table class="gridbar" border="0" cellpadding="0"
														cellspacing="0">
														<thead>
															<tr>
																<th>订单编号</th>
																<th>商品数量</th>
																<th>单价</th>
																<th>客户姓名</th>
																<th>联系方式</th>
																<th>订单日期</th>
																<th>是否付款</th>
															</tr>
															<c:forEach items="${pageInfo.list}" var="i">
																<tr>
																	<th>${i.customerOrderCode}</th>
																	<th>${i.customerOrderNumber}</th>
																	<th>${i.customerOrderUnitPrice}</th>
																	<th>${i.client.clientName}</th>
																	<th>${i.client.clientPhone}</th>
																	<th><fmt:formatDate value="${i.customerOrderDate}"
																			pattern="yyyy/MM/dd" />
																	</th>
																	<th><c:choose>
																			<c:when test="${i.isCustomerOrderPrice == 1}">是</c:when>
																			<c:when test="${i.isCustomerOrderPrice == 0}">否</c:when>
																		</c:choose>
																	</th>
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
													href="${pageContext.request.contextPath }/CustomerOrder/query.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/CustomerOrder/query.html?pageNo=${pageInfo.pageNum-1}">
																上一页</a>
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
															href="${pageContext.request.contextPath }/CustomerOrder/query.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a></li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/CustomerOrder/query.html?pageNo=${pageInfo.lastPage}">尾页</a>
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
