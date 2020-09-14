<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title><dec:title default="Trang chủ" /></title>

<!-- css -->
<link href="<c:url value='/template/login/css/home.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/common/all.min.css' />"
	rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<!-- header -->
	<%@ include file="/common/login/header.jsp"%>
	<!-- header -->

	<div class="container">
		<dec:body />
	</div>

	<!-- footer -->
	<%@ include file="/common/login/footer.jsp"%>
	<!-- footer -->

</body>
</html>