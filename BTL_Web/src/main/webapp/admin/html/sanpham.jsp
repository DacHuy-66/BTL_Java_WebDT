<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thống Kê Số Lượng Sản Phẩm</title>
    <link rel="stylesheet" href="../css/sanpham.css"> <!-- External CSS -->
</head>

<body>
    <div class="navbar">
        <a href="./QlKhachHang">Quản Lý Khách Hàng</a>
        <a href="./QLSanPham">Quản lý Sản phẩm</a>
        <a href="./QLDonHang">Quản lý Đơn hàng</a>
        <a href="./QLThanhToan">Quản lý Thanh Toán</a>
        <a href="./ThongKe">Thống Kê Doanh Thu</a>
    </div>

    <div class="main-content">
        <h1>Thống Kê Số Lượng Sản Phẩm</h1>
        <div class="search-container">
            <input type="text" id="searchProduct" placeholder="Tìm kiếm sản phẩm...">
            <button class="btn__thongke">Tìm Kiếm Sản phẩm</button>
        </div>
        <div class="filter">
            <label for="productFilter">Lọc theo nhà cung cấp:</label>
            <select id="productFilter">
                <option value="samsung">Lọc</option>

                <option value="samsung">Samsung</option>
                <option value="apple">Apple</option>
                <option value="xiaomi">Xiaomi</option>
                <option value="sony">Sony</option>
            </select>
        </div>
        <table id="productTable">
            <thead>
                <tr>
                    <th>ID Sản Phẩm</th>
                    <th>Ảnh Sản Phẩm</th>
                    <th>Tên Sản Phẩm</th>
                    <th>Nhà Cung Cấp</th>
                    <th>Số Lượng Còn</th>
                </tr>
            </thead>
            <tbody>
                <!-- Dữ liệu sản phẩm được tải vào đây -->
            </tbody>
        </table>
    </div>

    <script>
        document.getElementById('searchProduct').addEventListener('input', function (e) {
            const searchTerm = e.target.value.toLowerCase();
            const rows = document.querySelectorAll("#productTable tbody tr");
            rows.forEach(row => {
                const productName = row.cells[2].textContent.toLowerCase();
                if (productName.includes(searchTerm)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            });
        });

    </script>
</body>

</html>