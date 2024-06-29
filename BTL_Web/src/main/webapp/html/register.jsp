<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="vi">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Đăng ký</title>
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
<style type="text/css">
.input-field {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	font-size: 14px;
}

.form-controls {
	margin-bottom: 15px;
}

.form-controls label {
	display: block;
	margin-bottom: 6px;
	font-weight: bold;
}

.form-controls .controls {
	margin-top: 4px;
}
</style>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="container">

		<div class="login-form">
			<div class="login-bg">
				<img src="./img/img_login/login-bg.png">
			</div>

			<div class="form">
				<div class="center" style="text-align: center;">
					<h2>Đăng ký tài khoản</h2>
				</div>

				<!-- Include this code snippet where you want to display error messages -->
				<c:if test="${not empty errorMessage}">
					<div class="alert alert-danger">${errorMessage}</div>
				</c:if>

				<div id="registerForm" class="hh-form">
					<form method="POST" action="DangKy" data-gtm-form-interact-id="0">
						<input type="hidden" name="ReturnUrl"> <input
							name="__RequestVerificationToken" type="hidden"
							value="q2QQ_N-9EohSs1DQibTUMNycEGI99tgdDrDonQQ9fJILdZ8a2B2pgDz5aCIm9dU9s9JWmMQHWzWNrKIvcMmSqcWBjP01">

						<div class="form-controls">
							<label>Tài khoản:</label>
							<div class="controls">
								<input type="text" name="username" id="username"
									placeholder="Tài khoản *" data-required="1"
									fdprocessedid="2xwqth">
							</div>
						</div>

						<div class="form-controls">
							<label>Họ tên:</label>
							<div class="controls">
								<input type="text" name="hoten" id="hoten"
									placeholder="Họ tên *" data-required="1" fdprocessedid="2pj6ld">
							</div>
						</div>

						<div class="form-controls">
							<label>Mật khẩu:</label>
							<div class="controls">
								<input type="password" name="password" id="password"
									placeholder="Mật khẩu *" data-required="1"
									fdprocessedid="amj17j">
							</div>
						</div>

						<div class="form-controls">
							<label>Nhập lại mật khẩu:</label>
							<div class="controls">
								<input type="password" name="repassword" id="repassword"
									placeholder="Nhập lại mật khẩu *" data-required="1"
									fdprocessedid="i5kvl">
							</div>
						</div>

						<div class="form-controls">
							<label>Email:</label>
							<div class="controls">
								<input type="text" name="Email" id="Email" placeholder="Email *"
									data-required="1" fdprocessedid="0kri4c">
							</div>
						</div>

						<div class="form-controls">
							<label>Giới tính:</label>
							<div class="controls">
								<label class="radio-ctn"> <input type="radio" name="Sex"
									value="true" data-gtm-form-interact-field-id="0"> <span
									class="checkmark"></span> <span><strong>Nam</strong></span>
								</label> <label class="radio-ctn"> <input type="radio"
									name="Sex" value="false" data-gtm-form-interact-field-id="1">
									<span class="checkmark"></span> <span><strong>Nữ</strong></span>
								</label>
							</div>
						</div>

						<div class="form-controls">
							<label for="UserBirthDate">Ngày tháng năm sinh:</label>
							<div class="controls">
								<input type="date" name="UserBirthDate" id="UserBirthDate"
									placeholder="Ngày tháng năm sinh" class="input-field">
							</div>
						</div>

						<div class="form-controls">
							<label>Điện thoại:</label>
							<div class="controls">
								<input type="tel" name="PhoneNumber" id="PhoneNumber"
									placeholder="Điện thoại *" data-required="1"
									fdprocessedid="bedfej">
							</div>
						</div>

						<div class="form-controls">
							<label>Địa chỉ:</label>
							<div class="controls">
								<input type="text" name="Address" id="Address"
									placeholder="Địa chỉ *" data-required="1" fdprocessedid="siici">
							</div>
						</div>

						<div class="form-controls">
							<div class="controls submit-controls">
								<button type="submit" fdprocessedid="9pthyo">ĐĂNG KÝ
									TÀI KHOẢN</button>
							</div>
						</div>
					</form>
				</div>
			</div>


		</div>
	</div>

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
						<li class="item"><a href="#0">Tra cứu đơn hàng</a></li>
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
						<li class="item"><a href="#0">Tra cứu bảo hành</a></li>
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
	</footer>

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

</html>