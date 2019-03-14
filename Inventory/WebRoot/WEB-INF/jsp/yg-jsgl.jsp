<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>员工-角色管理</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/index.css" />
<script
	src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
<!-- 动态菜单JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
</head>
<body>
	<%@include file="/WEB-INF/jsp/common/head.jsp"%>
	<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
	<div class="right-menu">
		<div class="main-hd">
			<div class="page-teb">
				<div class="l-tab-links">
					<ul style="left:0;">
						<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html" style="padding:0 25px;">首页</a>
						</li>
						<!-- 关闭毛病 -->
						<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">角色管理</a> <span class="close"></span>
						</li>
					</ul>
				</div>

				<div class="l-tab-content" style="background:#fff;">
					<div class="tab-content-item">
						<div class="home">
							<!--员工管理   开始-->
							<div class="yg-gl">
								<!-- 模糊查询员工 -->
								<div class="yg-search" align="center">
									<form
										action="${pageContext.request.contextPath }/User/selectUser.html"
										method="post">
											<div class="con-header">
											<ul class="ui-inline">
												<li>
													<input name="userName" type="text" class="ui-kh"placeholder="请输入员工姓名" />
													<button   class="ui-btn11 ui-btn-search" style="margin-left: 20px">查询</button>
												</li>
											</ul>
										</div>
										</form> 
										
										<!-- 添加员工 -->
										<div>
											<a  href="${pageContext.request.contextPath }/User/AddUser.html"> <span>
											<img src="${pageContext.request.contextPath }/statics/img/add.png">
												</span></a>
										</div>
								</div>



								<!-- 显示员工全部  操作员工 -->
								<div class="yg-tab">
									<div class="grid">
										<div class="layoutitem" style="width:100%;border:none;">
											<table class="gridbar" border="0" cellpadding="0"
												cellspacing="0">
												<thead>
													<tr>
														<th>员工编号</th>
														<th>员工账号</th>
														<th>员工名称</th>
														<th>员工部门</th>
														<th>员工电话</th>
														<th>操作</th>
													</tr>
													<c:forEach items="${list}" var="li">
														<tr>
															<td>${li.userSerial}</td>
															<td>${li.userAccount}</td>
															<td>${li.userName}</td>
															<td>${li.userFunction}</td>
															<td>${li.userPhone}</td>
															<td><a
																href="${pageContext.request.contextPath }/User/${li.id}/Alter.html"><img src="${pageContext.request.contextPath }/statics/img/xg1.png"/></a>
															</td>
														</tr>
													</c:forEach>
												</thead>
											</table>
										</div>

										<!-- 分页   连接  rollpage.jsp-->
										<div class="pagin">
											<input type="hidden" id="totalPageCount"
												value="${pb.totalCount}">
											<c:import url="rollpage.jsp">
												<c:param name="totalCount" value="${pb.totalCount}" />
												<c:param name="currPageNo" value="${pb.currentPageNo}" />
												<c:param name="totalPageCount" value="${pb.totalPageCount}" />
											</c:import>
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
	</div>
</body>
</html>
