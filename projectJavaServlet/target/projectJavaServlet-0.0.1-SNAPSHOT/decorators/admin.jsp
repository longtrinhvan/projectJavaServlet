<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin</title>
<!-- css -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="<c:url value='/template/admin/css/admin.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/common/all.min.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/admin/css/bootstrap.min.css' />"
	rel="stylesheet" type="text/css" media="all" />
<script src="<c:url value='/template/admin/js/bootstrap.min.js'/>"></script>
<script src="<c:url value='/template/admin/js/jquery-3.3.1.min.js'/>"></script>
<script
	src="<c:url value='/template/paging/jquery.twbsPagination.js' />"
	type="text/javascript"></script>

<link href="<c:url value='/template/admin/css/adminNew.css' />"
	rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value='/template/admin/css/adminEditNew.css' />"
	rel="stylesheet" type="text/css" media="all" />

<script src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
</head>
<body>
	<!-- header -->
	<%@ include file="/common/admin/header.jsp"%>
	<!-- header -->

	<main class="right-layout">
		<div class="right-layout__top">
			<div class="logout">
				<a
					href="<c:url value ='thoat?action=logout'/>"><i
					class="fas fa-user-alt-slash"></i>Thoát</a>
			</div>
		</div>
		<div class="container">
			<dec:body />
		</div>
	</main>
</body>
</html>