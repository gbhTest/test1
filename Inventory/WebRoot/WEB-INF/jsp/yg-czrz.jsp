<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工-操作日志</title>
    
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
                            <a href="${pageContext.request.contextPath }/User/index.html" style="padding:0 25px;">首页</a>
                        </li>
                        <li class="l-select">
                            <a href="${pageContext.request.contextPath }/User/index.html">员工操作日志</a>
                            <span class="close"></span>
                        </li>
                    </ul>
                </div>

                <div class="l-tab-content" style="background:#fff;">
                    <div class="tab-content-item">
                        <div class="home">
                            <!--员工管理   开始-->
                            <div class="yg-gl">
                                <div class="yg-add" style="height:48px;">
                                    <ul class="inline-rr">
                                        <li class="frr">
                                            <input type="text" class="ui-rr ui-rr-img" name="beijingdate">
                                            <span>至</span>
                                            <input type="text" class="ui-rr ui-rr-img" name="enddate">
                                        </li>
                                        <li class="frr">
                                            <select class="ui-combo">
                                                <option value="所有用户">所有用户</option>
                                                <option value="小丫头">小丫头</option>
                                            </select>
                                        </li>
                                        <li class="frr">
                                            <select class="ui-combo">
                                                <option value="所有操作">所有操作</option>
                                                <option value="修改仓储">修改仓储</option>
                                                <option value="新增仓储">新增仓储</option>
                                            </select>
                                        </li>
                                    </ul>
                                </div>

                                <div class="yg-tab">
                                    <div class="grid">
                                        <div class="layoutitem" style="width:100%;border:none;">
                                            <form method="post">
                                                <table class="gridbar" border="0" cellpadding="0" cellspacing="0">
                                                    <thead>
                                                    <tr>
                                                        <th>日期</th>
                                                        <th>ID</th>
                                                        <th>用户名</th>
                                                        <th>员工姓名</th>
                                                        <th>操作日志</th>
                                                        <th>操作IP</th>

                                                    </tr>
                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>

                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>

                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>
                                                    </tr>

                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>
                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>20161254865</td>
                                                        <td>xiaoyatou-li</td>
                                                        <td>小丫头</td>
                                                        <td>系统登陆</td>
                                                        <td>183.197.16.26</td>
                                                    </tr>
                                                    <tr class="odd-l">
                                                        <td>2017:06:19 15:37:01</td>
                                                        <td>1236485</td>
                                                        <td>在乙方</td>
                                                        <td>小丫头</td>
                                                        <td>查询商品库存余额表</td>
                                                        <td>183.197.16.230</td>
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
                                                        src="${pageContext.request.contextPath }/statics/img/jt1.png"></span></a></li>
                                                <li class="paginItem"><a href="#">1</a></li>
                                                <li class="paginItem current"><a href="#">2</a></li>
                                                <li class="paginItem"><a href="#">3</a></li>
                                                <li class="paginItem"><a href="#">4</a></li>
                                                <li class="paginItem"><a href="#">5</a></li>
                                                <li class="paginItem more"><a href="#">...</a></li>
                                                <li class="paginItem"><a href="#">10</a></li>
                                                <li class="paginItem"><a href="#"><span class="pagenxt"><img
                                                        src="${pageContext.request.contextPath }/statics/img/jt.png"></span></a></li>
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