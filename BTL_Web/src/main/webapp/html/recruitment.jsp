
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- add thư viện -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-hzBOifH8TI3YmZjHjPnpxzV7cJIZbRfi6L6KdhopcN4Up9XCBwyDtgxFpjv8bG2z" crossorigin="anonymous" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href=" https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css">
    <link rel="stylesheet" href="../css/phone.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/recruitment.css">

    <title>Tuyển dụng - Myphone</title>
</head>


<body>
    <header>
        <h2 class="header--title slide animate__animated animate__fadeInDown">[Khuyến mại] Thu cũ giá cao toàn bộ sản
            phẩm - Trợ giá tốt nhất</h2>
        <div class="nav--infomation ">
            <ul class="nav--infomation__top">
                <li class="items"><a href="../index.html">Trang Chủ</a></li>
                <li class="items"><a href="../html/introduce.html">Giới thiệu</a></li>
                <li class="items"><a href="./watched.html">Sản phẩm đã xem</a></li>
                <li class="items"><a href="./guaranteed.html">Trung tâm bảo hành</a></li>
                <li class="items"><a href="#0">Hệ thống 128 siêu thị</a></li>
                <li class="items"><a href="./recruitment.html">Tuyển dụng</a></li>
                <li class="items"><a href="./tracuu.html">Tra cứu</a></li>
                <li class="items"><a href="../html/login.html">Đăng Nhập</a></li>
            </ul>
        </div>

        <nav class="menu--desktop">
            <a href="../index.html" class="logo">
                <img src="../img/home/logo.png" alt="logo">
            </a>
            <div class="menu--search">
                <input type="text" placeholder="Search...">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>
            <a class="menu--check__product " href="./checkoder.html" style="text-decoration: none; color: black;">
                <i class="fa-solid fa-car"></i>
                Kiểm tra đơn hàng
            </a>
            <div class="menu--cart">
                <a href="./cart.html" style="text-decoration: none;">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span>2</span>
                </a>
            </div>
            <label for="nav--list__check">
                <i class="fa-solid fa-bars"></i>
            </label>
        </nav>
        <!-- menu lưa chọn các sản phẩm  -->
        <nav class="menu--bottom">
            <ul class="menu--choose">
                <li class="item"><a href="./iphone.html">
                        <div class="img">
                            <img src="../img/home/hd_mainmenu_icon2.webp" alt="logo">
                            iPhone
                        </div>
                    </a></li>
                <li class="item"><a href="./samsung.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon3.webp" alt="SAMSUNG"> SAMSUNG</div>
                    </a></li>
                <li class="item"><a href="./googlePixel.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon4.webp" alt="google">GOOGLE</div>
                    </a></li>
                <li class="item"><a href="./sony.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon5.webp" alt="sony"> SONY</div>
                    </a></li>
                <li class="item"><a href="./xiaomi.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon6.webp" alt="xiaomi"> XIAOMI</div>
                    </a></li>
                <li class="item"><a href="./news.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon10.webp" alt="tin tuc">TIN TỨC</div>
                    </a></li>
            </ul>
            <!-- mobile  -->
            <div class="nav--mobile">
                <input type="checkbox" id="nav--list__check" hidden>
                <label for="nav--list__check" class="bg--cover__mobile"></label>

                <ul class="nav--infomation__mobile">
                    <li class="tool">
                        <a href="./checkoder.html" class="menu--check__product" title="Kiểm tra đơn hàng">
                            <i class="fa-solid fa-car"></i>
                        </a>
                        <a href="./cart.html" class="menu--cart" title="Giỏ hàng">
                            <i class="fa-solid fa-cart-shopping"></i>
                            <span>2</span>
                        </a>
                    </li>
                    <li class="items"><a href="../index.html">Trang Chủ</a></li>
                    <li class="items"><a href="../html/introduce.html">Giới thiệu</a></li>
                    <li class="items"><a href="./watched.html">Sản phẩm đã xem</a></li>
                    <li class="items"><a href="./guaranteed.html">Trung tâm bảo hành</a></li>
                    <li class="items"><a href="#0">Hệ thông 128 siêu thị</a></li>
                    <li class="items"><a href="./recruitment.html">Tuyển dụng</a></li>
                    <li class="items"><a href="./tracuu.html">Tra cứu</a></li>
                    <li class="items"><a href="../html/login.html">Đăng Nhâp</a></li>

                    <div class="close--menu__mobile">
                        <label for="nav--list__check">Đóng</label>
                    </div>
                </ul>

            </div>
        </nav>
    </header>

    <main class="container mt-5">
        <h1 class="text-center mb-4">Tuyển dụng - Nhân viên bán hàng online</h1>
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <h2>Mô tả công việc:</h2>
                <ul>
                    <li>Tư vấn, giới thiệu sản phẩm cho khách hàng qua các kênh bán hàng online.</li>
                    <li>Chăm sóc khách hàng, giải đáp thắc mắc và xử lý khiếu nại.</li>
                    <li>Quản lý đơn hàng và theo dõi tiến độ giao hàng.</li>
                    <li>Cập nhật thông tin sản phẩm, chương trình khuyến mãi trên website và các trang mạng xã hội.</li>
                </ul>

                <h2>Yêu cầu công việc:</h2>
                <ul>
                    <li>Tốt nghiệp trung cấp trở lên.</li>
                    <li>Có kinh nghiệm bán hàng online là một lợi thế.</li>
                    <li>Kỹ năng giao tiếp tốt, thân thiện và nhiệt tình.</li>
                    <li>Biết sử dụng vi tính văn phòng và các công cụ hỗ trợ bán hàng online.</li>
                </ul>

                <h2>Quyền lợi:</h2>
                <ul>
                    <li>Lương cơ bản + Hoa hồng.</li>
                    <li>Thưởng theo doanh số.</li>
                    <li>Môi trường làm việc chuyên nghiệp, năng động.</li>
                    <li>Được đào tạo kỹ năng và nghiệp vụ bán hàng.</li>
                </ul>

                <h2>Hồ sơ ứng tuyển:</h2>
                <ul>
                    <li>Đơn xin việc.</li>
                    <li>Sơ yếu lý lịch.</li>
                    <li>Bản sao các bằng cấp liên quan.</li>
                    <li>CMND/CCCD.</li>
                    <li>Ảnh 3x4.</li>
                </ul>

                <h2>Cách thức ứng tuyển:</h2>
                <p>Ứng viên quan tâm vui lòng gửi hồ sơ về địa chỉ email: <strong>tuyendung@myphone.com</strong> hoặc
                    nộp trực tiếp tại văn phòng công ty: <strong>123 Đường ABC, Quận XYZ, TP.HCM</strong>.</p>

                <!-- Nút để mở modal -->
                <button type="button" class="btn--recruitment" data-bs-toggle="modal" data-bs-target="#applyModal">
                    Ứng tuyển ngay
                </button>
            </div>
        </div>
    </main>

    <!-- Modal -->
    <div class="modal fade" id="applyModal" tabindex="-1" aria-labelledby="applyModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="applyModalLabel">Thông tin ứng tuyển</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="name" class="form-label">Họ và tên</label>
                            <input type="text" class="form-control" id="name" required>
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="phone" class="form-label">Số điện thoại</label>
                            <input type="tel" class="form-control" id="phone" required>
                        </div>
                        <div class="mb-3">
                            <label for="resume" class="form-label">CV</label>
                            <input type="file" class="form-control" id="resume" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer--page mt-5">
        <div class="footer--page__container">
            <div class="row">
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Hỗ Trợ - Dịch Vụ</h1>
                    <ul class="page--suport">
                        <li class="item"><a href="#0">Chính sách và hướng dẫn mua hàng trả góp</a></li>
                        <li class="item"><a href="#0">Hướng dẫn mua hàng và chính sách vận chuyển</a></li>
                        <li class="item"><a href="./tracuu.html">Tra cứu đơn hàng</a></li>
                        <li class="item"><a href="#0">Chính sách đổi mới và bảo hành</a></li>
                        <li class="item"><a href="#0">Dịch vụ bảo hành mở rộng</a></li>
                        <li class="item"><a href="#0">Chính sách bảo mật</a></li>
                        <li class="item"><a href="#0">Chính sách giải quyết khiếu nại</a></li>
                        <li class="item"><a href="#0">Quy chế hoạt động</a></li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Thông Tin Liên Hệ</h1>
                    <ul class="page--suport">
                        <li class="item"><a href="#0">Thông tin các trang TMĐT</a></li>
                        <li class="item"><a href="#0">Dịch vụ sửa chữa</a></li>
                        <li class="item"><a href="#0">Tra cứu bảo hành</a></li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Thanh toán miễn phí</h1>
                    <ul class="page--suport">
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../img/home/logo-visa.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../img/home/logo-master.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../img/home/logo-jcb.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../img/home/logo-samsungpay.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../img/home/logo-atm.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../img/home/logo-vnpay.png" alt="">
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="footer-container">
                        <div class="row">
                            <h1>Hình thức vận chuyển</h1>
                            <div class="col-12">
                                <div class="logo--convert">
                                    <div class="img">
                                        <img src="../img/home/nhattin.jpg" alt="">
                                    </div>
                                    <div class="img">
                                        <img src="../img/home/vnpost.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Thư viện FontAwesome JS -->
    <script src="https://kit.fontawesome.com/850c4145ac.js" crossorigin="anonymous"></script>
    <!-- Thư viện Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/ZjVgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <!-- Thư viện Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>

</html>