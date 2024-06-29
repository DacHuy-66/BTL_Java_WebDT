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
<link rel="stylesheet" href="./css/index.css">
<title>Myphone</title>

</head>

<body>
	<!-- Display success message if available -->

	<jsp:include page="menu.jsp"></jsp:include>
	<div id="carouselExampleControls" class="carousel "
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="./img/home/galaxy-s24-ultra-mobile.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./img/home/deal-dac-biet-thang-5-mobile.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./img/home/galaxy-s24-ultra-mobile.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./img/home/oscal-tiger-12-640x266.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./img/home/dat-truoc-xiaomi-14-ultra-640x266.jpg"
					class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="./img/home/spark-20-pro-plus-640x266.png"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<section class="phone ">
		<div class="phone--container  ">
			<h1 class="phone--title animate__animated animate__bounceInLeft">SẢN
				PHẨM BÁN CHẠY</h1>
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

	<!-- END SẢM PHẬP BÁN CHẠY -->
	<section class="paner wow " data-wow-offset="100" data-
		wow-iteration="100">
		<div class="paner--img">
			<img src="./img/home/paner1.jpg" alt="">
		</div>
	</section>
	<section class="phone wow slideInRight " data-wow-offset="300" data-
		wow-iteration="10">
		<div class="phone--container  ">
			<h1 class="phone--title">SẢN PHẨM APPLE</h1>
			<div class="row  g-3 wow " data-wow-offset="100" data-
				wow-iteration="100">

				<c:if test="${not empty listA}">
					<c:forEach items="${listA}" var="product" varStatus="status">
						<c:if
							test="${status.count <= 18 && product.thuonghieu == 'Apple'}">
							<div class="col-6 col-lg phone--card ">
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
													for="star-4"></label> <input class="star star-3"
													id="star-3" type="radio" name="star" /> <label
													class="star star-3" for="star-3"></label> <input
													class="star star-2" id="star-2" type="radio" name="star" />
												<label class="star star-2" for="star-2"></label> <input
													class="star star-1" id="star-1" type="radio" name="star" />
												<label class="star star-1" for="star-1"></label>
											</form>
											<span>(2 Đánh Giá)</span>
										</div>

										<p>
											${product.gia} <span>₫</span>
										</p>
									</div>

								</a>
							</div>
						</c:if>
					</c:forEach>
				</c:if>

				<c:if test="${empty listP}">
					<p>No products available.</p>
				</c:if>

			</div>
		</div>
		<div class="btn--phone">
			<a class="btn" href="Thuonghieu?ncc_id=NCC002">Xem Thêm</a>
		</div>

	</section>
	<!-- END IPHONE-->

	<section class="phone">
		<div class="phone--container  ">
			<h1 class="phone--title">SẢN PHẨM XIAOMI</h1>
			<div class="row  g-3 wow " data-wow-offset="100" data-
				wow-iteration="100">

				<c:if test="${not empty listA}">
					<c:forEach items="${listA}" var="product" varStatus="status">
						<c:if
							test="${status.count <= 13 && product.thuonghieu == 'Xiaomi'}">
							<div class="col-6 col-lg phone--card ">
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
													for="star-4"></label> <input class="star star-3"
													id="star-3" type="radio" name="star" /> <label
													class="star star-3" for="star-3"></label> <input
													class="star star-2" id="star-2" type="radio" name="star" />
												<label class="star star-2" for="star-2"></label> <input
													class="star star-1" id="star-1" type="radio" name="star" />
												<label class="star star-1" for="star-1"></label>
											</form>
											<span>(2 Đánh Giá)</span>
										</div>

										<p>
											${product.gia} <span>₫</span>
										</p>
									</div>

								</a>
							</div>
						</c:if>
					</c:forEach>
				</c:if>

				<c:if test="${empty listP}">
					<p>No products available.</p>
				</c:if>

			</div>
		</div>
		<div class="btn--phone">
			<a class="btn" href="Thuonghieu?ncc_id=NCC003">Xem Thêm</a>
		</div>

	</section>
	<!-- END XIAOMI -->

	<section class="phone">
		<div class="phone--container  ">
			<h1 class="phone--title">SẢN PHẨM SAMSUNG</h1>
			<div class="row  g-3 wow " data-wow-offset="100" data-
				wow-iteration="100">

				<c:if test="${not empty listA}">
					<c:forEach items="${listA}" var="product" varStatus="status">
						<c:if
							test="${status.count <= 8 && product.thuonghieu == 'Samsung'}">
							<div class="col-6 col-lg phone--card ">
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
													for="star-4"></label> <input class="star star-3"
													id="star-3" type="radio" name="star" /> <label
													class="star star-3" for="star-3"></label> <input
													class="star star-2" id="star-2" type="radio" name="star" />
												<label class="star star-2" for="star-2"></label> <input
													class="star star-1" id="star-1" type="radio" name="star" />
												<label class="star star-1" for="star-1"></label>
											</form>
											<span>(2 Đánh Giá)</span>
										</div>

										<p>
											${product.gia} <span>₫</span>
										</p>
									</div>

								</a>
							</div>
						</c:if>
					</c:forEach>
				</c:if>

				<c:if test="${empty listP}">
					<p>No products available.</p>
				</c:if>


			</div>
		</div>
		<div class="btn--phone">
			<a class="btn" href="Thuonghieu?ncc_id=NCC001">Xem Thêm</a>
		</div>

	</section>

	<Section class="customer">
		<h1 class="customer--title">KHÁCH HÀNG CỦA MY PHONE</h1>
		<div class="customer--container wow " data-wow-offset="100" data-
			wow-iteration="100">
			<div class="customer--list">
				<div class="customer--list__item">
					<div class="img">
						<img src="./img/home/USER.jpg" alt="">
					</div>
					<div class="customer--text">
						<h2>Vũ Quang Huy</h2>
						<b>Sinh Viên</b> <span>Hôm nay, Huy quyết định tới cửa hàng
							công nghệ uy tín - MyPhone, để tìm kiếm một sản phẩm phù hợp với
							nhu cầu của mình. Với sự năng động của một sinh viên và sự hiện
							đại của thế giới công nghệ, Huy muốn sở hữu một chiếc điện thoại
							thông minh không chỉ để hỗ trợ việc học tập mà còn để duy trì
							liên lạc và giải trí trong thời gian rảnh rỗi.</span>
					</div>
				</div>
				<div class="customer--list__item">
					<div class="img">
						<img src="./img/home/user2.jpg" alt="">
					</div>
					<div class="customer--text">
						<h2>Vũ Quang Huy</h2>
						<b>Sinh Viên</b> <span>Hôm nay, Huy quyết định tới cửa hàng
							công nghệ uy tín - MyPhone, để tìm kiếm một sản phẩm phù hợp với
							nhu cầu của mình. Với sự năng động của một sinh viên và sự hiện
							đại của thế giới công nghệ, Huy muốn sở hữu một chiếc điện thoại
							thông minh không chỉ để hỗ trợ việc học tập mà còn để duy trì
							liên lạc và giải trí trong thời gian rảnh rỗi. </span>
					</div>
				</div>
				<div class="customer--list__item">
					<div class="img">
						<img src="./img/home/USER.jpg" alt="">
					</div>
					<div class="customer--text">
						<h2>Vũ Quang Huy</h2>
						<b>Sinh Viên</b> <span>Hôm nay, Huy quyết định tới cửa hàng
							công nghệ uy tín - MyPhone, để tìm kiếm một sản phẩm phù hợp với
							nhu cầu của mình. Với sự năng động của một sinh viên và sự hiện
							đại của thế giới công nghệ, Huy muốn sở hữu một chiếc điện thoại
							thông minh không chỉ để hỗ trợ việc học tập mà còn để duy trì
							liên lạc và giải trí trong thời gian rảnh rỗi.</span>
					</div>
				</div>
			</div>
		</div>
		<!-- tiện ích -->
		<section class="utilities">
			<div class="utilities--container">
				<div class="row wow " data-wow-offset="100" data-
					wow-iteration="100">
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
	</Section>
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





