-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3308
-- Thời gian đã tạo: Th6 29, 2024 lúc 07:41 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_webdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `danhgia_id` varchar(10) NOT NULL,
  `phone_id` varchar(10) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `danhgia` varchar(10) NOT NULL,
  `mota` text DEFAULT NULL,
  `ngaydang` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhgia`
--

INSERT INTO `danhgia` (`danhgia_id`, `phone_id`, `username`, `danhgia`, `mota`, `ngaydang`) VALUES
('DG001', 'P001', 'user1', '5', 'Great phone, highly recommend!', '2024-06-03 11:23:17'),
('DG002', 'P002', 'user2', '4', 'Good phone but a bit expensive.', '2024-06-03 11:23:17'),
('DG003', 'P003', 'user3', '3', 'Average phone, decent performance for the price.', '2024-06-03 11:23:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `donhang_id` int(11) NOT NULL,
  `hoten` varchar(50) DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `giohang_id` int(11) DEFAULT NULL,
  `diachigiaohang` varchar(255) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `dungluong` varchar(255) NOT NULL,
  `mausac` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` double NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`donhang_id`, `hoten`, `sdt`, `giohang_id`, `diachigiaohang`, `image`, `model`, `dungluong`, `mausac`, `soluong`, `gia`, `status`) VALUES
(1, 'Nguyễn Văn A', '1234567890', 1, 'HP', 'https://tse1.mm.bing.net/th?id=OIP.4mz1Dr4UdEk7RhTwUqVhpwHaHa&pid=Api&P=0&h=220', 'Galaxy S21', '128GB', 'Black', 1, 200000, 'Delivered'),
(22, 'Huy', '1234567890', 21, '123', 'https://www.dslr-zone.com/wp-content/uploads/2021/10/2-2-800x800.jpeg', 'iPhone 13', '64GB', 'Black', 1, 2300000, 'Pending');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `giohang_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `gia` double NOT NULL,
  `soluong` int(11) NOT NULL,
  `dungluong` varchar(255) NOT NULL,
  `mausac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`giohang_id`, `image`, `model`, `gia`, `soluong`, `dungluong`, `mausac`) VALUES
(26, 'https://media.extra.com/s/aurora/100322230_800/Apple-iPhone-14-Pro-Max%2C-5G%2C-128GB%2C-Space-Black?locale=en-GB,en-*,*', 'iPhone 14', 30, 1, '64GB', 'Xanh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mathang`
--

CREATE TABLE `mathang` (
  `mathang_id` varchar(10) NOT NULL,
  `phone_id` varchar(10) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `dungluong` varchar(20) DEFAULT NULL,
  `mausac` varchar(20) DEFAULT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mathang`
--

INSERT INTO `mathang` (`mathang_id`, `phone_id`, `soluong`, `dungluong`, `mausac`, `gia`) VALUES
('MH001', 'P001', 10, '64GB', 'Xanh', 0),
('MH0010', 'P003', 10, '256GB', 'Đen', 0),
('MH0011', 'P004', 10, '64GB', 'Xanh', 0),
('MH0012', 'P004', 10, '128GB', 'Đỏ', 0),
('MH0013', 'P004', 10, '256GB', 'Đen', 0),
('MH0014', 'P005', 10, '64GB', 'Xanh', 0),
('MH0015', 'P005', 10, '128GB', 'Đỏ', 0),
('MH0016', 'P005', 10, '256GB', 'Đen', 0),
('MH0017', 'P006', 10, '64GB', 'Xanh', 0),
('MH0018', 'P006', 10, '128GB', 'Đỏ', 0),
('MH0019', 'P006', 10, '256GB', 'Đen', 0),
('MH002', 'P001', 10, '128GB', 'Đỏ', 0),
('MH0020', 'P007', 10, '64GB', 'Xanh', 0),
('MH0021', 'P007', 10, '128GB', 'Đỏ', 0),
('MH0022', 'P007', 10, '256GB', 'Đen', 0),
('MH0023', 'P008', 10, '64GB', 'Xanh', 0),
('MH0024', 'P008', 10, '128GB', 'Đỏ', 0),
('MH0025', 'P008', 10, '256GB', 'Đen', 0),
('MH0026', 'P009', 10, '64GB', 'Xanh', 0),
('MH0027', 'P009', 10, '128GB', 'Đỏ', 0),
('MH0028', 'P009', 10, '256GB', 'Đen', 0),
('MH0029', 'P010', 10, '64GB', 'Xanh', 0),
('MH003', 'P001', 10, '256GB', 'Đen', 0),
('MH0030', 'P010', 10, '128GB', 'Đỏ', 0),
('MH0031', 'P010', 10, '256GB', 'Đen', 0),
('MH0032', 'P011', 10, '64GB', 'Xanh', 0),
('MH0033', 'P011', 10, '128GB', 'Đỏ', 0),
('MH0034', 'P011', 10, '256GB', 'Đen', 0),
('MH0035', 'P012', 10, '64GB', 'Xanh', 0),
('MH0036', 'P012', 10, '128GB', 'Đỏ', 0),
('MH0037', 'P012', 10, '256GB', 'Đen', 0),
('MH0038', 'P013', 10, '64GB', 'Xanh', 0),
('MH0039', 'P013', 10, '128GB', 'Đỏ', 0),
('MH004', 'P002', 10, '64GB', 'Đen', 0),
('MH0040', 'P013', 10, '256GB', 'Đen', 0),
('MH0041', 'P014', 10, '64GB', 'Xanh', 0),
('MH0042', 'P014', 10, '128GB', 'Đỏ', 0),
('MH0043', 'P014', 10, '256GB', 'Đen', 0),
('MH0044', 'P015', 10, '64GB', 'Xanh', 0),
('MH0045', 'P015', 10, '128GB', 'Đỏ', 0),
('MH0046', 'P015', 10, '256GB', 'Đen', 0),
('MH0047', 'P016', 10, '64GB', 'Xanh', 0),
('MH0048', 'P016', 10, '128GB', 'Đỏ', 0),
('MH0049', 'P016', 10, '256GB', 'Đen', 0),
('MH005', 'P002', 10, '64GB', 'Xanh', 0),
('MH0050', 'P017', 10, '64GB', 'Xanh', 0),
('MH0051', 'P017', 10, '128GB', 'Đỏ', 0),
('MH0052', 'P017', 10, '256GB', 'Đen', 0),
('MH0053', 'P018', 10, '64GB', 'Xanh', 0),
('MH0054', 'P018', 10, '128GB', 'Đỏ', 0),
('MH0055', 'P018', 10, '256GB', 'Đen', 0),
('MH0056', 'P019', 10, '64GB', 'Xanh', 0),
('MH0057', 'P019', 10, '128GB', 'Đỏ', 0),
('MH0058', 'P019', 10, '256GB', 'Đen', 0),
('MH0059', 'P020', 10, '64GB', 'Xanh', 0),
('MH006', 'P002', 10, '128GB', 'Đỏ', 0),
('MH0060', 'P020', 10, '128GB', 'Đỏ', 0),
('MH0061', 'P020', 10, '256GB', 'Đen', 0),
('MH0062', 'P021', 10, '64GB', 'Xanh', 0),
('MH0063', 'P021', 10, '128GB', 'Đỏ', 0),
('MH0064', 'P021', 10, '256GB', 'Đen', 0),
('MH0065', 'P022', 10, '64GB', 'Xanh', 0),
('MH0066', 'P022', 10, '128GB', 'Đỏ', 0),
('MH0067', 'P022', 10, '256GB', 'Đen', 0),
('MH0068', 'P023', 10, '64GB', 'Xanh', 0),
('MH0069', 'P023', 10, '128GB', 'Đỏ', 0),
('MH007', 'P002', 10, '256GB', 'Đen', 0),
('MH0070', 'P023', 10, '256GB', 'Đen', 0),
('MH0071', 'P024', 10, '64GB', 'Xanh', 0),
('MH0072', 'P024', 10, '128GB', 'Đỏ', 0),
('MH0073', 'P024', 10, '256GB', 'Đen', 0),
('MH0074', 'P025', 10, '64GB', 'Xanh', 0),
('MH0075', 'P025', 10, '128GB', 'Đỏ', 0),
('MH0076', 'P025', 10, '256GB', 'Đen', 0),
('MH0077', 'P026', 10, '64GB', 'Xanh', 0),
('MH0078', 'P026', 10, '128GB', 'Đỏ', 0),
('MH0079', 'P026', 10, '256GB', 'Đen', 0),
('MH008', 'P003', 10, '64GB', 'Xanh', 0),
('MH0080', 'P027', 10, '64GB', 'Xanh', 0),
('MH0081', 'P027', 10, '128GB', 'Đỏ', 0),
('MH0082', 'P027', 10, '256GB', 'Đen', 0),
('MH0083', 'P028', 10, '64GB', 'Xanh', 0),
('MH0084', 'P028', 10, '128GB', 'Đỏ', 0),
('MH0085', 'P028', 10, '256GB', 'Đen', 0),
('MH0086', 'P029', 10, '64GB', 'Xanh', 0),
('MH0087', 'P029', 10, '128GB', 'Đỏ', 0),
('MH0088', 'P029', 10, '256GB', 'Đen', 0),
('MH0089', 'P030', 10, '64GB', 'Xanh', 0),
('MH009', 'P003', 10, '128GB', 'Đỏ', 0),
('MH0090', 'P030', 10, '128GB', 'Đỏ', 0),
('MH0091', 'P030', 10, '256GB', 'Đen', 0),
('MH0092', 'P031', 10, '64GB', 'Xanh', 0),
('MH0093', 'P031', 10, '128GB', 'Đỏ', 0),
('MH0094', 'P031', 10, '256GB', 'Đen', 0),
('MH0095', 'P032', 10, '64GB', 'Xanh', 0),
('MH0096', 'P032', 10, '128GB', 'Đỏ', 0),
('MH0097', 'P032', 10, '256GB', 'Đen', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ncc`
--

CREATE TABLE `ncc` (
  `ncc_id` varchar(10) NOT NULL,
  `ten_ncc` varchar(50) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ncc`
--

INSERT INTO `ncc` (`ncc_id`, `ten_ncc`, `info`, `banner`) VALUES
('NCC001', 'Samsung', 'contact@samsung.com', 'https://file.hstatic.net/1000370129/collection/samsung_bd65f6e2060f4408a75e4d67d41ffc79_master.jpg'),
('NCC002', 'Apple', 'contact@apple.com', 'https://file.hstatic.net/1000370129/collection/iphone_7d3ac58b40404ffebef760dbe4c958e1_master.jpg'),
('NCC003', 'Xiaomi', 'contact@xiaomi.com', 'https://images.fpt.shop/unsafe/fit-in/1200x300/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2024/6/1/638527979344858417_F-C1_1200x300@2x.png'),
('NCC004', 'Sony', 'contact@sony.com', 'https://suachuasony.com/wp-content/uploads/2024/03/banner-sony-scaled.jpg'),
('NCC005', 'Google', 'contact@google.com', 'https://cdn.tgdd.vn/Files/2023/10/12/1551595/google-pixel-8-scaled-121023-223914-800-resize.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `payment_id` varchar(10) NOT NULL,
  `donhang_id` int(10) DEFAULT NULL,
  `sotienthanhtoan` int(11) NOT NULL,
  `phuongthucthanhtoan` varchar(50) DEFAULT NULL,
  `ngaythanhtoan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`payment_id`, `donhang_id`, `sotienthanhtoan`, `phuongthucthanhtoan`, `ngaythanhtoan`) VALUES
('PM001', 1, 200000, 'Trực tiếp', '2024-06-07'),
('PM002', 1, 110000, 'Credit Card', '2024-05-15'),
('PM003', 1, 930000, 'Credit Card', '2024-06-15'),
('PM004', 1, 990000, 'Bank Transfer', '2024-06-10'),
('PM005', 1, 1300000, 'Credit Card', '2024-05-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `phone_id` varchar(10) NOT NULL,
  `thuonghieu` varchar(20) NOT NULL,
  `model` varchar(30) NOT NULL,
  `gia` double NOT NULL,
  `soluong` varchar(10) NOT NULL,
  `thongso` text DEFAULT NULL,
  `ncc_id` varchar(10) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`phone_id`, `thuonghieu`, `model`, `gia`, `soluong`, `thongso`, `ncc_id`, `image`) VALUES
('P001', 'Samsung', 'Galaxy S21', 200000, '50', '8GB RAM, 128GB Storage, 4000mAh Battery ', 'NCC001', 'https://tse1.mm.bing.net/th?id=OIP.4mz1Dr4UdEk7RhTwUqVhpwHaHa&pid=Api&P=0&h=220'),
('P002', 'Apple', 'iPhone 13', 2300000, '10', '6GB RAM, 128GB Storage, 3300mAh Battery', 'NCC002', 'https://www.dslr-zone.com/wp-content/uploads/2021/10/2-2-800x800.jpeg'),
('P003', 'Xiaomi', 'Mi 11', 1000000, '20', '8GB RAM, 128GB Storage, 4600mAh Battery ', 'NCC003', 'https://tse1.mm.bing.net/th?id=OIP.178iLpYDpNr1lKeKoRYDgAHaHa&pid=Api&P=0&h=220'),
('P004', 'Samsung', 'Galaxy Note 20', 1232000, '40', '8GB RAM, 256GB Storage, 4300mAh Battery', 'NCC001', 'https://m.media-amazon.com/images/I/71yQ135ijEL._AC_SL1500_.jpg'),
('P005', 'Apple', 'iPhone 12', 1333344, '25', '4GB RAM, 64GB Storage, 2815mAh Battery', 'NCC002', 'https://tse3.mm.bing.net/th?id=OIP.YHfKlhkgOWicU071HntlPgHaHS&pid=Api&P=0&h=220'),
('P006', 'Xiaomi', 'Redmi Note 10', 7.6, '100', '4GB RAM, 64GB Storage, 5000mAh Battery', 'NCC003', 'https://tse4.mm.bing.net/th?id=OIP.38acqKB2JDj20WCFWBVcsgHaHa&pid=Api&P=0&h=220'),
('P007', 'Samsung', 'Galaxy S22', 22, '50', '12GB RAM, 256GB Storage, 5000mAh Battery', 'NCC001', 'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6494/6494441_sd.jpg'),
('P008', 'Samsung', 'Galaxy Note 21', 25, '30', '16GB RAM, 512GB Storage, 5500mAh Battery', 'NCC001', 'https://specs-tech.com/wp-content/uploads/2021/01/Samsung-Galaxy-Note-21-2.jpg'),
('P009', 'Samsung', 'Galaxy A52', 10.5, '40', '6GB RAM, 128GB Storage, 4500mAh Battery', 'NCC001', 'https://c1.neweggimages.com/ProductImageCompressAll1280/75-168-051-V01.jpg'),
('P010', 'Samsung', 'Galaxy Z Fold 4', 30, '20', '12GB RAM, 512GB Storage, 4500mAh Battery', 'NCC001', 'https://static1.xdaimages.com/wordpress/wp-content/uploads/2022/08/Samsung-Galaxy-Z-Fold-4-Burgundy.jpg'),
('P011', 'Samsung', 'Galaxy M32', 7, '60', '4GB RAM, 64GB Storage, 6000mAh Battery', 'NCC001', 'https://specifications-pro.com/wp-content/uploads/2021/06/Samsung-Galaxy-M32.jpg'),
('P012', 'Xiaomi', 'Mi 12', 18, '40', '12GB RAM, 256GB Storage, 5000mAh Battery', 'NCC003', 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1647849448.31929017.png'),
('P013', 'Xiaomi', 'Redmi Note 11', 8.5, '50', '8GB RAM, 128GB Storage, 4500mAh Battery', 'NCC003', 'https://media.croma.com/image/upload/v1662444398/Croma%20Assets/Communication/Mobiles/Images/248699_or47vx.png'),
('P014', 'Xiaomi', 'POCO F4', 15, '30', '8GB RAM, 256GB Storage, 4700mAh Battery', 'NCC003', 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1654768848.58114341.png'),
('P015', 'Xiaomi', 'Redmi 10', 6, '70', '4GB RAM, 64GB Storage, 5000mAh Battery', 'NCC003', 'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1658756612.14548474.png'),
('P016', 'Xiaomi', 'Mi Mix 5', 28, '15', '16GB RAM, 1TB Storage, 6000mAh Battery', 'NCC003', 'https://specifications-pro.com/wp-content/uploads/2021/10/Xiaomi-Mi-Mix-5.jpg'),
('P017', 'Apple', 'iPhone 14', 30, '25', '8GB RAM, 256GB Storage, 4000mAh Battery', 'NCC002', 'https://media.extra.com/s/aurora/100322230_800/Apple-iPhone-14-Pro-Max%2C-5G%2C-128GB%2C-Space-Black?locale=en-GB,en-*,*'),
('P018', 'Apple', 'iPhone SE 3', 15, '35', '6GB RAM, 128GB Storage, 2800mAh Battery', 'NCC002', 'https://m.media-amazon.com/images/I/61TOWf11+jL.jpg'),
('P019', 'Apple', 'iPhone 12 Pro', 28, '20', '8GB RAM, 512GB Storage, 3700mAh Battery', 'NCC002', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/refurb-iphone-12-pro-max-blue-2020?wid=1144&hei=1144&fmt=jpeg&qlt=90&.v=1635202944000'),
('P020', 'Apple', 'iPhone XR', 20, '30', '4GB RAM, 64GB Storage, 2942mAh Battery', 'NCC002', 'https://cdn.movertix.com/media/catalog/product/cache/image/1200x/a/p/apple-iphone-xr-128-gb-rojo-0190198773227.jpg'),
('P021', 'Apple', 'iPhone 11', 22, '40', '4GB RAM, 128GB Storage, 3110mAh Battery', 'NCC002', 'https://i5.walmartimages.com/asr/f33b621a-af78-4563-a37e-b1bf07d14588.5baa2398e4efe3877b6884ea7273833e.jpeg?odnWidth=1000&odnHeight=1000&odnBg=ffffff'),
('P022', 'Sony', 'Xperia 1 III', 24, '20', '12GB RAM, 256GB Storage, 4500mAh Battery', 'NCC004', 'https://tse3.mm.bing.net/th?id=OIP.LH0yxywOk6rXfX9KYwxUMAHaHa&pid=Api&P=0&h=220'),
('P023', 'Sony', 'Xperia 5 II', 18, '25', '8GB RAM, 128GB Storage, 4000mAh Battery', 'NCC004', 'https://i5.walmartimages.com/asr/860b8ec2-2d7e-409f-a4af-8bcb0243310f.9f25eee5bfffc7d11fdd8befcb825c76.jpeg'),
('P024', 'Sony', 'Xperia 10 III', 12, '30', '6GB RAM, 64GB Storage, 3500mAh Battery', 'NCC004', 'https://tse4.mm.bing.net/th?id=OIP.9fNoqiUrxVeckL1GlsjhawHaHa&pid=Api&P=0&h=220'),
('P025', 'Sony', 'Xperia L4', 7, '40', '4GB RAM, 64GB Storage, 3580mAh Battery', 'NCC004', 'https://img.generation-nt.com/0001665743.jpg'),
('P026', 'Sony', 'Xperia 10 II', 10, '35', '4GB RAM, 128GB Storage, 3600mAh Battery', 'NCC004', 'https://tse2.mm.bing.net/th?id=OIP.dvf4NNpA5dRQqOPo9ueVMAHaHa&pid=Api&P=0&h=220'),
('P027', 'Google', 'Pixel 7', 25, '15', '8GB RAM, 256GB Storage, 4000mAh Battery', 'NCC005', 'https://static1.pocketnowimages.com/wordpress/wp-content/uploads/2022/10/PBI-Spigen-Thin-Fit-Pixel-7-Pro-Case-Thin.png'),
('P028', 'Google', 'Pixel 6a', 18, '25', '6GB RAM, 128GB Storage, 3700mAh Battery', 'NCC005', 'https://cdn.movertix.com/media/catalog/product/g/o/google-pixel-6a-5g-charcoal-black-128gb.jpg'),
('P029', 'Google', 'Pixel 5a', 20, '20', '6GB RAM, 256GB Storage, 3800mAh Battery', 'NCC005', 'https://specifications-pro.com/wp-content/uploads/2020/08/Google-Pixel-5a.jpg'),
('P030', 'Google', 'Pixel 4a', 15, '30', '6GB RAM, 128GB Storage, 3140mAh Battery', 'NCC005', 'https://i5.walmartimages.com/asr/4835cb42-c0cb-4b7b-88b5-0620bbf09dfb.86082c621a4506f151139ab87e4b9326.jpeg'),
('P031', 'Google', 'Pixel 3', 12, '35', '4GB RAM, 64GB Storage, 3000mAh Battery', 'NCC005', 'http://phonesdata.com/files/models/Google--Pixel-3a-450.png'),
('P032', 'Samsung', 'Galaxy S222', 20, '12', '8GB RAM, 128GB Storage, 4000mAh Battery', 'NCC001', 'https://tse1.mm.bing.net/th?id=OIP.4mz1Dr4UdEk7RhTwUqVhpwHaHa&pid=Api&P=0&h=220	');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `hoten`, `password`, `email`, `gioitinh`, `ngaysinh`, `sdt`, `diachi`) VALUES
('user1', 'Nguyen Van A', '123', 'nguyenvana@example.com', 1, '2000-01-12', '0000000000', 'HaNoi'),
('user2', 'Tran Thi B', '111', 'tranthib@example.com', 1, '2000-01-01', '0000000000', 'HCM'),
('user3', 'Le Van C', '111', 'levanc@example.com', 1, '2000-01-01', '0000000000', 'Danang'),
('user4', 'Nguyen Van A', '123', 'nguyenva@example.com', 0, '2000-01-11', '0000000000', 'Hanoi'),
('user5', 'Huy', '111', 'nguyenhuy0496@gmail.com', 0, '2024-06-26', '1234567890', 'HP');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`danhgia_id`),
  ADD KEY `phone_id` (`phone_id`),
  ADD KEY `username` (`username`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `username` (`hoten`),
  ADD KEY `giohang_id` (`giohang_id`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`mathang_id`),
  ADD KEY `phone_id` (`phone_id`);

--
-- Chỉ mục cho bảng `ncc`
--
ALTER TABLE `ncc`
  ADD PRIMARY KEY (`ncc_id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `donhang_id` (`donhang_id`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`),
  ADD KEY `ncc_id` (`ncc_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `email_2` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `email_3` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `mathang`
--
ALTER TABLE `mathang`
  ADD CONSTRAINT `mathang_ibfk_2` FOREIGN KEY (`phone_id`) REFERENCES `phone` (`phone_id`);

--
-- Các ràng buộc cho bảng `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`donhang_id`);

--
-- Các ràng buộc cho bảng `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`ncc_id`) REFERENCES `ncc` (`ncc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
