<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>客户管理</title>
<link type="text/css" rel="stylesheet"
	href="${path}/statics/css/style.css" />
<link type="text/css" rel="stylesheet"
	href="${path}/statics/css/index.css" />
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<script src="${path}/statics/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/statics/js/menu.js"></script>
<script src="${path}/statics/js/jquery-1.12.4.js"></script>
<input type="hidden" id="path" value="${path}" />
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
						<li class="l-select"><a href="${pageContext.request.contextPath }/User/index.html">客户管理</a>
							<span class="close"></span>
						</li>
					</ul>
				</div>
				<form action="${path}/" method="get">
					<div class="l-tab-content" style="background:#fff;">
						<div class="tab-content-item">
							<div class="home">
								<!--员工管理   开始-->
								<div class="yg-gl">
									<div class="con-header">
										<ul class="ui-inline">
											<li><input type="text" class="ui-kh" name="clientName"
												id="clientName" placeholder="请输入客户姓名"></li>
											<li>
												<button type="submit" class="ui-btn11 ui-btn-search">查询</button>
											</li>
											<li>
												<button type="button" class="ui-xz" style="left:500px"
													onclick="goAdd();">新增</button></li>
										</ul>
									</div>
				</form>
				<div class="yg-tab">
					<div class="grid">
						<div class="layoutitem" style="width:100%;border:none;">
							<form method="post">
								<table class="gridbar" border="0" cellpadding="0"
									cellspacing="0">
									<thead>
										<tr>
											<th scope="col">ID</th>
											<th>客户姓名</th>
											<th>客户电话</th>
											<th>客户地址</th>
											<th>客户邮箱</th>
											<th>操作</th>
										</tr>
										<c:forEach items="${pageInfo.list}" var="i" varStatus="a">
											<tr>
												<td>${a.count}</td>
												<td>${i.clientName }</td>
												<td>${i.clientPhone }</td>
												<td>${i.clientAddress }</td>
												<td>${i.clientEmail }</td>
												<td><a
													href="${path}/Client/getModification.html?id=${i.id}"><img
														src="${path}/statics/img/xg1.png"> </a><a
													href="${path}/Client/ClientDel.html?id=${i.id}" id="sc"><img
														src="${path}/statics/img/dele.png"> </a></td>
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
								href="${pageContext.request.contextPath }/Client/ClientList.html?pageNo=${pageInfo.firstPage}">首页</a>
							</li>
							<c:choose>
								<c:when test="${!pageInfo.hasPreviousPage}">
									<li class="disabled"><a href="javascript:;"> 上一页</a>
								</c:when>
								<c:otherwise>
									<li class=""><a
										href="${pageContext.request.contextPath }/Client/ClientList.html?pageNo=${pageInfo.pageNum-1}">
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
										href="${pageContext.request.contextPath }/Client/ClientList.html?pageNo=${pageInfo.pageNum+1}">下一页
									</a></li>
								</c:otherwise>
							</c:choose>
							<li><a
								href="${pageContext.request.contextPath }/Client/ClientList.html?pageNo=${pageInfo.lastPage}">尾页</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--员工管理   结束-->
		</div>
	</div>
	<!-- </div>
	</div>
	</div>
	</div>
	</div> -->
</body>
</html>
<script>
	function goAdd() {
		var path = document.getElementById("path").value;
		location.href = path + "/Client/getModtjkh";
	}
</script>
