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
                <a href="/?email=<c:out value='${modify.email}'/>"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="/?email=<c:out value='${modify.email}'/>">홈</a></li>
                    <li><a href="/product/productList?email=<c:out value='${modify.email}'/>">제품 보기</a></li>
                    <li><a href="/member/mypage?email=<c:out value='${modify.email}'/>">마이 페이지</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="/cart/cartList?email=<c:out value='${modify.email}'/>" class="cart-nav"><img src="/resources/img/core-img/cart.png" alt=""> 장바구니 <span>(0)</span></a>
                <a href="#" class="search-nav"><img src="/resources/img/core-img/search.png" alt=""> 검색</a>
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
            <div class="container-fluid" style="width:1200px">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">
                            <div class="modify-title">
                                <h2>Information Update</h2>
                            </div>
                            
                            <form action="modify" method="post">
                                <div class="row">                                    
                                    <input type="hidden" name="no" value='<c:out value="${modify.no}"/>' readonly="readonly">
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-md-2 mb-1">
                                                <input type="text" class="form-control" value="Email" style="text-align:center; width:123px" readonly="readonly">
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <input type="text" class="form-control" name="email" id="email" value='<c:out value="${modify.email}"/>'>
                                            </div>
                                        </div>
                                    </div><!-- end email -->
                                    
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-md-2 mb-1">
                                                <input type="text" class="form-control" value="Name" style="text-align:center; width:123px" readonly="readonly">
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <input type="text" class="form-control" name="name" id="name" value='<c:out value="${modify.name}"/>'>
                                            </div>
                                        </div>
                                    </div><!-- end name -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Password" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <!-- <input type="text" class="form-control" id="id" value='<c:out value="${id}"/>'> -->
                                        <input type="password" class="form-control" name="password" id="password" value='<c:out value="${modify.password}"/>'>
                                    </div>
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control pw" value="Confirm" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="password" class="form-control pw" id="password2" placeholder="새 비밀번호 확인">
                                    </div>
                                    <!-- end password -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Phone" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="phone" id="phone" value='<c:out value="${modify.phone}"/>'>
                                    </div><!-- end phone number -->

                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" name="zipcode" id="zipcode" style="text-align:center; width:123px" value='<c:out value="${modify.zipcode}"/>'>
                                    </div>
                                    <div class="col-md-4 mb-3">
										<input type="button" class="btn btn-outline-info" id="btnZipCode" onclick="DaumPostCode()" value="우편번호 찾기" style="padding:7%">
                                    </div><!-- end zipcode -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="Address" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-5 mb-3">
                                        <input type="text" class="form-control mb-3" name="address" id="address" value='<c:out value="${modify.address}"/>'>
                                    </div>
                                    <div class="col-md-5 mb-3">
										<input type="text" class="form-control mb-3" name="address2" value='<c:out value="${modify.address2}"/>'>
                                    </div><!-- end address -->
                                    
                                    <!-- 변경된 정보 저장 및 초기화 -->
                                    <div class="row" style="padding: 20px">
                                        <div class="col-md-5 col-md-offset-2">
                                            <input type="submit" class="btn btn-info">
                                        </div>
                                        <div class="col-md-5 col-md-offset-2">
                                            <button type="reset" class="btn btn-dark">취소</button>
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

	<!-- 우편번호 API -->
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
    <script>
    //우체번호 API
    function DaumPostCode(){
        new daum.Postcode({
            oncomplete: function(data) {
                var roadAddr = data.roadAddress;
                var address = data.address;
                
                document.getElementById("zipcode").value = data.zonecode;
                document.getElementById("address").value = roadAddr;
            }
        }).open();	
    }
    
    $(document).ready(function(){
    	//select option의 text값을 가져와서 직접 입력칸(id="email2")을 바꿈
        /*$("#domain").change(function(){
            if($(this).val() == ""){
                $("#email2").val("");
            } else {
                $("#email2").val($(this).val());
                $("#eamil2").attr("readonly", true);
            }   		    		
        });*/
        
        //비밀번호 수정 시 값이 같지 않을 때 경고창을 띄움
        $('.pw').focusout(function () {
            var pwd1 = $("#password").val();
            var pwd2 = $("#password2").val();

            if ( pwd1 != '' && pwd2 == '' ) {
                null;
            } else if (pwd1 != "" || pwd2 != "") {
                if (pwd1 == pwd2) {
                    
                } else {
                    alert("비밀번호가 일치하지 않습니다. 비밀번호를 재확인해주세요.");

                }
            }
        });
        
    });
	</script>

</body>

</html>