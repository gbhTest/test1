<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${warehouses == null }">
	<c:redirect url="warehouse/getWarehouseList.html"></c:redirect>
</c:if>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>仓库管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/index.css"/>
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
    <!-- 动态菜单JS -->
    <script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
    <script type="text/javascript">

    </script>
  </head>
  
  <body>
    <!-- <div class="container"> -->
    <%@include file="/WEB-INF/jsp/common/head.jsp" %>
    <%@include file="/WEB-INF/jsp/common/left_menu.jsp" %>
    <div class="right-menu">
        <div class="main-hd">
            <div class="page-teb">
                <div class="l-tab-links">
                    <ul style="left:0;">
                        <li class="l-select">
                            <a href="#" style="padding:0px 25px;">首页</a>
                        </li>
                        <li class="l-select">
                            <a href="${pageContext.request.contextPath }/User/index.html">仓库管理</a>
                            <span class="close"></span>
                        </li>
                    </ul>
                </div>

                <div class="l-tab-content" style="background:#fff;">
                    <div class="tab-content-item">
                        <div class="home">
                            <!--仓库管理  开始-->
                            <div class="rightinfo">
                                <div class="tools">
                                    <ul class="toolbar">
                                        <li class="click" style="margin-left: 25px">
                                            <a href="${pageContext.request.contextPath }/warehouse/toAddCk.html">
                                                <span style="padding-top: 5px"><img src="${pageContext.request.contextPath }/statics/img/add.png"></span>
                                                添加
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <ul class="imglist">
                                    <c:forEach items="${warehouses }" var="warehouses" varStatus="status">
                                    	<li>
                                        <span><a href="#"><img src="${pageContext.request.contextPath }/statics/img/kf0${status.index+1 }.png"></a></span>

                                        <h2>${warehouses.warehouseAppellative}</h2>

                                        <p><a href="${pageContext.request.contextPath }/warehouse/getWarehouseById/${warehouses.id}">查看</a></p>
                                    </li>
                                    </c:forEach>
                                    <li>
                                        <span><a href="${pageContext.request.contextPath }/warehouse/toAddCk.html"><img src="${pageContext.request.contextPath }/statics/img/kf-add.png"></a></span>

                                        <h2>添加仓库</h2>

                                    </li>
                                </ul>
                            </div>
                            <!--仓库管理  结束-->
                            <!--弹窗 仓库管理开始-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- </div> -->
  </body>
</html>
