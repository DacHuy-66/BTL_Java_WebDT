<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header>
    <h2 class="header--title slide animate__animated animate__fadeInDown">[Khuyến mại] Thu cũ giá cao toàn bộ sản phẩm - Trợ giá tốt nhất</h2>
    <div class="nav--infomation ">
        <ul class="nav--infomation__top">
            <li class="items"><a href="./Home">Trang chủ</a></li>
            <li class="items"><a href="html/introduce.jsp">Giới thiệu</a></li>
            <li class="items"><a href="html/guaranteed.jsp">Trung tâm bảo hành</a></li>
            <li class="items"><a href="">Hệ thống 128 siêu thị</a></li>
            <li class="items"><a href="html/recruitment.jsp">Tuyển dụng</a></li>
            <li class="items"><a href="html/news.jsp">Tin tức</a></li>
            <li class="items"><a href="html/tracuu.jsp">Tra cứu</a></li>

            <c:if test="${sessionScope.acc != null}">
                <li class="items dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Hello ${sessionScope.acc.hoten}</a>
                    <div class="dropdown-content">
                        <a href="./ProfileServlet">Profile</a>
                        <a href="logout">Logout</a>
                    </div>
                </li>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
                <li class="items"><a href="./Login">Đăng Nhập</a></li>
            </c:if>
        </ul>
    </div>

    <nav class="menu--desktop">
        <div class="logo">
            <a href="./Home"> <img src="./img/home/logo.png" alt="logo"></a>
        </div>

        <form action="search" method="get" class="menu--search">
            <input name="txt" type="text" placeholder="Search...">
            <button type="submit" class="btn btn-secondary btn-number">
                <i class="fa fa-search"></i>
            </button>
        </form>

        <a class="menu--check__product" href="./DonHang" style="text-decoration: none; color: black;">
            <i class="fa-solid fa-car"></i> Kiểm tra đơn hàng
        </a>
        <div class="menu--cart">
            <a href="./Cart" style="text-decoration: none;">
                <i class="fa-solid fa-cart-shopping"></i>
                <span>${cartItems.size()}</span>
            </a>
        </div>
        <label for="nav--list__check">
            <i class="fa-solid fa-bars"></i>
        </label>
    </nav>

    <!-- Menu lựa chọn các sản phẩm -->
    <nav class="menu--bottom">
        <ul class="menu--choose">
            <c:forEach items="${listN}" var="ncc">
                <li class="item">
                    <a href="Thuonghieu?ncc_id=${ncc.ncc_id}">
                        <div class="img">${ncc.ten_ncc}</div>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </nav>

    <!-- Mobile -->
    <div class="nav--mobile">
        <input type="checkbox" id="nav--list__check" hidden>
        <label for="nav--list__check" class="bg--cover__mobile"></label>

        <ul class="nav--infomation__mobile">
            <li class="tool">
                <a href="#0" class="menu--check__product" title="Kiểm tra đơn hàng">
                    <i class="fa-solid fa-car"></i>
                </a>
                <a href="./html/cart.jsp" class="menu--cart" title="Giỏ hàng">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <span></span>
                </a>
            </li>
            <li class="items"><a href="#0">Bản mobile</a></li>
            <li class="items"><a href="#0">Giới thiệu</a></li>
            <li class="items"><a href="#0">Sản phẩm đã xem</a></li>
            <li class="items"><a href="./html/guarantee.html">Trung tâm bảo hành</a></li>
            <li class="items"><a href="#0">Hệ thống 128 siêu thị</a></li>
            <li class="items"><a href="#0">Tuyển dụng</a></li>
            <li class="items"><a href="#0">Tra cứu</a></li>
            <li class="items"><a href="./html/login.html">Đăng Nhập</a></li>

            <div class="close--menu__mobile">
                <label for="nav--list__check">Đóng</label>
            </div>
        </ul>
    </div>
</header>

<!-- Add CSS for Dropdown -->
<style>
    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {background-color: #f1f1f1}

    .dropdown:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover .dropbtn {
        background-color: #3e8e41;
    }
</style>
