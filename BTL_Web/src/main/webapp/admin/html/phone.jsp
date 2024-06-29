<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Quản lý Sản phẩm</title>
<link rel="stylesheet" href="./admin/css/phone.css">

<style>
/* Adjust width of image column */
.image-column {
	max-width: 200px; /* Adjust as needed */
	overflow: hidden;
	text-overflow: ellipsis; /* Truncate text if overflow */
}
</style>
</head>

<body>
	<div class="navbar">
        <a href="./QlKhachHang">Quản Lý Khách Hàng</a>
        <a href="./QLSanPham">Quản lý Sản phẩm</a>
        <a href="./QLDonHang">Quản lý Đơn hàng</a>
        <a href="./QLThanhToan">Quản lý Thanh Toán</a>
        <a href=./ThongKe>Thống Kê Doanh Thu</a>
    </div>
	<div class="container">
		<h1>Quản lý sản phẩm</h1>
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
		<h2>Thêm/Cập nhật sản phẩm</h2>
		<form action="QLSanPham" method="post">
			<div class="form-container">
				<input type="hidden" name="action" value="add">
				<div class="form-group">
					<label for="phone_id">ID:</label> <input type="text"
						class="form-control" id="phone_id" placeholder="Enter ID"
						name="phone_id">
				</div>
				<div class="form-group">
					<label for="thuonghieu">Thương Hiệu:</label> <input type="text"
						class="form-control" id="thuonghieu" placeholder="Enter brand"
						name="thuonghieu">
				</div>
				<div class="form-group">
					<label for="model">Model:</label> <input type="text"
						class="form-control" id="model" placeholder="Enter model"
						name="model">
				</div>
				<div class="form-group">
					<label for="gia">Giá:</label> <input type="text"
						class="form-control" id="gia" placeholder="Enter price" name="gia">
				</div>
				<div class="form-group">
					<label for="soluong">Số lượng:</label> <input type="text"
						class="form-control" id="soluong" placeholder="Enter quantity"
						name="soluong">
				</div>
				<div class="form-group">
					<label for="thongso">Thông số:</label> <input type="text"
						class="form-control" id="thongso"
						placeholder="Enter specifications" name="thongso">
				</div>
				<div class="form-group">
					<label for="ncc_id">Nhà cung cấp ID:</label> <input type="text"
						class="form-control" id="ncc_id" placeholder="Enter supplier ID"
						name="ncc_id">
				</div>
				<div class="form-group">
					<label for="image">Image URL:</label> <input type="text"
						class="form-control" id="image" placeholder="Enter image URL"
						name="image">
				</div>
				<button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
			</div>
		</form>
		<h2>Danh sách Sản phẩm</h2>
		<div class="search-container">
    <form action="QLSanPham" method="get">
        <input type="text" id="searchTerm" name="searchTerm" placeholder="Tìm kiếm sản phẩm..."
            value="${searchTerm}">
        <select id="brand_filter" name="brand_filter" onchange="this.form.submit()">
            <option value="">Tất cả</option>
            <option value="Apple" ${brandFilter == 'Apple' ? 'selected' : ''}>iPhone</option>
            <option value="Xiaomi" ${brandFilter == 'Xiaomi' ? 'selected' : ''}>Xiaomi</option>
            <option value="Samsung" ${brandFilter == 'Samsung' ? 'selected' : ''}>Samsung</option>
            <option value="Sony" ${brandFilter == 'Sony' ? 'selected' : ''}>Sony</option>
            <option value="Google" ${brandFilter == 'Google' ? 'selected' : ''}>Google</option>
        </select>
        <button type="submit">Tìm kiếm</button>
    </form>
</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>ID</th>
					<th>Thương Hiệu</th>
					<th>Model</th>
					<th>Giá</th>
					<th>Số lượng</th>
					<th>Thông số</th>
					<th>Nhà cung cấp ID</th>
					<th style="max-width: 200px;">Image</th>
					<!-- Adjusted width for image column -->
					<th>Actions</th>
				</tr>
			</thead>
			<c:if test="${not empty erMessage}">
				<p style="color: red;">
					<c:out value="${erMessage}" />
				</p>
			</c:if>
			<tbody>
				<c:forEach var="product" items="${productList}">
					<tr>
						<td>${product.phone_id}</td>
						<td>${product.thuonghieu}</td>
						<td>${product.model}</td>
						<td>${product.gia}</td>
						<td>${product.soluong}</td>
						<td>${product.thongso}</td>
						<td>${product.ncc_id}</td>
						<td class="image-column">${product.image}</td>
						<!-- Apply class for image column -->
						<td class="action-buttons"><a
							href="LoadProduct?pid=${product.phone_id}"> <input
								type="hidden" name="action" value="edit"> <input
								type="hidden" name="phone_id" value="${product.phone_id}">
								<button type="button" class="btn btn-warning btn-sm">Sửa</button>
						</a>
							<form action="QLSanPham" method="post" style="display: inline;"
								onsubmit="return confirmDelete('${product.phone_id}');">
								<input type="hidden" name="action" value="delete"> <input
									type="hidden" name="phone_id" value="${product.phone_id}">
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
							aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
					</a></li>
				</c:if>
				<c:forEach begin="1" end="${totalPages}" varStatus="loop">
					<c:if test="${loop.index == currentPage}">
						<li class="page-item active"><a class="page-link"
							href="?page=${loop.index}">${loop.index}</a></li>
					</c:if>
					<c:if test="${loop.index != currentPage}">
						<li class="page-item"><a class="page-link"
							href="?page=${loop.index}">${loop.index}</a></li>
					</c:if>
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
		function confirmDelete(phone_id) {
			return confirm("Bạn có chắc chắn muốn xóa sản phẩm: " + phone_id
					+ "?");
		}
	</script>
</body>

</html>
