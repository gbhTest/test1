<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<c:if test="${goodsList == null }">
	<c:redirect url="/CustomerOrder/getGoodsSaleNum.html"></c:redirect>
</c:if>
<c:if test="${countList == null }">
	<c:redirect url="/stock/yujing.html"></c:redirect>
</c:if>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页</title>
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
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-3.1.1.min.js"></script> --%>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/echarts.js"></script>
<title></title>
</head>

<body>
	<!-- <div class="container"> -->
		<%@include file="/WEB-INF/jsp/common/head.jsp"%>
		<%@include file="/WEB-INF/jsp/common/left_menu.jsp"%>
		<input type="hidden" id="path"
			value="${pageContext.request.contextPath }" />
		<div class="right-menu">
			<div class="main-hd">
				<div class="page-teb" style="height:887px;">
					<div class="l-tab-links">
						<ul style="left:0;">
							<li class="l-select"><a href="#" style="padding:0 25px;">首页</a>
							</li>
						</ul>
					</div>
					<div class="l-tab-content" style="height:851px;">
						<div class="tab-content-item">
							<div class="home">
								<!--成交金额-->
								<div class="space-style">
									<div class="col-xs">
										<a href="#" class="title-button bg-deep">
											<div class="carousel">
												<div class="left-img">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img1.png">
													</i>

													<p>成交金额</p>
												</div>
												<div class="right-info">4536.25元</div>
											</div> </a>
									</div>

									<div class="col-xs">
										<a href="#" class="title-button bg-red">
											<div class="carousel">
												<div class="left-img bg-color-red">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img2.png">
													</i>

													<p>订单</p>
												</div>
												<div class="right-info">4589笔</div>
											</div> </a>
									</div>

									<div class="col-xs">
										<a href="#" class="title-button bg-green">
											<div class="carousel">
												<div class="left-img bg-color-green">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img3.png">
													</i>

													<p>通知</p>
												</div>
												<div class="right-info">125条</div>
											</div> </a>
									</div>

									<div class="col-xs">
										<a href="#" class="title-button bg-orange">
											<div class="carousel">
												<div class="left-img bg-color-orange">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img4.png">
													</i>

													<p>待处理</p>
												</div>
												<div class="right-info">10条</div>
											</div> </a>
									</div>

									<div class="col-xs">
										<a href="#" class="title-button bg-purple">
											<div class="carousel">
												<div class="left-img bg-color-purple">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img5.png">
													</i>

													<p>留言</p>
												</div>
												<div class="right-info">48条</div>
											</div> </a>
									</div>

									<div class="col-xs">
										<a href="#" class="title-button bg-yellow">
											<div class="carousel">
												<div class="left-img bg-color-yellow">
													<i><img
														src="${pageContext.request.contextPath }/statics/img/left-img6.png">
													</i>

													<p>紧急通知</p>
												</div>
												<div class="right-info">${stockCount }条</div>
											</div> </a>
									</div>
								</div>
								<div id="container" style="height:650px"></div>
								<!--销售情况-->
								<div class="order-form">
									<div class="col-xs-3 col-lg-7">
										<div class="admin-info">
											<div class="title-name">
												<i></i>预警信息 <a href="${pageContext.request.contextPath }/orderPlan/AddOrder.html">+更多</a>
											</div>
											<table class="table table-list">
													<tr>
														<th>名称</th>
														<th>库存量</th>
														<th>仓库名称</th>
														<th>预警</th>
													</tr>
												<tbody>
													<c:forEach var="slist" items="${countList }"
														varStatus="status">
														<tr>
															<td>${slist.orderCargoName }</td>
															<td>${slist.stockNumber }</td>
															<td>${slist.warehouseAppellative }</td>
															<td><c:choose>
																	<c:when test="${slist.stockNumber>1000 }">否</c:when>
																	<c:otherwise>是</c:otherwise>
																</c:choose></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
									<div class="col-xs-6 ranking-style">
										<div class="frame">
											<div class="title-name">
												<i></i> 商品销售排行 <a href="#">+更多</a>
											</div>
											<table class="table table-list">
												<thead>
													<tr>
														<th >排名</th>
														<th>商品编号</th>
														<th>商品名称</th>
														<th >销售数量</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${goodsList }" var="list"
														varStatus="status">
														<tr>
															<td><em>${status.count}</em></td>
															<td>${list.goods.id }</td>
															<td><a href="#">${list.goods.goodsName }</a>
															</td>
															<td>${list.goodsSaleNum }</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- </div> -->
	<input type="hidden" class="path"
		value="${pageContext.request.contextPath }">
	<script
		src="${pageContext.request.contextPath }/statics/js/jquery-1.12.4.js"></script>
	<!-- 动态菜单JS -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/statics/js/menu.js"></script>
	<script type="text/javascript">
		var path = $("#path").val();
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;

		$.ajax({
			type : "get",
			url : path + "/CustomerOrder/toDate",
			data : {
				start : "2014-01-01",
				end : "2100-01-22"
			},
			dataType : "json",
			success : function(date) {
				data = date;

				var dateList = data.map(function(item) {
					/* var d = item.customerOrderDate;
					var d2 = d.getFullYear() + "年"+ (d.getMonth() + 1) +"月"+ d.getDate() +"日"; */
					return item.customerOrderDateString;
				});
				var valueList = data.map(function(item) {
					return item.count;
				});
				option = {
					/* visualMap : [ {
						 type : 'continuous', 
						 seriesIndex : 0, 
						min : 0,
						max : 1
					} ], */
					title : [ {
						left : 'center',
						text : '销售线状图'
					} ],
					tooltip : {
						trigger : 'axis'
					},
					xAxis : [ {
						type : 'category',
						data : dateList
					} ],
					yAxis : [ {
					/* splitLine : {
						show : false
					}  */
					} ],
					grid : [ {
						bottom : '50%'
					} ],
					series : [ {
						type : 'line',
						showSymbol : true,
						data : valueList
					} ]
				};
				;
				if (option && typeof option === "object") {
					myChart.setOption(option, true);
				}
			}
		});
	</script>

</body>
</html>
