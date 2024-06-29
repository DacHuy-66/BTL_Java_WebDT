<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật Khách Hàng</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./admin/css/user.css">
</head>
<body>
    <div style="width: 600px; margin: 50px auto;">
        <h3 style="text-align: center;">Cập nhật Khách Hàng</h3>
        <form action="QlKhachHang" method="post">
            <input type="hidden" name="action" value="update">
            <input value="${detail.username}" type="hidden" name="username" readonly required>
            <div class="form-group">
                <label for="editTenND">Tên người dùng:</label>
                <input type="text" class="form-control" id="editTenND" name="username" value="${detail.username}" readonly required>
            </div>
            <div class="form-group">
                <label for="editHoTen">Họ tên:</label>
                <input type="text" class="form-control" id="editHoTen" name="hoten" value="${detail.hoten}" required>
            </div>
            <div class="form-group">
                <label for="editEmail">Email:</label>
                <input type="email" class="form-control" id="editEmail" name="email" value="${detail.email}" required>
            </div>
            <div class="form-group">
                <label for="editPassword">Mật khẩu:</label>
                <input type="password" class="form-control" id="editPassword" name="password" value="${detail.password}" required>
            </div>
            <div class="form-group">
                <label for="editGioiTinh">Giới tính:</label>
                <select class="form-control" id="editGioiTinh" name="gioitinh" required>
                    <option value="1" ${detail.gioitinh == 1 ? 'selected' : ''}>Nam</option>
                    <option value="0" ${detail.gioitinh == 0 ? 'selected' : ''}>Nữ</option>
                </select>
            </div>
            <div class="form-group">
                <label for="editNgaySinh">Ngày sinh:</label>
                <input type="date" class="form-control" id="editNgaySinh" name="ngaysinh" value="${detail.ngaysinh}">
            </div>
            <div class="form-group">
                <label for="editSDT">Số điện thoại:</label>
                <input type="text" class="form-control" id="editSDT" name="sdt" value="${detail.sdt}" required>
            </div>
            <div class="form-group">
                <label for="editDiaChi">Địa chỉ:</label>
                <input type="text" class="form-control" id="editDiaChi" name="diachi" value="${detail.diachi}">
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật người dùng</button>
        </form>
    </div>
</body>
</html>
