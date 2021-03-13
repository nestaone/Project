<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>

<head>
    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/css/core-style.css">
    <link rel="stylesheet" href="/resources/style.css">

	<!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

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
                <a href="/?email=<c:out value='${mypage.email}'/>"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="/?email=<c:out value='${mypage.email}'/>">홈</a></li>
                    <li><a href="/product/productList?email=<c:out value='${mypage.email}'/>">제품 보기</a></li>
                    <li><a href="/member/mypage?email=<c:out value='${mypage.email}'/>">마이 페이지</a></li>
                    <li><a href="/notice">고객센터</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <form action="/cart/cartList" method="get">
                    <input type="hidden" name="email" value="${email}">
                    <input type="hidden" name="total" value="${total}">
                    <c:forEach var="row" items="${cart}">
                        <input type="hidden" name="pno" value="${row.pno}">
                        <input type="hidden" name="pname" value="${row.pname}">
                        <input type="hidden" name="price" value="${row.price}">
                        <input type="hidden" name="amount" value="${row.amount}">
                        <input type="hidden" name="cno" value="${row.cno}">
                    </c:forEach>
                    <img src="/resources/img/core-img/cart.png" alt=""> <input type="submit" class="cart-nav" value="&nbsp;장바구니" style="border:none; background-color:white;"><span>&nbsp;(0)</span></a>
                    <a href="#" class="search-nav"><img src="/resources/img/core-img/search.png" alt=""> 검색</a>
                </form>
            </div>

            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

		
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="mypage-title">
                                <h2>My Page</h2>
                            </div>

                            <form action="#" method="post">
                                <div class="row">
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="ID" readonly="readonly" style="text-align:center; width:123px">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="email" id="email" value='<c:out value="${mypage.email}"/>' readonly="readonly">
                                    </div>
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Name" readonly="readonly" style="text-align:center; width:123px">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="name" id="name" value='<c:out value="${mypage.name}"/>' readonly="readonly">
                                    </div>
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Phone" readonly="readonly" style="text-align:center; width:123px">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="phone" id="phone" value='<c:out value="${mypage.phone}"/>' readonly="readonly">
                                    </div>
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="ZipCode" readonly="readonly" style="text-align:center; width:123px">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="zipcode" id="zipcode" value='<c:out value="${mypage.zipcode}"/>' readonly="readonly">
                                    </div>
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Address" readonly="readonly" style="text-align:center; width:123px">
                                    </div>
                                    <div class="col-md-10 mb-3">
                                        <input type="text" class="form-control mb-3" name="address" id="address" value='<c:out value="${mypage.address} ${mypage.address2}"/>' readonly="readonly">
                                    </div>
                                    
                                    <div class="row" style="padding: 20px">
                                        <div class="col-md-5 col-md-offset-2">
                                            <a href="modify?email=${mypage.email}" class="btn btn-info">수정</a>
                                        </div>
                                        <div class="col-md-5 col-md-offset-2">
                                            <a href="remove?email=${mypage.email}" class="btn btn-dark">삭제</a>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <%@ include file="../includes/footer.jsp" %>

</body>

</html>
    