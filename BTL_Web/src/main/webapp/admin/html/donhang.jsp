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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Quản lý Đơn hàng</title>
</head>

<body>
	<div class="navbar">
		<a href="./QlKhachHang">Quản Lý Khách Hàng</a> <a href="./QLSanPham">Quản
			lý Sản phẩm</a> <a href="./QLDonHang">Quản lý Đơn hàng</a> <a
			href="./QLThanhToan">Quản lý Thanh Toán</a> <a href="./ThongKe">Thống
			Kê Doanh Thu</a>
	</div>
	<div class="container" style="max-width: 1400px;">
		<h1>Quản lý Đơn hàng</h1>
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
		<h2>Thêm/Cập nhật đơn hàng</h2>
		<form action="QLDonHang" method="post">
			<div class="form-container">
				<input type="hidden" name="action" value="add">

				<div class="form-group">
					<label for="hoten">Họ Tên:</label> <input type="text" id="hoten"
						name="hoten" required>
				</div>
				<div class="form-group">
					<label for="sdt">Số điện thoại:</label> <input type="text" id="sdt"
						name="sdt" required>
				</div>
				<div class="form-group">
					<label for="giohang_id">ID giỏ hàng:</label> <input type="text"
						id="giohang_id" name="giohang_id" required>
				</div>
				<div class="form-group">
					<label for="diachigiaohang">Địa chỉ giao hàng:</label> <input
						type="text" id="diachigiaohang" name="diachigiaohang">
				</div>
				<div class="form-group">
					<label for="image">Hình ảnh:</label> <input type="text" id="image"
						name="image">
				</div>
				<div class="form-group">
					<label for="model">Model:</label> <input type="text" id="model"
						name="model">
				</div>
				<div class="form-group">
					<label for="dungluong">Dung lượng:</label> <input type="text"
						id="dungluong" name="dungluong">
				</div>
				<div class="form-group">
					<label for="mausac">Màu sắc:</label> <input type="text" id="mausac"
						name="mausac">
				</div>
				<div class="form-group">
					<label for="soluong">Số lượng:</label> <input type="text"
						id="soluong" name="soluong">
				</div>
				<div class="form-group">
					<label for="gia">Giá:</label> <input type="text" id="gia"
						name="gia">
				</div>
				<div class="form-group">
					<label for="status">Trạng thái:</label> <input type="text"
						id="status" name="status">
				</div>
				<button type="submit">Thêm đơn hàng</button>
			</div>
		</form>
		<h2>Danh sách Đơn hàng</h2>
		<div class="search-container">
			<form action="QLDonHang" method="get">
				<input type="text" id="searchTerm" name="searchTerm"
					placeholder="Tìm kiếm đơn hàng...">
				<button type="submit">Tìm kiếm</button>
			</form>
		</div>
		<table>
			<thead>
				<tr>
					<th>ID Đơn hàng</th>
					<th>Họ tên</th>
					<th>Số điện thoại</th>
					<th>ID Giỏ hàng</th>
					<th>Địa chỉ giao hàng</th>
					<th>Hình ảnh</th>
					<th>Model</th>
					<th>Dung lượng</th>
					<th>Màu sắc</th>
					<th>Số lượng</th>
					<th>Giá</th>
					<th>Status</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="donhang" items="${dList}">
					<tr>
						<td>${donhang.donhang_id}</td>
						<td>${donhang.hoten}</td>
						<td>${donhang.sdt}</td>
						<td>${donhang.giohang_id}</td>
						<td>${donhang.diachigiaohang}</td>
						<td>${donhang.image}</td>
						<td>${donhang.model}</td>
						<td>${donhang.dungluong}</td>
						<td>${donhang.mausac}</td>
						<td>${donhang.soluong}</td>
						<td><fmt:formatNumber value="${donhang.gia}"
								type="currency" currencySymbol="đ" /></td>
						<td>${donhang.status}</td>
						<td class="action-buttons"><a
							href="LoadDonhang?did=${donhang.donhang_id}"> <input
								type="hidden" name="action" value="edit"> <input
								type="hidden" name="donhang_id" value="${donhang.donhang_id}">
								<button type="submit" class="btn btn-warning btn-sm">Sửa</button>
						</a>
							<form action="QLDonHang" method="post" style="display: inline;"
								onsubmit="return confirmDelete('${donhang.donhang_id}');">
								<input type="hidden" name="action" value="delete"> <input
									type="hidden" name="donhang_id" value="${donhang.donhang_id}">
								<button type="submit" class="btn btn-danger btn-sm">Xóa</button>
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
							aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span>
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
							aria-hidden="true">&raquo;</span><span class="sr-only">Next</span>
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
		function confirmDelete(donhang_id) {
			return confirm("Bạn có chắc chắn muốn xóa Đơn hàng: " + donhang_id
					+ "?");
		}
	</script>
</body>

</html>
