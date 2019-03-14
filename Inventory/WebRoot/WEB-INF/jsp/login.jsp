<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/js/layui/css/layui.css" />
	<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/js/layui/css/modules/layer/default/layer.css" />
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"
	type="text/javascript"></script>

<script src="${pageContext.request.contextPath }/statics/js/login.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/layui/layui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/layui/lay/modules/layer.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/bootstrap.js"></script>
<style>
body {
	text-align: center;
}

h1 {
	margin: 200px 0 20px 0px;
	color: white;
}
</style>
</head>

<body oncontextmenu="return false">
	<input type="hidden" id="path"
		value="${pageContext.request.contextPath }" />
	<div class="page-container col-md-12 col-sm-12"
		style="background: url('${pageContext.request.contextPath }/statics/img/nmlgb.png');background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
		<h1>登录</h1>

		<div style="margin: 5px 0 20px 0px; ">
			<input type="text" id="userAccount" name="userAccount"
				class="input-lg userAccount" autocomplete="off" placeholder="员工账号" />
		</div>
		<div style="margin: 5px 0 20px 0px">
			<input type="password" id="userPassword" name="userPassword"
				class="input-lg userPassword" oncontextmenu="return false"
				onpaste="return false" placeholder="密码" />
		</div>
		<input type="submit" id="submit" class="submit input-lg btn-danger"
			style="margin: 5px 0 20px 0px; border:none;width: 250px" value="登入">
		<div style="margin:50px 0 134px 30px;color: white;font-size: 20px ">
			<p>攀登山顶的脚力，生于“欲穷千里目”的壮心和“不到长城非好汉”的意志。</p>
			<p style="margin:20px 0 0 0px;">在难过的时候，不要忘记自己还要前进。</p>
		</div>
	</div>
</body>
</html>
