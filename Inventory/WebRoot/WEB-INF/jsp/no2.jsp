<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单管理</title>
    
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
                            <a href="${pageContext.request.contextPath }/User/index.html">订单管理</a>
                            <span class="close"></span>
                        </li>
                    </ul>
                </div>

                <div class="l-tab-content" style="background:#fff;">
                    <div class="tab-content-item">
                        <div class="home">
                            <!--订单管理   开始-->
                            <div class="ddgl-box">
                                <div class="ddgl-list">
                                    <div class="dd-fl">进货订单管理</div>
                                    <div class="dd-rg">
                                        <div class="rg-01">
                                            过滤
                                            <select class="dd-sel">
                                                <option>显示全部</option>
                                                <option>未审核订单</option>
                                                <option>审核通过订单</option>
                                            </select>
                                        </div>
                                        <div class="rg-01">
                                            <select class="dd-sel">
                                                <option>显示全部</option>
                                                <option>未审核订单</option>
                                                <option>审核通过订单</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="dd-list-top">
                                    <div class="dd-cart">
                                        <div class="column t-checkbox">
                                            <div class="cart-checkbox">
                                                <input type="checkbox" class="jdcheckbox">
                                                全选
                                            </div>

                                        </div>
                                        <div class="column t-goods">商品</div>
                                        <div class="column tbh">订单编号</div>
                                        <div class="column t-props"></div>
                                        <div class="column t-price">单价</div>
                                        <div class="column t-quantity">数量</div>
                                        <div class="column t-sum">小计</div>
                                        <div class="column t-quantity">状态</div>
                                        <div class="column t-action"> 操作</div>
                                        <div class="column t-quantity">备注</div>
                                    </div>
                                    <div class="cart-list">
                                        <div class="cart-item-list">
                                            <div class="cart-tbody">
                                                <div class="shop">
                                                    <div class="cart-checkbox">
                                                        <input type="checkbox" class="jdcheckbox">
                                                    </div>
              <span class="shop-title">
               <a href="#" class="shop-name">首耀照明旗舰店</a>
              </span>

                                                    <div class="shop-extra">已免运费</div>
                                                </div>
                                            </div>

                                            <div class="item-list">
                                                <div class="tiem-last">
                                                    <!-- 增加列表数量-->
                                                    <div class="item-form">
                                                        <div class="cell t-checkbox">
                                                            <div class="cart-checkbox">
                                                                <input type="checkbox" class="jdcheckbox">
                                                            </div>
                                                        </div>

                                                        <div class="cell p-goods">
                                                            <div class="goods-item">
                                                                <div class="p-img">
                                                                    <a href="#" class="j-aa"><img
                                                                            src="${pageContext.request.contextPath }/statics/img/kf02.png"></a>
                                                                </div>
                                                                <div class="item-msg">
                                                                    <div class="p-name">
                                                                        <a href="#">产品介绍产品介绍产品介绍产品介绍产品介绍</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="cell tbh">2017052356251</div>
                                                        <div class="cell t-price"> ￥256</div>
                                                        <div class="cell t-quantity"> ×2</div>
                                                        <div class="cell t-sum">￥256</div>
                                                        <div class="cell t-quantity">交易完成</div>
                                                        <div class="cell t-action">
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/dele.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/xg1.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/add1.png" alt=""
                                                                             style="width: 14px;height: 14px"/></a>
                                                        </div>
                                                        <div class="cell t-quantity">无</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!--第二个列表-->
                                        <div class="cart-item-list">
                                            <div class="cart-tbody">
                                                <div class="shop">
                                                    <div class="cart-checkbox">
                                                        <input type="checkbox" class="jdcheckbox">
                                                    </div>
              <span class="shop-title">
               <a href="#" class="shop-name">首耀照明旗舰店</a>
              </span>

                                                    <div class="shop-extra">已免运费</div>
                                                </div>
                                            </div>

                                            <div class="item-list">
                                                <div class="tiem-last">
                                                    <!-- 增加列表数量-->
                                                    <div class="item-form">
                                                        <div class="cell t-checkbox">
                                                            <div class="cart-checkbox">
                                                                <input type="checkbox" class="jdcheckbox">
                                                            </div>
                                                        </div>

                                                        <div class="cell p-goods">
                                                            <div class="goods-item">
                                                                <div class="p-img">
                                                                    <a href="#" class="j-aa"><img
                                                                            src="${pageContext.request.contextPath }/statics/img/kf02.png"></a>
                                                                </div>
                                                                <div class="item-msg">
                                                                    <div class="p-name">
                                                                        <a href="#">产品介绍产品介绍产品介绍产品介绍产品介绍</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="cell tbh">2017052356251</div>
                                                        <div class="cell t-price"> ￥256</div>
                                                        <div class="cell t-quantity"> ×2</div>
                                                        <div class="cell t-sum">￥256</div>
                                                        <div class="cell t-quantity">交易完成</div>
                                                        <div class="cell t-action">
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/dele.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/xg1.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/add1.png" alt=""
                                                                             style="width: 14px;height: 14px"/></a>
                                                        </div>
                                                        <div class="cell t-quantity">无</div>
                                                    </div>
                                                    <div class="item-form">
                                                        <div class="cell t-checkbox">
                                                            <div class="cart-checkbox">
                                                                <input type="checkbox" class="jdcheckbox">
                                                            </div>
                                                        </div>

                                                        <div class="cell p-goods">
                                                            <div class="goods-item">
                                                                <div class="p-img">
                                                                    <a href="#" class="j-aa"><img
                                                                            src="${pageContext.request.contextPath }/statics/img/kf02.png"></a>
                                                                </div>
                                                                <div class="item-msg">
                                                                    <div class="p-name">
                                                                        <a href="#">产品介绍产品介绍产品介绍产品介绍产品介绍</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="cell tbh">
                                                            2017052356251
                                                        </div>

                                                        <div class="cell t-price">
                                                            ￥256
                                                        </div>

                                                        <div class="cell t-quantity">
                                                            ×2
                                                        </div>

                                                        <div class="cell t-sum">￥256</div>
                                                        <div class="cell t-quantity">交易完成</div>
                                                        <div class="cell t-action">
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/dele.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/xg1.png"></a>
                                                            <a href="#"><img src="${pageContext.request.contextPath }/statics/img/add1.png" alt=""
                                                                             style="width: 14px;height: 14px"/></a>
                                                        </div>
                                                        <div class="cell t-quantity">无</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--订单管理   结束-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- </div> -->
  </body>
</html>
