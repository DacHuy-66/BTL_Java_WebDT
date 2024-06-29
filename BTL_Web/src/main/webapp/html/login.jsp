<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng nhập</title>
<!-- Thư viện FontAwesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
	integrity="sha384-hzBOifH8TI3YmZjHjPnpxzV7cJIZbRfi6L6KdhopcN4Up9XCBwyDtgxFpjv8bG2z"
	crossorigin="anonymous" />
<!-- Thư viện Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<!-- Tệp CSS tùy chỉnh -->
<link rel="stylesheet" href="./css/login.css">
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>


	<div class="container">
		<div class="login-form">
			<div class="login-bg">
				<img src="./img/img_login/login-bg.png" alt="Login Background">
			</div>
			<div class="form">
				<h1>Đăng nhập</h1>

				<div class="internal">
					<c:if test="${not empty errorMessage}">
						<div class="alert alert-danger" role="alert">${errorMessage}</div>
					</c:if>
					<form method="post" action="Login">
						<input type="hidden" name="ReturnUrl" value="">
						<div class="row">
							<div class="label">Tài khoản</div>
							<div class="input">
								<input type="text" name="username" id="UserName" required>
							</div>
						</div>

						<div class="row">
							<div class="label">Mật khẩu</div>
							<div class="input">
								<input type="password" name="password" id="password" required>
							</div>
						</div>

						<div class="row">
							<label class="checkbox-ctn"> </label>
						</div>

						<div class="row">
							<div class="button-group">
								<button class="btn btn-submit" type="submit">ĐĂNG NHẬP</button>
								<a class="btn btn-link ajax-content" href="./DangKy">ĐĂNG KÝ</a>
							</div>
						</div>

						<div class="row">
							<p class="forgotpass">
								<a class="ajax-content" href="./html/forgotPass.html">Quên
									mật khẩu?</a>
							</p>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

	<footer class="footer--page wow " data-wow-offset="100" data-
		wow-iteration="100">
		<div class="footer--page__container">
			<div class="row">
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Hỗ Trợ - Dịch Vụ</h1>
					<ul class="page--suport">
						<li class="item"><a href="#0"> Chính sách và hướng dẫn
								mua hàng trả góp</a></li>
						<li class="item"><a href="#0">Hướng dẫn mua hàng và chính
								sách vận chuyển </a></li>
						<li class="item"><a href="#0">Tra cứu đơn hàng</a></li>
						<li class="item"><a href="#0">Chính sách đổi mới và bảo
								hành</a></li>
						<li class="item"><a href="#0"> Dịch vụ bảo hành mở rộng</a></li>
						<li class="item"><a href="#0">Chính sách bảo mật </a></li>
						<li class="item"><a href="#0">Chính sách giải quyết khiếu
								nại</a></li>
						<li class="item"><a href="#0">Quy chế hoạt động </a></li>
					</ul>
				</div>
				<!-- end col  -->
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Thông Tin Liên Hệ</h1>
					<ul class="page--suport">
						<li class="item"><a href="#0">Thông tin các trang TMĐT</a></li>
						<li class="item"><a href="#0">Dịch vụ sửa chữa</a></li>
						<li class="item"><a href="#0">Tra cứu bảo hành</a></li>
					</ul>
				</div>
				<!-- end col  -->
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
				<!-- end col  -->
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
			</div>
		</div>
		<div class="Footer--Address">
			<span>&copy; Copyright MyPhone 2024 </span>
		</div>
	</footer>


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