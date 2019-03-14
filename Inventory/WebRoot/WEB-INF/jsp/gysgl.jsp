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
	src="${pageContext.request.contextPath }/statics/js/gysgl-del.js"></script>
</head>

<body>
	<!-- <div class="container"> -->
		<input type="hidden" id="path"
			value="${pageContext.request.contextPath }" />
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<div class="right-menu">
			<div class="main-hd">
				<div class="page-teb">
					<div class="l-tab-links">
						<ul style="left:0;">
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">首页</a></li>
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">供应商管理</a>
								<span class="close"></span></li>
						</ul>
					</div>

					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--员工管理   开始-->
								<div class="yg-gl">
									<div class="yg-add">
										<button class="ui-xz" data-method="offset">
											<a
												href="${pageContext.request.contextPath }/Supplier/AddSupplier">新增</a>
										</button>
										<!-- <button class="ui-xz1" data-method="offset">删除</button>
										<button class="ui-xz2" data-method="offset">编辑</button> -->
									</div>
									<div class="yg-tab">
										<div class="grid">
											<div class="layoutitem" style="width:100%;border:none;">
												<form method="post">
													<table class="gridbar" border="0" cellpadding="0"
														cellspacing="0">
														<thead>
															<tr>
																<th>供应商编号</th>
																<th>供应商名称</th>
																<th>商人姓名</th>
																<th>供应商地址</th>
																<th>供应商电话</th>
																<th>Email</th>
																<th>操作</th>
															</tr>
															<c:forEach items="${pageInfo.list }" var="li">
																<tr id="${li.id }">
																	<td>${li.supplierCode}</td>
																	<td>${li.supplierGroup}</td>
																	<td>${li.supplierName}</td>
																	<td>${li.supplierAddress}</td>
																	<td>${li.supplierPhone}</td>
																	<td>${li.email}</td>
																	<td><a href="javascript:;" class="del"><img
																			src="${pageContext.request.contextPath }/statics/img/dele.png">
																	</a> &nbsp; <a
																		href="${pageContext.request.contextPath }/Supplier/${li.id}/getSupplier.html"><img
																			src="${pageContext.request.contextPath }/statics/img/xg1.png">
																	</td>
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
													href="${pageContext.request.contextPath }/Supplier/ListSupplier.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/Supplier/ListSupplier.html?pageNo=${pageInfo.pageNum-1}">
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
															href="${pageContext.request.contextPath }/Supplier/ListSupplier.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a></li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/Supplier/ListSupplier.html?pageNo=${pageInfo.lastPage}">尾页</a>
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
