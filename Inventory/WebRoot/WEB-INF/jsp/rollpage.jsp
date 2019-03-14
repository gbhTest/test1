<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
</script>
</head>
<body>
	<c:set var="totalCount" value="${pb.totalCount}"></c:set>
	<div class="" align="center" style="width: 2000px">
		<ul class="page-num-ul clearfix">
			<li><c:if test="${param.currPageNo > 1}">
					<a href="${pageContext.request.contextPath }/User/selectUser.html?from=1">
					<span><img src="${pageContext.request.contextPath }/statics/img/home.png"></span></a>
					<a style=""href="${pageContext.request.contextPath }/User/selectUser.html?from=${pb.currentPageNo-1}">
					<span><img src="${pageContext.request.contextPath }/statics/img/shangyiye.png.png"></span></a>
				</c:if> <c:if test="${pb.currentPageNo < pb.totalPageCount }">
					<a href="${pageContext.request.contextPath }/User/selectUser.html?from=${pb.currentPageNo+1}">
					<span><img src="${pageContext.request.contextPath }/statics/img/right-circle.png"></span></a>
					<a  href="${pageContext.request.contextPath }/User/selectUser.html?from=${pb.totalPageCount}"><img src="${pageContext.request.contextPath }/statics/img/trailer.png" ></a>
				</c:if> 共${pb.totalCount}条记录 ${pb.currentPageNo}/${pb.totalPageCount}页</li>
		</ul>
	</div>
</body>
</html>