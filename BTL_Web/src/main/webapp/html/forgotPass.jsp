<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <!-- Thư viện FontAwesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
        integrity="sha384-hzBOifH8TI3YmZjHjPnpxzV7cJIZbRfi6L6KdhopcN4Up9XCBwyDtgxFpjv8bG2z" crossorigin="anonymous" />
    <!-- Thư viện Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <!-- Tệp CSS tùy chỉnh -->
    <link rel="stylesheet" href="./css/login.css">
</head>

<body>
<header>
        <h2 class="header--title">[Khuyến mại] Thu cũ giá cao toàn bộ sản phẩm - Trợ giá tốt nhất</h2>
        <div class="nav--infomation">
            <ul class="nav--infomation__top">
                <li class="items"><a href="#0">Bản mobile</a></li>
                <li class="items"><a href="#0">Giới thiệu</a></li>
                <li class="items"><a href="#0">Sản phẩm đã xem</a></li>
                <li class="items"><a href="#0">Trung tâm bảo hành</a></li>
                <li class="items"><a href="#0">Hệ thống 128 siêu thị</a></li>
                <li class="items"><a href="#0">Tuyển dụng</a></li>
                <li class="items"><a href="#0">Tra cứu</a></li>
                <li class="items"><a href="../html/login.jsp">Đăng Nhập</a></li>
            </ul>
        </div>

        <nav class="menu--desktop">
            <div class="logo">
                <img src="../images/img/logo.png" alt="logo">
            </div>
            <div class="menu--search">
                <input type="text" placeholder="Search...">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>
            <div class="menu--check__product">
                <i class="fa-solid fa-car"></i>
                Kiểm tra đơn hàng
            </div>
            <div class="menu--cart">
                <i class="fa-solid fa-cart-shopping"></i>
                <span>2</span>
            </div>
            <label for="nav--list__check">
                <i class="fa-solid fa-bars"></i>
            </label>
        </nav>

        <!-- Menu lựa chọn các sản phẩm -->
        <nav class="menu--bottom">
            <ul class="menu--choose">
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon1.webp" alt="">Điện Thoại</div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img">
                            <img src="../images/img/hd_mainmenu_icon2.webp" alt="logo">
                            iPhone
                        </div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon3.webp" alt="SAMSUNG"> SAMSUNG</div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon4.webp" alt="google">GOOGLE</div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon5.webp" alt="sony"> SONY</div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon6.webp" alt="xiaomi"> XIAOMI</div>
                    </a></li>
                <li class="item"><a href="#0">
                        <div class="img"><img src="../images/img/hd_mainmenu_icon10.webp" alt="tin tuc">TIN TỨC</div>
                    </a></li>
            </ul>
        </nav>

        <!-- Mobile menu -->
        <div class="nav--mobile">
            <input type="checkbox" id="nav--list__check" hidden>
            <label for="nav--list__check" class="bg--cover__mobile"></label>
            <ul class="nav--infomation__mobile">
                <li class="tool">
                    <a href="#0" class="menu--check__product" title="Kiểm tra đơn hàng">
                        <i class="fa-solid fa-car"></i>
                    </a>
                    <a href="#0" class="menu--cart" title="Giỏ hàng">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span>2</span>
                    </a>
                </li>
                <li class="items"><a href="#0">Bản mobile</a></li>
                <li class="items"><a href="#0">Giới thiệu</a></li>
                <li class="items"><a href="#0">Sản phẩm đã xem</a></li>
                <li class="items"><a href="#0">Trung tâm bảo hành</a></li>
                <li class="items"><a href="#0">Hệ thống 128 siêu thị</a></li>
                <li class="items"><a href="#0">Tuyển dụng</a></li>
                <li class="items"><a href="#0">Tra cứu</a></li>
                <li class="items"><a href="#0">Đăng Nhập</a></li>
                <div class="close--menu__mobile">
                    <label for="nav--list__check">Đóng</label>
                </div>
            </ul>
        </div>
    </header>

    <div class="container">
        <div class="full-width-content">
            <div class="just-center">
                <p>Nhập địa chỉ email đăng ký để khởi tạo lại mật khẩu. </p>

                    <div class="form-erros">
                        <p><strong>Bạn phải nhập email <br></strong></p>
                    </div><br>
            </div>
            <div class="just-center">
                <form method="post" action="/Account/ForgotPassword" class="js-validation-reminder form-horizontal push-30-t push-50">
                    <input name="__RequestVerificationToken" type="hidden" value="ocnklWNwNxKFUI23_9V1gW1e8RETQhu1jYNSFk3tYlTWytrnlAYxEQPW39kKZOphL1ZZoyNJy5auta35cEZV5i0mCgs1">
                    <input class="form-control" type="Email" id="Email" name="Email" placeholder="Nhập địa chỉ email" fdprocessedid="umi1wh"> 
                    <button class="btn btn-block btn-primary" type="submit" fdprocessedid="c8769"><i class="si si-envelope-open pull-right"></i> Gửi yêu cầu</button>
                </form>
            </div>
        </div>
    </div>

        <footer class="footer--page">
        <div class="footer--page__container">
            <div class="row">
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Hỗ Trợ - Dịch Vụ</h1>
                    <ul class="page--suport">
                        <li class="item"><a href="#0">Chính sách và hướng dẫn mua hàng trả góp</a></li>
                        <li class="item"><a href="#0">Hướng dẫn mua hàng và chính sách vận chuyển</a></li>
                        <li class="item"><a href="#0">Tra cứu đơn hàng</a></li>
                        <li class="item"><a href="#0">Chính sách đổi mới và bảo hành</a></li>
                        <li class="item"><a href="#0">Dịch vụ bảo hành mở rộng</a></li>
                        <li class="item"><a href="#0">Chính sách bảo mật</a></li>
                        <li class="item"><a href="#0">Chính sách giải quyết khiếu nại</a></li>
                        <li class="item"><a href="#0">Quy chế hoạt động</a></li>
                    </ul>
                </div>
                <!-- end col -->
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Thông Tin Liên Hệ</h1>
                    <ul class="page--suport">
                        <li class="item"><a href="#0">Thông tin các trang TMĐT</a></li>
                        <li class="item"><a href="#0">Dịch vụ sửa chữa</a></li>
                        <li class="item"><a href="#0">Tra cứu bảo hành</a></li>
                    </ul>
                </div>
                <!-- end col -->
                <div class="col-12 col-sm-6 col-md-3">
                    <h1>Thanh toán miễn phí</h1>
                    <ul class="page--suport">
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../images/img/logo-visa.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../images/img/logo-master.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../images/img/logo-jcb.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../images/img/logo-samsungpay.png" alt="">
                                </div>
                            </div>
                        </li>
                        <li class="pay">
                            <div class="logo--pay">
                                <div class="img">
                                    <img src="../images/img/logo-atm.png" alt="">
                                </div>
                                <div class="img">
                                    <img src="../images/img/logo-vnpay.png" alt="">
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- end col -->
                <div class="col-12 col-sm-6 col-md-3">
                    <div class="footer-container">
                        <div class="row">
                            <h1>Hình thức vận chuyển</h1>
                            <div class="col-12">
                                <div class="logo--convert">
                                    <div class="img">
                                        <img src="../images/img/nhattin.jpg" alt="">
                                    </div>
                                    <div class="img">
                                        <img src="../images/img/vnpost.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
        </div>
    </footer>

    <!-- Thư viện FontAwesome JS -->
    <script src="https://kit.fontawesome.com/850c4145ac.js" crossorigin="anonymous"></script>
    <!-- Thư viện Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <!-- Thư viện Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>
</body>

</html>