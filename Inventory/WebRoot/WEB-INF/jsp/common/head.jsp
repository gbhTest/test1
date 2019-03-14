<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'head.jsp' starting page</title>

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
	
	<style type="text/css">
		.cont-top-middle ul li{
			display: inline;
			margin-left: 70px;
			padding-top: 13px;
		}
	</style>
</head>

<body>

	<div class="cont-top">
		<div class="companyname">进销存</div>
		<div class="cont-top-middle">
			<ul>
				<li><a
					href="${pageContext.request.contextPath }/User/index.html">
						<div class="top-middle">
							<img src="${pageContext.request.contextPath }/statics/img/Aa.jpg">
						</div>
						<div class="top-txt">首页</div> </a></li>

				<c:if
					test="${user.userFunction == '经理' || user.userFunction == '仓库管理部' }">
					<li><a
						href="${pageContext.request.contextPath }/stock/getQuery.html">
							<div class="top-middle">
								<img
									src="${pageContext.request.contextPath }/statics/img/Af.jpg">
							</div>
							<div class="top-txt">入库管理</div> </a></li>
				</c:if>
				<c:if
					test="${user.userFunction == '经理' || user.userFunction == '销售部' }">
					<li><a
						href="${pageContext.request.contextPath }/Client/ClientList.html">
							<div class="top-middle">
								<img
									src="${pageContext.request.contextPath }/statics/img/Ae.ico">
							</div>
							<div class="top-txt">客户管理</div> </a></li>
				</c:if>
				<c:if
					test="${user.userFunction == '经理' || user.userFunction == '采购部' }">
					<li><a
						href="${pageContext.request.contextPath }/Supplier/ListSupplier.html">
							<div class="top-middle">
								<img
									src="${pageContext.request.contextPath }/statics/img/Af.jpg">
							</div>
							<div class="top-txt">供应商管理</div> </a></li>
				</c:if>
				<c:if
					test="${user.userFunction == '经理' || user.userFunction == '财务部' }">
					<li><a
						href="${pageContext.request.contextPath }/orderCargo/gyswlz.html">
							<div class="top-middle">
								<img
									src="${pageContext.request.contextPath }/statics/img/Ac.jpg">
							</div>
							<div class="top-txt">供应商往来账</div> </a></li>
				</c:if>
				<c:if test="${user.userFunction == '经理' }">
					<li><a
						href="${pageContext.request.contextPath }/User/selectUser.html">
							<div class="top-middle">
								<img
									src="${pageContext.request.contextPath }/statics/img/Ab.png">
							</div>
							<div class="top-txt">角色管理</div> </a></li>
				</c:if>
			</ul>
		</div>
		<div class="cont-top-rg">
			<ul class="advanced-menu" style="float:right">

				<li class="default" style="position:relative;"><span
					class="user"><img
						src="${pageContext.request.contextPath }/statics/img/user.png">
				</span> <a href="#" class="special">${user.userName}</a></li>
				<li><a href="javascript:;"
					onclick="alert('本软件最终解释权归郑州星宇软件科技有限公司所有！')"><img
						src="${pageContext.request.contextPath }/statics/img/top-icon3.png">
				</a></li>
				<li><a href="javascript:;" onclick="history.go(-1);"><img
						src="${pageContext.request.contextPath }/statics/img/top-icon4.png">
				</a></li>
				<li><a
					href="${pageContext.request.contextPath }/User/logout.html"><img
						src="${pageContext.request.contextPath }/statics/img/top-icon5.png">
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
