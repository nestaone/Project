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

    <style>
        th{
            text-align: center;
        }
        
        td{
            text-align: center;
        }
        .qty-text{
            text-align: center;
        }
        #btnDelete{
            width: 70px;
            border: 5px;
        }
        #totalArea{
            font-size: 30px;
            font-weight: bold;
        }
        #s-table{
            font-weight: bold;
        }
        #payment{
            width: 74px;
        }
        #total_price{
            width: 50px;
            text-align: center;
            border: none;
        }
    </style>
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
                    <form action="/product/productList" method="get">
                        <input type="hidden" name="email" value="${email}">
                        <input type="hidden" name="total" value="${total}">
                        <c:forEach var="row" items="${cart}">
                            <input type="hidden" name="cno" value="${row.cno}">
                            <input type="hidden" name="pno" value="${row.pno}">
                            <input type="hidden" name="amount" value="${row.amount}">
                            <input type="hidden" name="price" value="${row.price}">
                        </c:forEach>
                        <li><input type="submit" class="cart-nav" value="제품 보기" style="border:none; background-color:white;"></li>
                    </form>
                    <li><a href="/member/mypage?email=<c:out value='${email}'/>">마이페이지</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <form action="cartList" method="get">
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
                        <div class="cart-title mt-50">
                            <h2>장바구니</h2>
							현재 접속중인 이메일 계정은 ${email} 입니다.
                        </div>
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>이미지</th>
                                        <th>상품명</th>
                                        <th>가격</th>
                                        <th>수량</th>
                                        <th>합계</th>
                                    </tr>
                                </thead>
                                <tbody class="cartList">
                                    
                                        <c:forEach var="row" items="${cart}">
                                            <tr>
                                                <td class="cart_product_img">
                                                    <a href="cart"><img src="/resources/img/computer/monitor.jpg" alt="Product"></a>
                                                </td>
                                                <td class="cart_product_desc">
                                                    <h5>${row.pname}</h5>
                                                </td>
												<td class="total_price">
													<input type="hidden" id="unit_price" value="${row.price}">     
													<input type="text" id="total_price" value="${row.price*row.amount}"> <span> 만원</span>
												</td>
                                                <td class="qty">
                                                    <div class="qty-btn d-flex">
                                                        <div class="quantity">
                                                            <span id="minus" class="qty-minus">
                                                                <i class="fa fa-minus" aria-hidden="true"></i>
                                                            </span>&nbsp
                                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="amount" value="${row.amount}"><br><br>
                                                            <span id="plus" class="qty-plus">
                                                                <i class="fa fa-plus" aria-hidden="true"></i>
                                                            </span>
                                                            <form action="cartDelete" method="get">
                                                                <input type="hidden" name="email" value="${row.email}">
                                                                <input type="hidden" name="cno" value="${row.cno}">
                                                                <button type="submit" id="btnDelete" class="btn btn-danger">삭제</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    
                                <!-- 장바구니 상품 목록 끝 -->
                                
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-8 col-lg-4">
                        <div class="cart-summary">
                            <p id="totalArea">장바구니 합계</p>
                            <ul class="summary-table" id="s-table">
                                
                                <li><span>결제 금액 :</span> <span id="productTotal">${total} 만원</span></li>
                            </ul>
                            
                                <div class="col-4">
                                    <form action="cartDeleteAll" method="get">
                                        <input type="hidden" name="email" value="${email}">
                                        <span><button type="button" class="btn btn-warning" id="payment">결제</button></span>
                                        <span>
                                            <button type="submit" id="cartDeleteAll" class="btn btn-danger">비우기</button>
                                        </span>
                                    </form>
                                </div>
                            
                        </div>
                    </div>
                
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->
	
	<script>
        $(document).ready(function(){

			var minusClick = $("td #minus");
			var commonInput = $("td #qty"); //수량
			var plusClick = $("td #plus");
			var commonTotal = $("td #total_price"); 
			var commonUnit = $("td #unit_price");
			var minusEffect = [];
			var minusTotal = [];
			var plusTotal = [];
			var plusEffect = [];
			
			$.each(minusClick, function(i, j){
				$(this).on("click", function(){
					//console.log("i : ", i);
					minusEffect[i] = $(commonInput[i]).val();
					//console.log("여기 찍히는 값은 : ", minusEffect[i]);
					minusEffect[i] = minusEffect[i] - 1;
					$(commonInput[i]).val(minusEffect[i]);
				});	
			});
			var totalEffectResult = [];
			$.each(plusClick, function(i, j){
				$(this).on("click", function(){
					plusEffect[i] = $(commonInput[i]).val();
					plusEffect[i] = parseInt(plusEffect[i]) + 1;
					$(commonInput[i]).val(plusEffect[i]);
					// console.log('수량 ', $(commonInput[i]).val());
					// console.log(' 배열인가?  ', $(commonTotal[0]).val() );
					// console.log('단가  ', $(commonUnit[i]).val());
					totalEffectResult[i]=$(commonUnit[i]).val() * $(commonInput[i]).val();
					// console.log('총액  ', totalEffectResult[i] );
					$(commonTotal[i]).val(totalEffectResult[i]);
				});	
			});
			qtyChange();
        });
        
        function qtyChange(){
            $("#qty").change(function(){
                let qty = $(this).val();
                let totalArea = $("#productTotal");
                totalArea.empty();
                totalArea.append("값 확인");
            });
        }
    </script>

    <%@ include file="../includes/footer.jsp" %>

    

</body>

</html>