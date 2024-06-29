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
<link rel="stylesheet" href="./css/card.css">
<title>Myphone</title>
</head>

<body>
	<header>
	<h2 class="header--title slide animate__animated animate__fadeInDown">[Khuyến
		mại] Thu cũ giá cao toàn bộ sản phẩm - Trợ giá tốt nhất</h2>
	<div class="nav--infomation ">
		<ul class="nav--infomation__top">
			<li class="items"><a href="./Home">Trang chủ</a></li>
			<li class="items"><a href="html/introduce.jsp">Giới thiệu</a></li>
			<li class="items"><a href="html/guaranteed.jsp">Trung tâm
					bảo hành</a></li>
			<li class="items"><a href="">Hệ thống 128 siêu thị</a></li>
			<li class="items"><a href="html/recruitment.jsp">Tuyển dụng</a></li>
			<li class="items"><a href="html/news.jsp">Tin tức</a></li>
			<li class="items"><a href="html/tracuu.jsp">Tra cứu</a></li>

			<c:if test="${sessionScope.acc != null}">
				<li class="items dropdown"><a href="javascript:void(0)"
					class="dropbtn">Hello ${sessionScope.acc.hoten}</a>
					<div class="dropdown-content">
						<a href="./ProfileServlet">Profile</a> <a href="logout">Logout</a>
					</div></li>
			</c:if>
			<c:if test="${sessionScope.acc == null}">
				<li class="items"><a href="./Login">Đăng Nhập</a></li>
			</c:if>
		</ul>
	</div>

	<nav class="menu--desktop">
		<div class="logo">
			<a href="./Home"> <img src="./img/home/logo.png" alt="logo"></a>
		</div>

		<form action="search" method="get" class="menu--search">
			<input name="txt" type="text" placeholder="Search...">
			<button type="submit" class="btn btn-secondary btn-number">
				<i class="fa fa-search"></i>
			</button>
		</form>

		<a class="menu--check__product" href="./DonHang"
			style="text-decoration: none; color: black;"> <i
			class="fa-solid fa-car"></i> Kiểm tra đơn hàng
		</a>
		<div class="menu--cart">
			<a href="./Cart" style="text-decoration: none;"> <i
				class="fa-solid fa-cart-shopping"></i> <span>${cartItems.size()}</span>
			</a>
		</div>
		<label for="nav--list__check"> <i class="fa-solid fa-bars"></i>
		</label>
	</nav>

	<!-- Menu lựa chọn các sản phẩm -->
	<nav class="menu--bottom">
		<ul class="menu--choose">
			<c:forEach items="${listN}" var="ncc">
				<li class="item"><a href="Thuonghieu?ncc_id=${ncc.ncc_id}">
						<div class="img">${ncc.ten_ncc}</div>
				</a></li>
			</c:forEach>
		</ul>
	</nav>

	<!-- Mobile -->
	<div class="nav--mobile">
		<input type="checkbox" id="nav--list__check" hidden> <label
			for="nav--list__check" class="bg--cover__mobile"></label>

		<ul class="nav--infomation__mobile">
			<li class="tool"><a href="#0" class="menu--check__product"
				title="Kiểm tra đơn hàng"> <i class="fa-solid fa-car"></i>
			</a> <a href="./html/cart.jsp" class="menu--cart" title="Giỏ hàng"> <i
					class="fa-solid fa-cart-shopping"></i> <span>2</span>
			</a></li>
			<li class="items"><a href="#0">Bản mobile</a></li>
			<li class="items"><a href="#0">Giới thiệu</a></li>
			<li class="items"><a href="#0">Sản phẩm đã xem</a></li>
			<li class="items"><a href="./html/guarantee.html">Trung tâm
					bảo hành</a></li>
			<li class="items"><a href="#0">Hệ thống 128 siêu thị</a></li>
			<li class="items"><a href="#0">Tuyển dụng</a></li>
			<li class="items"><a href="#0">Tra cứu</a></li>
			<li class="items"><a href="./html/login.html">Đăng Nhập</a></li>

			<div class="close--menu__mobile">
				<label for="nav--list__check">Đóng</label>
			</div>
		</ul>
	</div>
	</header>

	<div class="container--cart">
		<h1>Giỏ Hàng</h1>
		<c:if test="${not empty cartItems}">
			<c:forEach var="item" items="${cartItems}">
				<div class="cart--product" data-item-id="${item.giohang_id}"
					data-price="${item.gia}">
					<div class="cart--img">
						<img src="${item.image}" alt="Product Image">
					</div>
					<div class="name--product">
						<b>${item.model}</b>
					</div>
					<div class="price">
						<b><fmt:formatNumber value="${item.gia}" type="currency"
								currencySymbol="đ" /></b>
					</div>
					<div class="price">
						<b> ${item.dungluong} </b>
					</div>
					<div class="price">
						<b> ${item.mausac} </b>
					</div>
					<div class="quantity">
						<form action="Cart" method="post">
							<input type="hidden" name="action" value="updateQuantity">
							<input type="hidden" name="itemId" value="${item.giohang_id}">
							<button class="btn--cart decrease" name="changeQuantity"
								value="decrease">-</button>
							<button class="btn--cart__number">${item.soluong}</button>
							<button class="btn--cart increase" name="changeQuantity"
								value="increase">+</button>
						</form>
					</div>


					<div class="btn--delete">
						<form action="Cart" method="post">
							<input type="hidden" name="action" value="delete"> <input
								type="hidden" name="itemId" value="${item.giohang_id}">
							<button type="submit">Xóa</button>
						</form>
					</div>
				</div>
			</c:forEach>
		</c:if>
		<c:if test="${empty cartItems}">
			<p style="text-align: center;">Không có giỏ hàng nào.</p>
		</c:if>
	</div>
	<div class="pay">
		<strong>Tổng Thanh Toán: <fmt:formatNumber
				value="${totalAmount}" type="currency" currencySymbol="đ" /></strong>
		<button type="button" data-bs-toggle="modal"
			data-bs-target="#checkoutModal">Đặt Hàng</button>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="checkoutModal" tabindex="-1"
		aria-labelledby="checkoutModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="checkoutModalLabel">Thông tin
						thanh toán</h5>

				</div>
				<div class="modal-body">
					<form action="Checkout" method="post">
						<input type="hidden" name="giohang_id"
							value="${cartItems[0].giohang_id}">
						<c:forEach var="item" items="${cartItems}">
							<input type="hidden" name="image" value="${item.image}">
							<input type="hidden" name="model" value="${item.model}">
							<input type="hidden" name="dungluong" value="${item.dungluong}">
							<input type="hidden" name="mausac" value="${item.mausac}">
							<input type="hidden" name="soluong" value="${item.soluong}">
							<input type="hidden" name="gia" value="${item.gia}">
						</c:forEach>
						<div class="mb-3">
							<label for="hoten" class="form-label">Họ tên:</label> <input
								type="text" class="form-control" name="hoten" id="hoten"
								required>
						</div>
						<div class="mb-3">
							<label for="sdt">Số điện thoại:</label> <input type="text"
								class="form-control" name="sdt" id="sdt" required>
						</div>
						<div class="mb-3">
							<label for="diachigiaohang">Địa chỉ giao hàng:</label> <input
								type="text" class="form-control" name="diachigiaohang"
								id="diachigiaohang" required>
						</div>
						<input type="hidden" name="status" value="Pending">

						<button type="submit" class="btn btn-primary">Checkout</button>
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
						<li class="item"><a href="./cart.html">Tra cứu đơn hàng</a></li>
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
						<li class="item"><a href="./guaranteed.html">Tra cứu bảo
								hành</a></li>
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
document.addEventListener("DOMContentLoaded", function() {
    const decreaseButtons = document.querySelectorAll(".decrease");

    decreaseButtons.forEach(button => {
        button.addEventListener("click", function(event) {
            const quantityElement = event.target.nextElementSibling; 
            const currentQuantity = parseInt(quantityElement.textContent);

            if (currentQuantity === 1) {
                alert("Số lượng không thể nhỏ hơn 1.");
                return; 
            }

        });
    });
});
</script>

	<script src="../js/cart.js"></script>
</body>

</html>
