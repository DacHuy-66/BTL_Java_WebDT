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
    <link rel="stylesheet" href="../css/introduce.css">
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
                <li class="items"><a href="../index.html">Tranng Chủ</a></li>
                <li class="items"><a href="../html/introduce.html">Giới thiệu</a></li>
                <li class="items"><a href="#0">Sản phẩm đã xem</a></li>
                <li class="items"><a href="#0">Trung tâm bảo hành</a></li>
                <li class="items"><a href="#0">Hệ thông 128 siêu thị</a></li>
                <li class="items"><a href="./recruitment.html">Tuyển dụng</a></li>
                <li class="items"><a href="./tracuu.html">Tra cứu</a></li>
                <li class="items"><a href="../html/login.html">Đăng Nhâp</a></li>

                <div class="close--menu__mobile">
                    <label for="nav--list__check">Đóng</label>
                </div>
            </ul>

        </div>
    </header>
    <div class="container mt-5 mb-5">
        <h1 class="text-center ">Giới Thiệu MYPHONE</h1>
        <div class="mt-4">
            <h2>Giới thiệu chung</h2>
            <p class="fs-6">Công ty Cổ phần Xây dựng và Đầu tư thương mại MYPHONE sở hữu chuỗi cửa hàng MYPHONE - là nhà
                bán lẻ hàng
                đầu, chuyên cung cấp các sản phẩm công nghệ chính hãng tại thị trường Việt Nam. Năm 1996, CEO của
                MYPHONE bắt đầu làm quen với việc kinh doanh đồ điện tử, sau này, MYPHONE được thành lập, từng bước trở
                thành địa chỉ đáng tin cậy của người tiêu dùng Việt. Với khẩu hiệu “Nếu những gì chúng tôi không có,
                nghĩa là bạn không cần”, chúng tôi đã, đang và sẽ tiếp tục nỗ lực đem đến các sản phẩm công nghệ chính
                hãng đa dạng, phong phú đi kèm mức giá tốt phục vụ nhu cầu của quý khách hàng.</p>

            <p>Sau hơn 20 năm tích lũy kinh nghiệm, CEO đã dẫn dắt đưa MYPHONE trở thành cái tên không còn xa lạ với
                người tiêu dùng trong nước. Hiện nay chúng tôi đang sở hữu mạng lưới hơn 120 chi nhánh phủ trên khắp cả
                nước, trong đó bao gồm hai trung tâm bảo hành tại Hà Nội và một trung tâm bảo hành tại thành phố Hồ Chí
                Minh. Đến với chuỗi cửa hàng của MYPHONE, quý khách có thể hoàn toàn yên tâm về uy tín, chất lượng sản
                phẩm với mức giá rẻ hơn khoảng 15-20% so với giá bán trên thị trường. Song song với đó, chúng tôi cũng
                luôn nỗ lực phục vụ đem đến trải nghiệm dịch vụ tốt nhất cho khách hàng.</p>

            <h2>Những dấu mốc quan trọng</h2>
            <ul>
                <li>Năm 2006: Cửa hàng phát triển mạnh mẽ và có thêm nhiều chi nhánh mới.</li>
                <li>Năm 2016: MYPHONE đã khẳng định được chỗ đứng vững chắc trên thị trường cũng như trong tiềm thức
                    người tiêu dùng.</li>
                <li>Năm 2019: MYPHONE chính thức hợp tác với ông lớn ngành viễn thông MobiFone Việt Nam mở chuỗi chi
                    nhánh bán hàng liên kết, nâng tổng số chi nhánh tới hơn 60, đồng thời phủ khắp 30 tỉnh thành trên cả
                    nước. Kể từ đó, MYPHONE liên tục đồng hành cùng MobiFone tổ chức các sự kiện lớn nhỏ.</li>
                <li>Năm 2020: MYPHONE tự hào trở thành nhà bán lẻ ủy quyền chính thức của Apple tại Việt Nam. Các sản
                    phẩm Apple chính hãng VN/A do Apple Việt Nam phân phối được bán tại hệ thống MYPHONE với mức giá tốt
                    hàng đầu thị trường cùng chế độ bảo hành uy tín.</li>
            </ul>

            <h2>Tôn chỉ hoạt động</h2>
            <p>MYPHONE luôn hoạt động dựa trên tôn chỉ đặt khách hàng là trung tâm, mọi nỗ lực để đạt được mục tiêu cao
                nhất là làm hài lòng người dùng thông qua các sản phẩm được cung cấp và dịch vụ khách hàng. MYPHONE đang
                từng bước xây dựng dịch vụ khách hàng vượt trội, xứng đáng là đơn vị bán lẻ hàng đầu tại Việt Nam. Sự
                tin tưởng và ủng hộ nhiệt tình của quý khách hàng tại chuỗi chi nhánh đã phần nào khẳng định hiệu quả
                hoạt động của đội ngũ nhân viên MYPHONE.</p>

            <p>Đối với quý khách hàng, chúng tôi luôn đặt cái tâm làm gốc, làm việc với tinh thần nghiêm túc, trung thực
                và có trách nhiệm, để mang tới trải nghiệm dịch vụ tốt nhất.</p>

            <p>Đối với đồng nghiệp, chúng tôi đề cao văn hóa học hỏi, đoàn kết, tương trợ lẫn nhau tạo nên môi trường
                làm việc tôn trọng - công bằng - văn minh cho nhân viên trong công ty.</p>

            <p>Đối với các đối tác, MYPHONE luôn làm việc dựa trên nguyên tắc tôn trọng, cùng tạo ra giá trị cho cộng
                đồng và cùng phát triển bền vững.</p>

            <h2>Tầm nhìn và sứ mệnh</h2>
            <p>Những năm qua, chúng tôi không ngừng cải thiện dịch vụ tại các chi nhánh và hỗ trợ khách hàng qua các
                kênh online. MYPHONE cam kết mang đến những sản phẩm chất lượng và chế độ bảo hành uy tín, sẵn sàng hỗ
                trợ khách hàng trong thời gian nhanh nhất.</p>

            <p>Trong tương lai, MYPHONE sẽ tiếp tục mở rộng hệ thống chi nhánh, hướng tới mục tiêu có mặt tại 63 tỉnh
                thành trên toàn quốc. Đồng thời, nâng cao chất lượng dịch vụ, hạn chế những rủi ro, lắng nghe và tiếp
                thu góp ý của quý khách hàng nhằm đem đến trải nghiệm tốt nhất khi mua sắm tại MYPHONE.</p>

            <p>Cuối cùng, MYPHONE hy vọng sẽ trở thành nhà tiên phong đưa những sản phẩm công nghệ mới nhất đến tay
                người dùng sớm nhất, tạo ra cuộc sống hiện đại nơi công nghệ kết nối con người, công nghệ phục vụ con
                người.</p>
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