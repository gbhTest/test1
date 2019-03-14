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
	<script src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/gysgl-add.js"></script>
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
					<!--  style="background:#fff;" -->
					<div class="l-tab-content">
						<form
							action="${pageContext.request.contextPath }/Supplier/SupplierAdd.html"
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
													<div class="layout-tit">添加供应商信息</div>
													<div class="layout-xx">
														<ul>
															<li>
																<div class="item-input">
																	<label class="item-label"> 供应商编号</label> <input
																		type="text" id="supplierCode" name="supplierCode"
																		class="layoutitemcon" maxlength="50" />*<span
																		id="spanId"></span>
																</div>
																<div class="item-input">
																	<label class="item-label">供应商名称</label><input
																		type="text" id="supplierGroup" name="supplierGroup"
																		class="layoutitemcon" maxlength="50" />*
																</div></li>

															<li>
																<div class="item-input">
																	<label class="item-label">供应商姓名</label> <input
																		type="text" class="layoutitemcon" maxlength="50"
																		id="supplierName" name="supplierName" />*
																</div>
																<div class="item-input">
																	<label class="item-label"> 供应商地址</label><input
																		class="layoutitemcon" maxlength="50" type="text"
																		id="supplierAddress" name="supplierAddress" />*
																</div></li>
															<li>
																<div class="item-input">
																	<label class="item-label"> 供应商电话</label> <input
																		class="layoutitemcon" maxlength="50" type="text"
																		id="supplierPhone" name="supplierPhone" />*
																</div>
																<div class="item-input">
																	<label class="item-label">供应商Email</label> <input
																		class="layoutitemcon" maxlength="50" type="text"
																		id="email" name=email />*
																</div></li>

														</ul>
													</div>
												</div>
												<!--仓库基本信息   结束-->

												<div class="layoutitem-add">
													<a href="javascript:;" id="add" class="add">添加</a>
													 <a
														href="${pageContext.request.contextPath }/Supplier/ListSupplier.html"
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
<script>
	$(function(){
		$("#add").click(function(){
			$("form").submit();
		});
	});
</script>
</html>
