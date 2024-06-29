<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- add thư viện -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-hzBOifH8TI3YmZjHjPnpxzV7cJIZbRfi6L6KdhopcN4Up9XCBwyDtgxFpjv8bG2z"
	crossorigin="anonymous" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous" />
<!-- boostrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/animate.css">


<!-- animation -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href=" https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css">

<!-- add css  -->
<link rel="stylesheet" href="./css/phone.css">
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/user.css">
<title>Profile</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>

	<form action="ProfileServlet?action=update" method="post">
		<div class="username">
			<b>${user.hoten}</b>
		</div>
		<div class="message">
			<!-- Hiển thị errorMessage nếu có -->
			<c:if test="${not empty errorMessage}">
				<p style="color: red;">
					<c:out value="${errorMessage}" />
				</p>
			</c:if>

			<!-- Hiển thị successMessage nếu có -->
			<c:if test="${not empty successMessage}">
				<p style="color: green;">
					<c:out value="${successMessage}" />
				</p>
			</c:if>
			<c:if test="${not empty requestScope.missingBirthYearMessage}">
				<p style="color: red;">
					<c:out value="${requestScope.missingBirthYearMessage}" />
				</p>
			</c:if>

		</div>
		<div class="information">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" value="${user.username}" required>

			<label for="hoten">Họ và Tên:</label> <input type="text" id="hoten"
				name="hoten" value="${user.hoten}" required> <label
				for="password">Mật khẩu:</label> <input type="password"
				id="password" name="password" value="${user.password}" required>

			<label for="email">Email:</label> <input type="email" id="email"
				name="email" value="${user.email}" required> <label
				for="gioitinh">Giới tính:</label> <select id="gioitinh"
				name="gioitinh" required>
				<option value="1" ${user.gioitinh == 1 ? 'selected' : ''}>Nam</option>
				<option value="0" ${user.gioitinh == 0 ? 'selected' : ''}>Nữ</option>
			</select> <label for="ngaysinh">Ngày sinh:</label> <input type="date"
				id="ngaysinh" name="ngaysinh" value="${user.ngaysinh}"> <label
				for="sdt">Số điện thoại:</label> <input type="text" id="sdt"
				name="sdt" value="${user.sdt}" required> <label for="diachi">Địa
				chỉ:</label> <input type="text" id="diachi" name="diachi"
				value="${user.diachi}">
		</div>
		<c:if test="${not empty erMessage}">
			<p style="color: red;">
				<c:out value="${erMessage}" />
			</p>
		</c:if>
		<button type="submit">Lưu thông tin</button>
	</form>


	<!-- Kết thúc form thông tin người dùng -->

	<footer class="footer--page">
		<div class="footer--page__container">
			<div class="row">
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Hỗ Trợ - Dịch Vụ</h1>
					<ul class="page--suport">
						<li class="item"><a href="#0">Chính sách và hướng dẫn mua
								hàng trả góp</a></li>
						<li class="item"><a href="#0">Hướng dẫn mua hàng và chính
								sách vận chuyển</a></li>
						<li class="item"><a href="./tracuu.html">Tra cứu đơn hàng</a></li>
						<li class="item"><a href="#0">Chính sách đổi mới và bảo
								hành</a></li>
						<li class="item"><a href="#0">Dịch vụ bảo hành mở rộng</a></li>
						<li class="item"><a href="#0">Chính sách bảo mật</a></li>
						<li class="item"><a href="#0">Chính sách giải quyết khiếu
								nại</a></li>
						<li class="item"><a href="#0">Quy chế hoạt động</a></li>
					</ul>
				</div>
				<!-- end col -->
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Thông Tin Liên Hệ</h1>
					<ul class="page--suport">
						<li class="item"><a href="#0">Thông tin các trang TMĐT</a></li>
						<li class="item"><a href="#0">Dịch vụ sửa chữa</a></li>
						<li class="item"><a href="./tracuu.html">Tra cứu bảo hành</a></li>
					</ul>
				</div>
				<!-- end col -->
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Thanh toán miễn phí</h1>
					<ul class="page--suport">
						<li class="pay">
							<div class="logo--pay">
								<div class="img">
									<img src="./img/home/logo-visa.png" alt="">
								</div>
								<div class="img">
									<img src="./img/home/logo-master.png" alt="">
								</div>
							</div>
						</li>
						<li class="pay">
							<div class="logo--pay">
								<div class="img">
									<img src="./img/home/logo-jcb.png" alt="">
								</div>
								<div class="img">
									<img src="./img/home/logo-samsungpay.png" alt="">
								</div>
							</div>
						</li>
						<li class="pay">
							<div class="logo--pay">
								<div class="img">
									<img src="./img/home/logo-atm.png" alt="">
								</div>
								<div class="img">
									<img src="./img/home/logo-vnpay.png" alt="">
								</div>
							</div>
						</li>
					</ul>
				</div>
				<!-- end col -->
				<div class="col-12 col-sm-6 col-md-3">
					<div class="footer-container">
						<div class="row">
							<h1>Hình thức vận chuyển</h1>
							<div class="col-12">
								<div class="logo--convert">
									<div class="img">
										<img src="./img/home/nhattin.jpg" alt="">
									</div>
									<div class="img">
										<img src="./img/home/vnpost.jpg" alt="">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- end col -->
			</div>
		</div>
		<div class="Footer--Address">
			<span>&copy; Copyright MyPhone 2024 </span>
		</div>
	</footer>
	<!-- end footer -->

	<!-- Thư viện FontAwesome JS -->
	<script src="https://kit.fontawesome.com/850c4145ac.js"
		crossorigin="anonymous"></script>
	<!-- Thư viện Popper JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<!-- Thư viện Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>
</body>

<script src="https://kit.fontawesome.com/850c4145ac.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
</html>