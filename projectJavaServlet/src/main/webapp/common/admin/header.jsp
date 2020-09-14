<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- header -->

<header class="left-layout">
	<div class="left-layout__account">
		<div class="left-layout__account--img">
			<img src="<c:url value='/template/picture/sancho.jpg'/>">
		</div>
		<div class="left-layout__account--name">
			<a class="account--name" style="text-decoration: none" href="#">TRỊNH
				VĂN LONG </a>
		</div>
	</div>
	<div class="left-layout__menu">
		<div class="left-layout__menu--nv1">
			<div class="boder__menu-nv1">
				<i class="far fa-newspaper"></i> <a style="text-decoration: none"
					href="<c:url value='admin-new?type=list&page=1&maxPageItem=4&sortName=title&sortBy=desc'/>" class="menu-nv1">QUẢN LÝ BÀI ĐĂNG</a>
			</div>
			<div class="boder__menu-nv1">
				<i class="fas fa-user"></i> <a style="text-decoration: none"
					href="#" class="menu-nv1" id="menu-nv1">QUẢN LÝ TÀI KHOẢN</a>
			</div>
			<div class="boder__menu-nv1">
				<i class="fas fa-comments"></i> <a style="text-decoration: none"
					href="#" class="menu-nv1">QUẢN LÝ BÌNH LUẬN</a>
			</div>
		</div>
	</div>
</header>