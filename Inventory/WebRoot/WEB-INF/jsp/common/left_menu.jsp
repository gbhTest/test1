<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'left_menu.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<div class="left-menu" style="height:949px;">
		<div class="menu-list">
			<ul>
				<li class="menu-list-01"><a>
						<p class="fumenu">库存管理</p> <img class="xiala"
						src="${pageContext.request.contextPath }/statics/img/xiala.png" />
				</a> <c:if
						test="${user.userFunction == '经理' || user.userFunction == '仓库管理部' }">
						<div class="list-p">
							<a href="${pageContext.request.contextPath }/stock/getQuery.html"><p
									class="zcd" id="rkgl">入库管理</p>
							</a> <a
								href="${pageContext.request.contextPath }/stock/getStockList.html"><p
									class="zcd" id="kcpd">库存盘点</p>
							</a> <a
								href="${pageContext.request.contextPath }/warehouse/getWarehouseList.html"><p
									class="zcd" id="kcgl">仓库管理</p>
							</a> <a
								href="${pageContext.request.contextPath }/Allacotion/index.html"><p
									class="zcd" id="dhgl">调货管理</p>
							</a>
						</div>
					</c:if>
				</li>


				<li class="menu-list-02"><a>
						<p class="fumenu">销售管理</p> <img class="xiala"
						src="${pageContext.request.contextPath }/statics/img/xiala.png" />
				</a> <c:if
						test="${user.userFunction == '经理'|| user.userFunction == '销售部' }">
						<div class="list-p">
							<a href="${pageContext.request.contextPath }/CustomerOrder/query.html"><p class="zcd"
									id="xscx">销售查询</p>
							</a> <a href="${pageContext.request.contextPath }/Goods/getGoods.html"><p class="zcd"
									id="spgl">商品管理</p>
							</a> <a href="${pageContext.request.contextPath }/Client/ClientList.html"><p class="zcd"
									id="khgl">客户管理</p>
							</a>
						</div>
					</c:if>
				</li>


				<li class="menu-list-01"><a>
						<p class="fumenu">采购管理</p> <img class="xiala"
						src="${pageContext.request.contextPath }/statics/img/xiala.png" />
				</a> <c:if
						test="${user.userFunction == '经理' || user.userFunction == '采购部' }">
						<div class="list-p div3">
							<a
								href="${pageContext.request.contextPath }/orderPlan/selectOrderPlan.html"><p
									class="zcd" id="cgddjh">采购订单计划</p> </a> <a
								href="${pageContext.request.contextPath }/Supplier/ListSupplier.html"><p
									class="zcd" id="gysgl">供应商管理</p> </a>
						</div>
					</c:if>
				</li>


				<li class="menu-list-02"><a>
						<p class="fumenu">财务管理</p> <img class="xiala"
						src="${pageContext.request.contextPath }/statics/img/xiala.png" />
				</a> <c:if
						test="${user.userFunction == '经理' || user.userFunction == '财务部' }">
						<div class="list-p">
                       <a href="${pageContext.request.contextPath }/orderCargo/gyswlz.html">
                        	<p class="zcd" id="gyswlz">供应商往来账</p>
                        </a>
                        <a href="${pageContext.request.contextPath }/CustomerOrder/khwlz.html">
                        	<p class="zcd" id="khwlz">客户往来账</p>
                        </a>
                    </div>
					</c:if>
				</li>

				<c:if
					test="${user.userFunction == '经理' ||  user.userAccount == 'admin'}">
					<li class="menu-list-01"><a>
							<p class="fumenu">员工管理</p> <img class="xiala"
							src="${pageContext.request.contextPath }/statics/img/xiala.png" />
					</a>
						<div class="list-p div5">
							<a
								href="${pageContext.request.contextPath }/User/selectUser.html"><p
									class="zcd" id="cxyh">角色管理</p> </a>
						</div>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>
