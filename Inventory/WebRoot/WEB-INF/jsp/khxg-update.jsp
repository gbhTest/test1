<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>客户管理</title>
<input type="hidden" id="path" value="${path}"/>
<link type="text/css" rel="stylesheet"
	href="${path}/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${path}/statics/css/index.css" />
<link type="text/css" rel="stylesheet"
	href="${path}/statics/css/gysgl.css" />
<script
	src="${path}/statics/js/jquery.min.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${path}/statics/js/menu.js"></script>
<script type="text/javascript"
	src="${path}/statics/js/khgl-update.js"></script>
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
							<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">新增供应商</a>
								<span class="close"></span>
							</li>
						</ul>
					</div>
					<div class="l-tab-content" style="background:#fff;">

							<table cellpadding="0" cellspacing="0" border="0"
								class="formborder"
								style="z-index:99;position:absolute;left:145px;top:40px;width:880px; display: block;">
								<tbody>
									<tr>
										<td align="left" valign="top"
											style="width:880px;height:300px;background:#fff;">
											<div class="formcontentsize" style="width:auto;height:auto;">
												<!--仓库基本信息   开始-->
												<div class="layoutitem">
													<div class="layout-tit">修改供应商信息</div>
													<div class="layout-xx">
														<input type="hidden" id="id" name="id" value="${list.id }" />
														<ul>
															<li>
																<div class="item-input">
																	<label class="item-label">客户姓名：</label> <input
																		type="text" id="clientName" class="clientName"
																		value="${list.clientName}" maxlength="50">
																</div>
																<div class="item-input">
																	<label class="item-label">客户电话：</label> <input
																		type="text" id="clientPhone" class="clientPhone"
																		value="${list.clientPhone}" maxlength="50">
																</div></li>
															<li>
																<div class="item-input">
																	<label class="item-label">客户地址：</label> <input
																		type="text" id="clientAddress" class="clientAddress"
																		value="${list.clientAddress}" maxlength="50">
																</div>
																<div class="item-input">
																	<label class="item-label">客户邮箱：</label> <input
																		type="text" id="clientEmail" class="clientEmail"
																		value="${list.clientEmail}" maxlength="50">
																</div></li>
														</ul>
													</div>
												</div>
												<div class="layoutitem-add">
													<button id="xg" class="add">修改</button>
													<a href="#" onclick="history.go(-1);" class="tc">返回</a>
												</div>
											</div></td>
									</tr>
								</tbody>
							</table>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->
</body>
</html>
