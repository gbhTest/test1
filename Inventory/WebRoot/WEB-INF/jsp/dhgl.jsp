<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${pageInfo == null }">
	<c:redirect url="Allacotion/index.html"></c:redirect>
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

<title>调货管理</title>

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
			confirm(msg);
		} else {
			return "${pageContext.request.contextPath }/stock/getQuery.html";
		}
	});
</script>
</head>

<body>
	<input type="hidden" id="msg" value="${msg }" />
	<input type="hidden" id="path"
		value="${pageContext.request.contextPath }" />
	<div class="gys-list">
		<!-- <div class="container"> -->
			<%@include file="/WEB-INF/jsp/common/head.jsp"%>
			<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
			<div class="right-menu">
				<div class="main-hd">
					<div class="page-teb">
						<div class="l-tab-links">
							<ul style="left:0;">
								<li class="l-select"><a href="#">首页</a>
								</li>
								<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">调货管理</a>
									<span class="close"></span>
								</li>
							</ul>
						</div>
						<div class="l-tab-content" style="background:#fff;">
							<div class="tab-content-item">
								<div class="home">
									<a
										href="${pageContext.request.contextPath }/Allacotion/getAdd.html"
										class="ui-btn11 ui-btn-search">调货登记</a>

									<div class="grid">
										<!--仓库基本信息   开始-->
										<div class="layoutitem" style="width:100%;border:none;">

											<table class="gridbar" border="0" cellpadding="0"
												cellspacing="0">
												<thead>
													<tr>
														<th scope="col">商品名称</th>
														<th scope="col">商品数量</th>
														<th>调货人</th>
														<th>调货人手机</th>
														<th>调出仓库</th>
														<th>调入仓库</th>
														<th>调出仓库负责人</th>
														<th>调入仓库负责人</th>

													</tr>
													<c:forEach var="olist" items="${pageInfo.list}"
														varStatus="status">
														<tr class='<c:if test="${status.index%2==1 }">odd</c:if>'>
															<td>${olist.orderCargo.orderCargoName }</td>
															<td>${olist.stock.stockNumber }</td>
															<td>${olist.allocatingName }</td>
															<td>${olist.allocatingPhone }</td>
															<td>${olist.calloutWarehouse }</td>
															<td>${olist.foldWarehouse }</td>
															<td>${olist.calloutWarehouseName }</td>
															<td>${olist.foldWarehouseName }</td>
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
													href="${pageContext.request.contextPath }/Allacotion/index.html?pageNo=${pageInfo.firstPage}">首页</a>
												</li>
												<c:choose>
													<c:when test="${!pageInfo.hasPreviousPage}">
														<li class="disabled"><a href="javascript:;"> 上一页</a>
													</c:when>
													<c:otherwise>
														<li class=""><a
															href="${pageContext.request.contextPath }/Allacotion/index.html?pageNo=${pageInfo.pageNum-1}">
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
															href="${pageContext.request.contextPath }/Allacotion/index.html?pageNo=${pageInfo.pageNum+1}">下一页
														</a></li>
													</c:otherwise>
												</c:choose>
												<li><a
													href="${pageContext.request.contextPath }/Allacotion/index.html?pageNo=${pageInfo.lastPage}">尾页</a>
												</li>
											</ul>
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
		<!-- </div> -->
	</div>
</body>
</html>
