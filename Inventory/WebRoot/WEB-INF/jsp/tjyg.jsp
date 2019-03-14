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

<title>弹窗-角色管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/tjyg.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/tjyg.js"></script>
</head>



<body>
	<div class="formoverlay"></div>
	<form action="${pageContext.request.contextPath}/User/tjyg.html"
		method="post" id="form1">
		<table cellpadding="0" cellspacing="0" border="0" class="formborder"
			style="z-index:99;position:absolute;left:500px;top:150px;width:440px; display: block;">
			<tbody>
				<tr>
					<td align="left" valign="top"
						style="width:440px;height: auto;background:#fff;overflow:hidden;">
						<div class="formcontentsize" style="width:auto;height:auto;">
							<!--仓库基本信息   开始-->

							<div class="layoutitem jsgl">
								<div class="lay-list">
								<h2 align="center">添加员工</h2>
									<ul>
										<!----------员工编号:-------- -->
										<li>
											<div class="lay-js">
												<label class="iten-js"> 员工编号:</label> <input class="jsedit"
													type="text" maxlength="66" id="userSerial"
													name="userSerial"> <span id="spanId"></span>
											</div> <!----------所属部门:-------- -->
											<div class="lay-js">
												<label class="iten-js"> 所属部门:</label> <input class="jsedit"
													type="text" maxlength="66" id="userFunction"
													name="userFunction">
											</div></li>
										<!--------员工账号:---------- -->
										<li>
											<div class="lay-js">
												<label class="iten-js"> 员工账号:</label> <input class="jsedit"
													type="text" maxlength="66" id="userAccount"
													name="userAccount"><span id="spanId"></span>
											</div> <!----------员工密码:-------- -->
											<div class="lay-js">
												<label class="iten-js"> 员工密码:</label> <input class="jsedit"
													type="password" maxlength="66" id="userPassword"
													name="userPassword">
											</div></li>
										<!------员工姓名:---联系电话:--------- -->
										<li>
											<div class="lay-js">
												<label class="iten-js"> 员工姓名:</label> <input class="jsedit"
													type="text" maxlength="66" id="userName" name="userName">
											</div>
											<div class="lay-js">
												<label class="iten-js"> 联系电话:</label> <input class="jsedit"
													type="text" maxlength="66" id="userPhone" name="userPhone">
											</div></li>
										<!-----------备注:------- -->
										<li style="height:auto;">
											<div class="lay-js1">
												<label class="iten-js"> 备注:</label>
												<textarea class="text-js" colspan="3"></textarea>
											</div></li>
									</ul>
								</div>
							</div>
							<!--仓库基本信息   结束-->
							<!--联系人信息   开始-->
							<div class="layoutitem-add">
								<input type="button" id="sumiId" value="提交" /> <a
									href="${pageContext.request.contextPath }/User/selectUser.html"
									class="tc" onclick="window.close();">退出</a>
							</div>
						</div></td>
				</tr>
			</tbody>
		</table>
		<!--弹窗 仓库管理开始-->
	</form>
</body>
</html>
