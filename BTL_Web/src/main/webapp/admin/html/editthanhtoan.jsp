<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cập nhật Thanh Toán</title>
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./admin/css/user.css">
</head>
<body>
    <div style="width: 600px; margin: 50px auto;">
        <h3 style="text-align: center;">Cập nhật Thanh Toán</h3>
        <form action="QLThanhToan" method="post">
            <input type="hidden" name="action" value="update">
            <input value="${detail.payment_id }" type="hidden" name="payment_id " readonly required>
            <div class="form-group">
                <label for="editPayment_id ">ID Thanh toán:</label>
                <input type="text" class="form-control" id="editPayment_id" name="payment_id " value="${detail.payment_id}" readonly required>
            </div>
            <div class="form-group">
                <label for="editDonhang_id ">ID Đơn hàng:</label>
                <input type="text" class="form-control" id="editDonhang_id" name="donhang_id " value="${detail.donhang_id }" required>
            </div>
            <div class="form-group">
                <label for="editSotienthanhtoan">Số tiền đã thanh toán:</label>
                <input type="text" class="form-control" id="editSotienthanhtoan" name="sotienthanhtoan" value="${detail.sotienthanhtoan}" required>
            </div>
            <div class="form-group">
                <label for="editPhuongthucthanhtoan">Phương thức thanh toán:</label>
                <input type="text" class="form-control" id="editPhuongthucthanhtoan" name="phuongthucthanhtoan" value="${detail.phuongthucthanhtoan}" required>
            </div>
            <div class="form-group">
                <label for="editNgaythanhtoan">Ngày thanh toán:</label>
                <input type="date" class="form-control" id="editNgaythanhtoan" name="ngaythanhtoan" value="${detail.ngaythanhtoan}">
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật Thanh toán</button>
        </form>
    </div>
</body>
</html>
