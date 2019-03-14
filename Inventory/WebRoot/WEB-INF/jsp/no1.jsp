<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单列表</title>
    
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
                            <a href="${pageContext.request.contextPath }/User/index.html">首页</a>
                        </li>
                        <li class="l-select">
                            <a href="${pageContext.request.contextPath }/User/index.html">订单列表</a>
                            <span class="close"></span>
                        </li>
                    </ul>
                </div>

                <div class="l-tab-content" style="background:#fff;">
                    <div class="tab-content-item">
                        <div class="home">
                            <!--员工管理   开始-->
                            <div class="yg-gl">
                                <div class="yg-add">
                                    <button class="ui-xz" data-method="offset">新增</button>
                                    <button class="ui-xz1" data-method="offset">删除</button>
                                    <button class="ui-xz2" data-method="offset">编辑</button>
                                </div>
                                <div class="yg-tab">
                                    <div class="grid">
                                        <div class="layoutitem" style="width:100%;border:none;">
                                            <form method="post">
                                                <table class="gridbar" border="0" cellpadding="0" cellspacing="0">
                                                    <thead>
                                                    <tr>
                                                        <th scope="col">商品名称</th>
                                                        <th scope="col">数量</th>
                                                        <th>供应商名称</th>
                                                        <th>计划日期</th>
                                                        <!--<th>员工角色</th>
                                                        <th>员工真实姓名</th>
                                                        <th>手机号码</th>
                                                        <th>QQ号</th>
                                                        <th>微信账号</th>
                                                        <th>注册账号的时间</th>-->
                                                    </tr>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>170525123</td>
                                                        <td>小丫头</td>
                                                        <td>123456a</td>
                                                        <!--<td>销售人员</td>
                                                        <td>王思怡</td>
                                                        <td>13445987512</td>
                                                        <td>1032658754</td>
                                                        <td>cb-12365r</td>
                                                        <td>2017-05-25</td>-->
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>170525123</td>
                                                        <td>小丫头</td>
                                                        <td>123456a</td>
                                                        <!--<td>销售人员</td>
                                                        <td>王思怡</td>
                                                        <td>13445987512</td>
                                                        <td>1032658754</td>
                                                        <td>cb-12365r</td>
                                                        <td>2017-05-25</td>-->
                                                    </tr>
                                                    </thead>
                                                </table>
                                            </form>
                                        </div>
                                        <div class="pagin">
                                            <div class="message">共<i class="blue">1256</i>条记录，当前显示第&nbsp;<i
                                                    class="blue">2&nbsp;</i>页
                                            </div>
                                            <ul class="paginList">
                                                <li class="paginItem"><a href="#"><span class="pagepre"><img
                                                        src="img/jt1.png"></span></a></li>
                                                <li class="paginItem"><a href="#">1</a></li>
                                                <li class="paginItem current"><a href="#">2</a></li>
                                                <li class="paginItem"><a href="#">3</a></li>
                                                <li class="paginItem"><a href="#">4</a></li>
                                                <li class="paginItem"><a href="#">5</a></li>
                                                <li class="paginItem more"><a href="#">...</a></li>
                                                <li class="paginItem"><a href="#">10</a></li>
                                                <li class="paginItem"><a href="#"><span class="pagenxt"><img
                                                        src="img/jt.png"></span></a></li>
                                            </ul>
                                        </div>
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
<!-- </div> -->
  </body>
</html>
