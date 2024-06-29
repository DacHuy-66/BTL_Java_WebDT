<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật Đơn Hàng</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./admin/css/user.css">
</head>
<body>
	<div style="width: 600px; margin: 50px auto;">
		<h3 style="text-align: center;">Cập nhật Đơn hàng</h3>
		<form action="QLDonHang" method="post">
			<input type="hidden" name="action" value="update"> <input
				value="${detail.donhang_id}" type="hidden" name="donhang_id"
				readonly required>
			<div class="form-group">
				<label for="editDonhang_id">ID đơn hàng:</label> <input type="text"
					class="form-control" id="editDonhang_id" name="donhang_id"
					value="${detail.donhang_id}" readonly required>
			</div>
			<div class="form-group">
				<label for="editHoten">Họ tên</label> <input type="text"
					class="form-control" id="editHoten" name="hoten"
					value="${detail.hoten}" required>
			</div>
			<div class="form-group">
				<label for="editSdt">Số điện thoại</label> <input type="text"
					class="form-control" id="editSdt" name="sdt" value="${detail.sdt}"
					required>
			</div>
			<div class="form-group">
				<label for="editGiohang_id">ID Giỏ hàng:</label> <input type="text"
					class="form-control" id="editGiohang_id" name="giohang_id"
					value="${detail.giohang_id}" required>
			</div>
			<div class="form-group">
				<label for="editDiachigiaohang">Địa chỉ giao hàng:</label> <input
					type="text" class="form-control" id="editDiachigiaohang"
					name="diachigiaohang" value="${detail.diachigiaohang}" required>
			</div>

			<div class="form-group">
				<label for="editImage">Hình ảnh:</label> <input
					type="text" class="form-control" id="editImage"
					name="image" value="${detail.image}" required>
			</div>
			<div class="form-group">
				<label for="editModel">Model:</label> <input
					type="text" class="form-control" id="editModel"
					name="model" value="${detail.model}" required>
			</div>
			<div class="form-group">
				<label for="editDungluong">Dung lượng:</label> <input
					type="text" class="form-control" id="editDungluong"
					name="dungluong" value="${detail.dungluong}" required>
			</div>
			<div class="form-group">
				<label for="editMausac">Màu sắc:</label> <input
					type="text" class="form-control" id="editMausac"
					name="mausac" value="${detail.mausac}" required>
			</div>
			<div class="form-group">
				<label for="editSoluong">Số lượng:</label> <input
					type="number" class="form-control" id="editSoluong"
					name="soluong" value="${detail.soluong}" required>
			</div>
			<div class="form-group">
				<label for="editGia">Giá:</label> <input
					type="text" class="form-control" id="editGia"
					name="gia" value="${detail.gia}" required>
			</div>
			<div class="form-group">
				<label for="editStatus">Status:</label> <input type="text"
					class="form-control" id="editStatus" name="status"
					value="${detail.status}" required>
			</div>
			<button type="submit" class="btn btn-primary">Cập nhật Đơn
				hàng</button>
		</form>
	</div>
</body>
</html>
