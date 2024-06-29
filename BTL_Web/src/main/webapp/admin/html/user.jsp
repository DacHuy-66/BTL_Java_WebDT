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
<link rel="stylesheet" href="./admin/css/user.css">
<title>Quản lý Khach Hàng</title>
</head>
<body>
	<div class="navbar">
        <a href="./QlKhachHang">Quản Lý Khách Hàng</a>
        <a href="./QLSanPham">Quản lý Sản phẩm</a>
        <a href="./QLDonHang">Quản lý Đơn hàng</a>
        <a href="./QLThanhToan">Quản lý Thanh Toán</a>
        <a href="./ThongKe">Thống Kê Doanh Thu</a>
    </div>

	<div class="container">
		<h1>Quản lý Người dùng</h1>
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
			<c:if test="${not empty requestScope.missingBirthYearMessage}">
				<p style="color: red;">
					<c:out value="${requestScope.missingBirthYearMessage}" />
				</p>
			</c:if>

		</div>
		<h2>Thêm/Cập nhật người dùng</h2>
		<form action="QlKhachHang" method="post">

			<div class="form-container">
				<input type="hidden" name="action" value="add">
				<div class="form-group">
					<label for="username">Tên người dùng:</label> <input type="text"
						id="username" name="username" required>
				</div>
				<div class="form-group">
					<label for="hoten">Họ tên:</label> <input type="text" id="hoten"
						name="hoten" required>
				</div>
				<div class="form-group">
					<label for="email">Email:</label> <input type="email" id="email"
						name="email" required>
				</div>
				<div class="form-group">
					<label for="password">Mật khẩu:</label> <input type="password"
						id="password" name="password" required>
				</div>
				<div class="form-group">
					<label for="gioitinh">Giới tính:</label> <select id="gioitinh"
						name="gioitinh" required>
						<option value="1">Nam</option>
						<option value="0">Nữ</option>
					</select>
				</div>
				<div class="form-group">
					<label for="ngaysinh">Ngày sinh:</label> <input type="date"
						id="ngaysinh" name="ngaysinh">
				</div>
				<div class="form-group">
					<label for="sdt">Số điện thoại:</label> <input type="text" id="sdt"
						name="sdt" required>
				</div>
				<div class="form-group">
					<label for="diachi">Địa chỉ:</label> <input type="text" id="diachi"
						name="diachi">
				</div>
				<button type="submit">Thêm người dùng</button>

			</div>
		</form>
		<h2>Danh sách Người dùng</h2>
		<div class="search-container">
			<form action="QlKhachHang" method="get">
				<input type="text" id="searchTerm" name="searchTerm"
					placeholder="Tìm kiếm người dùng...">
				<button type="submit">Tìm kiếm</button>
			</form>
		</div>
		<table>
			<thead>
				<tr>
					<th>Tên người dùng</th>
					<th>Họ tên</th>
					<th>Password</th>
					<th>Email</th>
					<th>Giới tính</th>
					<th>Ngày sinh</th>
					<th>Số điện thoại</th>
					<th>Địa chỉ</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<c:if test="${not empty erMessage}">
				<p style="color: red;">
					<c:out value="${erMessage}" />
				</p>
			</c:if>
			<tbody>
				<c:forEach var="user" items="${userList}">
					<tr>
						<td>${user.username}</td>
						<td>${user.hoten}</td>
						<td>${user.password }</td>
						<td>${user.email}</td>
						<td>${user.gioitinh == 1 ? 'Nam' : 'Nữ'}</td>
						<td>${user.ngaysinh}</td>
						<td>${user.sdt}</td>
						<td>${user.diachi}</td>
						<td class="action-buttons"><a
							href="Load?Kuser=${user.username }"> <input type="hidden"
								name="action" value="edit"> <input type="hidden"
								name="username" value="${user.username}">
								<button type="submit" class="btn btn-warning btn-sm">Sửa</button>
						</a>
							<form action="QlKhachHang" method="post" style="display: inline;"
								onsubmit="return confirmDelete('${user.username}');">
								<input type="hidden" name="action" value="delete"> <input
									type="hidden" name="username" value="${user.username}">
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
                    <li class="page-item">
                        <a class="page-link" href="?page=${currentPage - 1}" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                </c:if>
                <c:forEach begin="1" end="${totalPages}" varStatus="loop">
                    <c:if test="${loop.index == currentPage}">
                        <li class="page-item active"><a class="page-link" href="?page=${loop.index}">${loop.index}</a></li>
                    </c:if>
                    <c:if test="${loop.index != currentPage}">
                        <li class="page-item"><a class="page-link" href="?page=${loop.index}">${loop.index}</a></li>
                    </c:if>
                </c:forEach>
                <c:if test="${currentPage < totalPages}">
                    <li class="page-item">
                        <a class="page-link" href="?page=${currentPage + 1}" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </c:if>
            </ul>
        </nav>
        
    </div>
    <!-- Bootstrap JS và các thư viện khác -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	<script>
		function confirmDelete(username) {
			return confirm("Bạn có chắc chắn muốn xóa người dùng: " + username
					+ "?");
		}
	</script>
</body>
</html>