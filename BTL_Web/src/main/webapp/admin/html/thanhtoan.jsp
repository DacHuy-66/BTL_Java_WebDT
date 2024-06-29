<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./admin/css/donhang.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Quản lý Thanh Toán</title>
</head>
<body>
	<div class="navbar">
		<a href="./QlKhachHang">Quản Lý Khách Hàng</a> <a href="./QLSanPham">Quản
			lý Sản phẩm</a> <a href="./QLDonHang">Quản lý Đơn hàng</a> <a
			href="./QLThanhToan">Quản lý Thanh Toán</a> <a href="./ThongKe">Thống
			Kê Doanh Thu</a>
	</div>
	<div class="container">
		<h1>Quản lý Thanh Toán</h1>
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
		</div>
		<h2>Thêm/Cập nhật thanh toán</h2>
		<form action="QLThanhToan" method="post">
			<div class="form-container">
				<input type="hidden" name="action" value="add">

				<div class="form-group">
					<label for="payment_id">ID Thanh toán:</label> <input type="text"
						id="payment_id" name="payment_id" required>
				</div>
				<div class="form-group">
					<label for="donhang_id">ID Đơn hàng:</label> <input type="text"
						id="donhang_id" name="donhang_id" required>
				</div>
				<div class="form-group">
					<label for="sotienthanhtoan">Số tiền thanh toán:</label> <input
						type="text" id="sotienthanhtoan" name="sotienthanhtoan" required>
				</div>
				<div class="form-group">
					<label for="phuongthucthanhtoan">Phương thức thanh toán:</label> <input
						type="text" id="phuongthucthanhtoan" name="phuongthucthanhtoan">
				</div>
				<div class="form-group">
					<label for="ngaythanhtoan">Ngày thanh toán:</label> <input
						type="date" id="ngaythanhtoan" name="ngaythanhtoan">
				</div>
				<button type="submit">Thêm thanh toán</button>
			</div>
		</form>
		<h2>Danh sách Thanh Toán</h2>
		<div class="search-container">
			<form action="QLThanhToan" method="get">
				<input type="text" id="searchTerm" name="searchTerm"
					placeholder="Tìm kiếm thanh toán...">
				<button type="submit">Tìm kiếm</button>
			</form>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>ID Thanh toán</th>
					<th>ID Đơn hàng</th>
					<th>Số tiền thanh toán</th>
					<th>Phương thức thanh toán</th>
					<th>Ngày thanh toán</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="thanhtoan" items="${tList}">

					<tr>
						<td>${thanhtoan.payment_id}</td>
						<td>${thanhtoan.donhang_id}</td>
						<td><fmt:formatNumber value="${thanhtoan.sotienthanhtoan}"
								type="currency" currencySymbol="đ" /></td>
						<td>${thanhtoan.phuongthucthanhtoan}</td>
						<td>${thanhtoan.ngaythanhtoan}</td>

						<td class="action-buttons"><a
							href="LoadThanhtoan?tid=${thanhtoan.payment_id}"> <input
								type="hidden" name="action" value="edit"> <input
								type="hidden" name="payment_id" value="${thanhtoan.payment_id}">
								<button class="btn btn-warning btn-sm" type="button">Sửa</button>
						</a>
							<form action="QLThanhToan" method="post" style="display: inline;"
								onsubmit="return confirmDelete('${thanhtoan.payment_id}');">
								<input type="hidden" name="action" value="delete"> <input
									type="hidden" name="payment_id" value="${thanhtoan.payment_id}">
								<button class="btn btn-danger btn-sm" type="submit">Xóa</button>
							</form></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<!-- Phân trang -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<c:if test="${currentPage > 1}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage - 1}" aria-label="Previous"> <span
							aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
					</a></li>
				</c:if>
				<c:forEach begin="1" end="${totalPages}" varStatus="loop">
					<c:choose>
						<c:when test="${loop.index == currentPage}">
							<li class="page-item active"><a class="page-link"
								href="?page=${loop.index}">${loop.index}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href="?page=${loop.index}">${loop.index}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${currentPage < totalPages}">
					<li class="page-item"><a class="page-link"
						href="?page=${currentPage + 1}" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
					</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
	<!-- Bootstrap JS và các thư viện khác -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		function confirmDelete(payment_id) {
			return confirm("Bạn có chắc chắn muốn xóa thanh toán: "
					+ payment_id + "?");
		}
	</script>
</body>
</html>
