<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <!-- boostrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="css/animate.css">


    <!-- animation -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <link rel="stylesheet" href=" https://cdn.rawgit.com/daneden/animate.css/v3.1.0/animate.min.css">

    <!-- add css  -->
    <link rel="stylesheet" href="../css/phone.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/tracuu.css">
    <title>Myphone</title>
</head>

<body>
    <header>
        <h2 class="header--title slide animate__animated animate__fadeInDown">[Khuyến mại] Thu cũ giá cao toàn bộ sản
            phẩm
            - Trợ giá tốt nhất</h2>
        <div class="nav--infomation ">
            <ul class="nav--infomation__top">
                <li class="items"><a href="../index.html">Trang Chủ</a></li>
                <li class="items"><a href="../html/introduce.html">Giới thiệu</a></li>
                <li class="items"><a href="./watched.html">Sản phẩm đã xem</a></li>
                <li class="items"><a href="./guaranteed.html">Trung tâm bảo hành</a></li>
                <li class="items"><a href="#0">Hệ thông 128 siêu thị</a></li>
                <li class="items"><a href="./recruitment.html">Tuyển dụng</a></li>
                <li class="items"><a href="./tracuu.html">Tra cứu</a></li>
                <li class="items"><a href="../html/login.html">Đăng Nhâp</a></li>

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
                </a></li>
                <li class="item"><a href="./xiaomi.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon6.webp" alt="xiaomi"> XIAOMI</div>

                    </a></li>
                </a></li>
                <li class="item"><a href="./news.html">
                        <div class="img"><img src="../img/home/hd_mainmenu_icon10.webp" alt="tin tuc">TIN TỨC</div>

                    </a></li>
                </a></li>
            </ul>
        </nav>
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
                <li class="items"><a href="#0">Tra cứu</a></li>
                <li class="items"><a href="../html/login.html">Đăng Nhâp</a></li>

                <div class="close--menu__mobile">
                    <label for="nav--list__check">Đóng</label>
                </div>
            </ul>

        </div>
    </header>
    <!-- end header -->
    <div class="container text-center mt-5">
        <h1>Kiểm tra đơn hàng của bạn</h1>
        <form class="mt-3">
            <div class="form-group">
                <input type="text" class="form--control" id="orderID" placeholder="Vui lòng nhập mã đơn hàng *">
            </div>

            <button type="button" class="btn btn-success btn-lg m-3 ">Tra cứu</button>
        </form>
    </div>
    .

    <div class="login-banner mt-5">
        <div class="container  d-flex justify-content-between align-items-center">
            <p class="mb-0 text">Đăng nhập sẽ giúp bạn quản lý đơn hàng của mình và trải nghiệm website tốt hơn</p>
            <button class="btn btn-light btn-lg ">Đăng nhập</button>
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
                        <li class="item"><a href="./tracuu.html">Tra cứu đơn hàng</a></li>
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
                        <li class="item"><a href="./tracuu.html">Tra cứu bảo hành</a></li>
                    </ul>
                </div>
                <!-- end col -->
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
                <!-- end col -->
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
                <!-- end col -->
            </div>
        </div>
    </footer>
    <!-- end footer -->


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