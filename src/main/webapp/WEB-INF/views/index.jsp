<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Cart</title>

    <!-- Favicon  -->
    <link rel="icon" href="/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/css/core-style.css">
    <link rel="stylesheet" href="/resources/style.css">

</head>

<body>
    <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="/resources/img/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="index"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>

        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="/?email=<c:out value='${email}'/>"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="/?email=<c:out value='${email}'/>">홈</a></li>
                    <li><a href="/product/productList?email=<c:out value='${email}'/>">제품 보기</a></li>
                    <li><a href="/member/mypage?email=<c:out value='${email}'/>">마이페이지</a></li>
                    <li><a href="/notice">고객센터</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="/cart/cartList" class="cart-nav"><img src="/resources/img/core-img/cart.png" alt=""> 장바구니 <span>(0)</span></a>
                <a href="#" class="search-nav"><img src="/resources/img/core-img/search.png" alt=""> 검색</a>
                
                <!-- Login -->
                <a href="/member/register"><button type="button" class="btn btn-info">로그인</button></a>
                
                <!-- Add Product -->
                <button type="button" class="btn btn-warning"
                    onclick="location.href='/product/addproduct?email=<c:out value='${email}'/>'">제품 추가</button>
            </div>
            

            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

        <!-- Product Catagories Area Start -->
        <div class="products-catagories-area clearfix">
            <div class="amado-pro-catagory clearfix">

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/case.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>PC Case</h4>
                        </div>
                    </a>
                </div>

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/graphic.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>Graphic Card</h4>
                        </div>
                    </a>
                </div>

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/keyboard.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4 style="color:white;">Keyboard</h4>
                        </div>
                    </a>
                </div>

				<!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/ram.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4 style="color:white;">Ram</h4>
                        </div>
                    </a>
                </div>
				
				<!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/hdd.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>HDD</h4>
                        </div>
                    </a>
                </div>
                
                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/monitor.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>Monitor</h4>
                        </div>
                    </a>
                </div>

				<!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/mainboard.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4 style="color:white;">Mainboard</h4>
                        </div>
                    </a>
                </div>

                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/ssd.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>SSD</h4>
                        </div>
                    </a>
                </div>
                
                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/power.jpg" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>Power</h4>
                        </div>
                    </a>
                </div>
                
                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="shop">
                        <img src="/resources/img/computer/mouse.png" alt="">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <h4>Mouse</h4>
                        </div>
                    </a>
                </div>
                                
            </div>
        </div>
        <!-- Product Catagories Area End -->
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

	<%@ include file="includes/footer.jsp" %>

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>

</body>

</html>