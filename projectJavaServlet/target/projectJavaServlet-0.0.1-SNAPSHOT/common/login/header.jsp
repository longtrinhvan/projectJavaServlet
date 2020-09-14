<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->

<header class="header">
	<div class="header__menu">
		<!-- new-name -->
		<div class="header__menu--new-name">
			<a href="<c:url value ='trang-chu'/>">NEWS</a>
		</div>
		<!-- category-new -->
		<div class="header__menu header__menu--category-new">
			<a href="#">TIN NÓNG</a> <a href="#">TIN MỚI</a> <a href="#">CHỦ
				ĐỀ</a> <a href="#">VIDEO</a>
		</div>
		<!-- search-new -->
		<div class="header__menu header__menu--search-new">
			<input type="text" id="fname" name="fname">
			<div class="icon-search">
				<i class="fas fa-search"></i>
			</div>
		</div>
		<!-- account-new -->
		<div class="header__menu header__menu--account-new">
			<div class="account">
			<c:if test="${not empty USERMODEL}">
				<i class="fas fa-user-circle"></i> <a href="<c:url value ='thoat?action=logout'/>">Xin chào</a>
			</c:if>
			<c:if test="${empty USERMODEL}">
				<i class="fas fa-user-circle"></i> <a href="<c:url value ='dang-nhap?action=login'/>">Tài
					khoản</a>
			</c:if>
			</div>
		</div>
		<!--Responsive-->
	</div>
</header>