	<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
        header {
            font-family : 'Noto Sans KR', sans-serif;
        }
	</style>
        <!-- Header Area Start -->
        <header class="header-area clearfix">
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="index"><img src="img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="index">홈</a></li>
                    <li><a href="shop?id=<c:out value='${customer.id}'/>">제품 보기</a></li>
                    <li><a href="mypage?id=<c:out value='${customer.id}'/>">마이 페이지</a></li>
                    <li><a href="orderList">주문 목록</a></li>
                    <li><a href="notice">고객센터</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="cart" class="cart-nav"><img src="img/core-img/cart.png" alt=""> 장바구니 <span>(0)</span></a>
                <a href="#" class="search-nav"><img src="img/core-img/search.png" alt=""> 검색</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
            
        </header>
        <!-- Header Area End -->
