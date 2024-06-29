<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css">
<link rel="stylesheet" href="./css/phone.css">
<link rel="stylesheet" href="./css/index.css">
<link rel="stylesheet" href="./css/product.css">
<title>Myphone</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<div class="nameProduct">
		<h1>${detail.model}</h1>
		<p>
			Thương hiệu : <span>${detail.thuonghieu}</span>
		</p>
	</div>
	<div class="container--product">
		<div class="row">
			<div class="col-6">
				<div class="imgProduct">
					<img src="${detail.image}" alt="">
				</div>
			</div>
			<div class="col-6">
				<div class="Product-price">
					<b><fmt:formatNumber value="${detail.gia}" type="currency" /></b>

				</div>

				<form action="AddToCartServlet" method="post">
					<input type="hidden" name="image" value="${detail.image}" /> <input
						type="hidden" name="model" value="${detail.model}" /> <input
						type="hidden" name="gia" value="${detail.gia}" />
					<div class="chooseProduct">
						<p>Dung lượng :</p>
						<select name="dungluong" class="choose">
							<c:forEach var="matHang" items="${detail.matHangList}">
								<option value="${matHang.dungluong}">${matHang.dungluong}</option>
							</c:forEach>
						</select>
					</div>
					<div class="colorProduct">
						<p>Màu sắc :</p>
						<select name="mausac" class="choose">
							<c:forEach var="matHang" items="${detail.matHangList}">
								<option value="${matHang.mausac}">${matHang.mausac}</option>
							</c:forEach>
						</select>
					</div>
					<div class="btnProduct">
						<button type="submit">Thêm Vào Giỏ Hàng</button>
					</div>
				</form>

				<div class="btnProduct">
					<button type="button" data-toggle="modal" data-target="#specsModal">Xem
						Cấu Hình chi Tiết ...</button>
				</div>
			</div>
		</div>
	</div>

	<!-- The Modal -->
	<div class="modal fade" id="specsModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Thông Số Kỹ
						Thuật</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h6>${detail.thongso}</h6>
				</div>
				<div class="modal-footer">
					<button class="btn--informaition" type="button"
						data-dismiss="modal">Đóng</button>
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
				<div class="col-12 col-sm-6 col-md-3">
					<h1>Thông Tin Liên Hệ</h1>
					<ul class="page--suport">
						<li class="item"><a href="#0">Thông tin các trang TMĐT</a></li>
						<li class="item"><a href="#0">Dịch vụ sửa chữa</a></li>
						<li class="item"><a href="#0">Tra cứu bảo hành</a></li>
					</ul>
				</div>
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
	<script>
		new WOW().init();
	</script>
</body>

</html>
