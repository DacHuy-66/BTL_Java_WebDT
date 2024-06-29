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
<title>Myphone</title>
</head>

<body>
	<jsp:include page="menu.jsp"></jsp:include>


	<section class="panner--iphone">
		<div class="img">
			<img src="${ncc.banner}" alt="">
		</div>
		<h1>${ncc.ten_ncc}</h1>
	</section>
	<section class="phone ">
		<div class="phone--container  ">
			<div class="row  g-3 wow " data-wow-offset="100"
				data-wow-iteration="100">
				<c:if test="${not empty listP}">
					<c:forEach items="${listP}" var="product">
						<div class="col-6 col-lg-3 phone--card ">
							<a href="detail?pid=${product.phone_id}" class="phone--produce">
								<div class="img">
									<img src="${product.image}" alt="">
								</div>
								<div class="phone--produce__text">
									<h2>${product.model}</h2>
									<div class="Memory">
										<span>64GB</span> <span>128GB</span> <span>512GB</span>
									</div>
									<div class="stars">
										<form action="">
											<input class="star star-5" id="star-5" type="radio"
												name="star" /> <label class="star star-5" for="star-5"></label>
											<input class="star star-4" id="star-4" type="radio"
												name="star" checked /> <label class="star star-4"
												for="star-4"></label> <input class="star star-3" id="star-3"
												type="radio" name="star" /> <label class="star star-3"
												for="star-3"></label> <input class="star star-2" id="star-2"
												type="radio" name="star" /> <label class="star star-2"
												for="star-2"></label> <input class="star star-1" id="star-1"
												type="radio" name="star" /> <label class="star star-1"
												for="star-1"></label>
										</form>
										<span>(2 Đánh Giá)</span>
									</div>
									<p>${product.gia}
										<span>₫</span>
									</p>
								</div>
							</a>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty listP}">
					<p>No products available.</p>
				</c:if>

			</div>
		</div>
	</section>

	<!-- tiện ích -->
	<section class="utilities">
		<div class="utilities--container">
			<div class="row wow " data-wow-offset="100" data- wow-iteration="100">
				<div class=" col-6 col-md-3  box">
					<div class="img">
						<img src="./img/home/utilities1.png" alt="">
					</div>
					<div class="box--text">
						<span>Sản Phẩm</span> <b>Chính hãng</b>
					</div>
				</div>
				<div class=" col-6 col-md-3 box">
					<div class="img">
						<img src="./img/home/utilities.png" alt="">
					</div>
					<div class="box--text">
						<span>Miễn phí vận chuyểnm</span> <b>TOÀN QUỐC</b>
					</div>
				</div>
				<div class=" col-6 col-md-3 box">
					<div class="img">
						<img src="./img/home/utilities3.png" alt="">
					</div>
					<div class="box--text">
						<span>Hotline hỗ trợ</span> <b>1900.2091</b>
					</div>
				</div>
				<div class=" col-6 col-md-3 box">
					<div class="img">
						<img src="./img/home/utilities4.png" alt="">
					</div>
					<div class="box--text">
						<span>Thủ tục đổi trả</span> <b>DỄ DÀNG</b>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end customer -->
	<div class="contact">
		<a href="//facebook.com" title="facebook"><i
			class="fa-brands fa-facebook"></i></a> <a href="https://www.youtube.com/"
			title="youtube"><i class="fa-brands fa-youtube"></i></a> <a href="#"><i
			class="fa-solid fa-envelope" title="Email"></i></a> <a href="#"><i
			class="fa-brands fa-telegram" title="Telegram"></i></a>
	</div>
	<a href="#" class="back-top"> <i class="fa-solid fa-angle-up"></i>
	</a>
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
