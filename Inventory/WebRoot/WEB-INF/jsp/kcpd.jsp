<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fm" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:if test="${pageInfo==null}">
	<c:redirect url="stock/getStockList.html"></c:redirect>
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

<title>库房分配</title>

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
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">库存盘点</a>
								<span class="close"></span>
							</li>
						</ul>
					</div>

					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--库房分配   开始-->
								<div class="kufang-box" style="margin-bottom: 20px">
									<form
										action="${pageContext.request.contextPath }/stock/getStockList.html"
										method="post">
										<div class="kufang">
											<label>订单ID：</label> <input type="text" class="input-txt11"
												value="" name="OrderCargoID"> <label>商品名称：</label> <input
												type="text" class="input-txt11" value=""
												name="OrderCargoName"> <input type="submit"
												name="search" style="display: inline;margin-left: 15px;"
												class="ui-btn11 ui-btn-search" value="查询" />
										</div>
									</form>
								</div>

								<div class="kf-tab">
									<div class="headerbar-kf">
										<table class="headerbar" border="0" cellpadding="0"
											cellspacing="1">
											<tbody>
												<tr class="headerrow-kf">
													<td class="caption-kf" style="overflow:hidden;"
														align="center" rowspan="2" width="40">
														<div class="caotion-kf-txt1">序号</div></td>
													<td class="caption-kf" style="overflow:hidden;"
														align="center" colspan="6">
														<div class="caotion-kf-txt">商品信息</div></td>
													<td class="caption-kf" style="overflow:hidden;"
														align="center" colspan="5">
														<div class="caotion-kf-txt">总仓库</div></td>
												</tr>
												<tr class="headerrow-kf">

													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:140px;">订单编号
														</div></td>
													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:175px;">商品名称
														</div></td>
													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:140px;">商品类别
														</div></td>
													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:140px;">单位
														</div></td>
													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:140px;">进货日期
														</div></td>
													<td class="caption cao-l">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:140px;">仓库ID
														</div></td>
													<td class="caption cao-l" colspan="1" rowspan="1">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:150px;">单价
														</div></td>
													<td class="caption cao-l" colspan="1" rowspan="1">
														<div class="caotion-kf-txt"
															style="overflow:hidden;text-align:center;width:150px;">库存量
														</div></td>
												</tr>
											</tbody>
											<c:forEach items="${pageInfo.list }" var="stock">
												<tbody>
													<tr class="fkbody-s" _rowindex="0">
														<td class="caption-kf" style="overflow:hidden;"
															align="center" rowspan="2" width="40">
															<div class="caotion-kf-txt1">${stock.orderCargo.id
																}</div></td>
														<td class="bodyrow-list" _columnindex="0">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:140px;">${stock.orderCargo.orderCargoCode
																}</div></td>
														<td class="bodyrow-list" _columnindex="1">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:175px;">${stock.orderCargo.orderCargoName
																}</div></td>
														<td class="bodyrow-list" _columnindex="2">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:140px;">${stock.orderCargo.orderCargoCategory
																}</div></td>
														<td class="bodyrow-list" _columnindex="3">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:140px;">${stock.orderCargo.orderCargoUnit
																}</div></td>
														<td class="bodyrow-list" _columnindex="4">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:140px;">
																<fm:formatDate
																	value="${stock.orderCargo.orderCargoDate}"
																	pattern="yyyy-MM-dd" />
															</div></td>
														<td class="bodyrow-list" _columnindex="5">
															<div class="bodytxt"
																style="overflow:hidden;text-align: center; width:140px;">${stock.warehouseId
																}</div></td>
														<td class="bodyrow-list" _columnindex="6">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:150px;">
																${stock.orderCargo.orderCargoUnitPrice }</div></td>
														<td class="bodyrow-list" _columnindex="7">
															<div class="bodytxt"
																style="overflow:hidden;text-align:center; width:150px;">
																${stock.stockNumber }</div></td>
													</tr>
												</tbody>
											</c:forEach>
										</table>
									</div>

									<div class="kfbody" tabindex="0">

										<!-- 分页 -->
										<ul class="pager">
											<div class="btn-group btn-group-justified" role="group">
												<div class="btn-group" role="group">
													<div dir="ltr" style="text-align:center">第
														${pageInfo.pageNum } 页 | 共${pageInfo.total } 条 | 共
														${pageInfo.pages } 页</div>
												</div>
											</div>
											<li><a
												href="${pageContext.request.contextPath }/stock/getStockList.html?pageNo=${pageInfo.firstPage}">首页</a>
											</li>
											<c:choose>
												<c:when test="${!pageInfo.hasPreviousPage}">
													<li class="disabled"><a href="javascript:;"> 上一页</a>
												</c:when>
												<c:otherwise>
													<li class=""><a
														href="${pageContext.request.contextPath }/stock/getStockList.html?pageNo=${pageInfo.pageNum-1}">
															上一页</a>
													</li>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${!pageInfo.hasNextPage}">
													<li class="disabled"><a href="javascript:;">下一页 </a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href="${pageContext.request.contextPath }/stock/getStockList.html?pageNo=${pageInfo.pageNum+1}">下一页
													</a></li>
												</c:otherwise>
											</c:choose>
											<li><a
												href="${pageContext.request.contextPath }/stock/getStockList.html?pageNo=${pageInfo.lastPage}">尾页</a>
											</li>
										</ul>
									</div>
								</div>
								<!--库房分配   结束-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- /div> -->
</body>
</html>
