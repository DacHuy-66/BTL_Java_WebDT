<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản lý Khách Hàng</title>
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
	<div class="navbar">
		<a href="./QlKhachHang">Quản Lý Khách Hàng</a> <a href="./QLSanPham">Quản
			lý Sản phẩm</a> <a href="./QLDonHang">Quản lý Đơn hàng</a> <a
			href="./QLThanhToan">Quản lý Thanh Toán</a> <a href="./ThongKe">Thống
			Kê Doanh Thu</a>
	</div>
	<div class="container">
		<h1>Thống kê doanh thu</h1>
		<div class="row">
			<div class="col-md-6">
				<h3>Thu nhập theo tháng</h3>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Tháng</th>
							<th>Doanh thu</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${monthlyRevenue}">
							<tr>
								<td>${item.month}</td>
								<td><fmt:formatNumber value="${item.revenue}"
										type="currency" currencySymbol="VNĐ" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-6">
				<h3>Thu nhập theo năm</h3>
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Năm</th>
							<th>Doanh thu</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${yearlyRevenue}">
							<tr>
								<td>${item.year}</td>
								<td><fmt:formatNumber value="${item.revenue}"
										type="currency" currencySymbol="VNĐ" /></td>
								<!-- Corrected closing </td> here -->
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

		<div class="row mt-4">
			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-left-info shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div
									class="text-xs font-weight-bold text-info text-uppercase mb-1">ĐƠN
									GIAO THÀNH CÔNG</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800">${successCount}</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-xl-3 col-md-6 mb-4">
				<div class="card border-left-warning shadow h-100 py-2">
					<div class="card-body">
						<div class="row no-gutters align-items-center">
							<div class="col mr-2">
								<div
									class="text-xs font-weight-bold text-warning text-uppercase mb-1">ĐƠN
									ĐANG ĐỢI XÁC NHẬN</div>
								<div class="h5 mb-0 font-weight-bold text-gray-800">${pendingCount}</div>
							</div>
							<div class="col-auto">
								<i class="fas fa-comments fa-2x text-gray-300"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
