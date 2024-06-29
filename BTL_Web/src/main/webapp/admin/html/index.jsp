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


	<div class="container">
		<div class="login-form">

			<div class="form">
				<h1>Đăng nhập</h1>

				<div class="internal">
					<c:if test="${not empty errorMessage}">
						<div class="alert alert-danger" role="alert">${errorMessage}</div>
					</c:if>
					<form method="post" action="LoginAdmin">
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
							</div>
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>

	

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