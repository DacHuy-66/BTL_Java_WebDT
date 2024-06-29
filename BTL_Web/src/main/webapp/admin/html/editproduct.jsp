<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật Sản Phẩm</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./admin/css/user.css">
</head>
<body>
    <div style="width: 600px; margin: 50px auto;">
        <h3 style="text-align: center;">Cập nhật Sản Phẩm</h3>
        <form action="QLSanPham" method="post">
            <input type="hidden" name="action" value="update">
            <input value="${detail.phone_id}" type="hidden" name="phone_id" readonly required>
            <div class="form-group">
                <label for="editPhone_id">ID sản phẩm:</label>
                <input type="text" class="form-control" id="editPhone_id" name="phone_id" value="${detail.phone_id}" readonly required>
            </div>
            <div class="form-group">
                <label for="editThuongHieu">Thương hiệu:</label>
                <input type="text" class="form-control" id="editThuongHieu" name="thuonghieu" value="${detail.thuonghieu}" required>
            </div>
            <div class="form-group">
                <label for="editModel">Model:</label>
                <input type="text" class="form-control" id="editModel" name="model" value="${detail.model}" required>
            </div>
            <div class="form-group">
                <label for="editGia">Giá:</label>
                <input type="text" class="form-control" id="editGia" name="gia" value="${detail.gia}" required>
            </div>
            <div class="form-group">
                <label for="editSoluong">Số lượng:</label>
                <input type="number" class="form-control" id="editSoluong" name="soluong" value="${detail.soluong}" required>
            </div>
            <div class="form-group">
                <label for="editThongso">Thông số:</label>
                <input type="text" class="form-control" id="editThongso" name="thongso" value="${detail.thongso}">
            </div>
            <div class="form-group">
                <label for="editNcc_id">ID Nhà cung cấp:</label>
                <input type="text" class="form-control" id="editNcc_id" name="ncc_id" value="${detail.ncc_id}" required>
            </div>
            <div class="form-group">
                <label for="editImage">URL Hình ảnh:</label>
                <input type="text" class="form-control" id="editImage" name="image" value="${detail.image}">
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật Sản phẩm</button>
        </form>
    </div>
</body>
</html>
