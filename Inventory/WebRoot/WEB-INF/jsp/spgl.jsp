<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>客户管理</title>
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
	<form action="${pageContext.request.contextPath }/Goods/getGoods.html"
		method="post">
		<!-- <div class="container"> -->
			<%@include file="/WEB-INF/jsp/common/head.jsp"%>
			<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
			<div class="right-menu">
				<div class="main-hd">
					<div class="page-teb">
						<div class="l-tab-links">
							<ul style="left:0;">
								<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">首页</a></li>
								<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">客户管理</a>
									<span class="close"></span></li>
							</ul>
						</div>
						<div class="l-tab-content" style="background:#fff;">
							<div class="tab-content-item">
								<div class="home">
									<!--员工管理   开始-->
									<div class="con-header">
										<ul class="ui-inline">
											<li><input type="text" class="ui-kh" name="GoodsName"
												id="GoodsName" placeholder="请输入商品名称 "></li>
											<li>
												<button type="submit" class="ui-btn11 ui-btn-search">查询</button>
											</li>
										</ul>
									</div>
									<div class="yg-gl">
										<div class="yg-tab">
											<div class="wrap-li">
												<table class="gridbar" border="0" cellpadding="0"
													cellspacing="0">
													<thead>
														<tr>
															<th width="100">操作</th>
															<th width="180">商品ID</th>
															<th width="180">商品名称</th>
															<th width="180">商品单价</th>
															<th width="280">商品单位</th>
															<th width="180">供应商名称</th>
															<th width="180">供应商联系电话</th>
															<th width="180">仓库地址</th>
														</tr>
													</thead>
												</table>
											</div>
											<div class="list-kf">
												<table class="gridbar bar" border="0" cellpadding="0"
													cellspacing="0">
													<thead>
														<c:forEach items="${pageInfo.list}" var="i">
															<tr>
																<td width="120"><a
																	href="${pageContext.request.contextPath }/Goods/upGoods.html?id=${i.id}"><img
																		src="${pageContext.request.contextPath }/statics/img/xg1.png">
																</a></td>
																<td width="180">${i.id}</td>
																<td width="180">${i.goodsName}</td>
																<td width="180">${i.goodsPrice}</td>
																<td width="280">${i.goodsUnit}</td>
																<td width="180">${i.supplier.supplierGroup}</td>
																<td width="180">${i.supplier.supplierPhone}</td>
																<td width="180">${i.warehouse.warehouseAddress}</td>
															</tr>
														</c:forEach>
													</thead>
												</table>
												<ul class="pager">
													<div class="btn-group btn-group-justified" role="group">
														<div class="btn-group" role="group">
															<div dir="ltr" style="text-align:center">第
																${pageInfo.pageNum } 页 | 共${pageInfo.total } 条 | 共
																${pageInfo.pages } 页</div>
														</div>
													</div>
													<li><a
														href="${pageContext.request.contextPath }/Goods/getGoods.html?pageNo=${pageInfo.firstPage}">首页</a>
													</li>
													<c:choose>
														<c:when test="${!pageInfo.hasPreviousPage}">
															<li class="disabled"><a href="javascript:;"> 上一页</a>
														</c:when>
														<c:otherwise>
															<li class=""><a
																href="${pageContext.request.contextPath }/Goods/getGoods.html?pageNo=${pageInfo.pageNum-1}">
																	上一页</a></li>
														</c:otherwise>
													</c:choose>
													<c:choose>
														<c:when test="${!pageInfo.hasNextPage}">
															<li class="disabled"><a href="javascript:;">下一页
															</a></li>
														</c:when>
														<c:otherwise>
															<li><a
																href="${pageContext.request.contextPath }/Goods/getGoods.html?pageNo=${pageInfo.pageNum+1}">下一页
															</a>
															</li>
														</c:otherwise>
													</c:choose>
													<li><a
														href="${pageContext.request.contextPath }/Goods/getGoods.html?pageNo=${pageInfo.lastPage}">尾页</a>
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
	</form>
</body>
</html>
