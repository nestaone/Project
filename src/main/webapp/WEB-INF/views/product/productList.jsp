<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<!DOCTYPE html>
<html>

<head>
    <!-- Favicon  -->
    <link rel="icon" href="/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/resources/css/core-style.css">
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="/resources/js/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    
    <style>
        #amount{
            text-align: center;
            height: 30px;
            width: 50px;
        }
        
        input[type=number]::-webkit-inner-spin-button, 
		input[type=number]::-webkit-outer-spin-button {  

            opacity: 1;
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
                        <form action="shop" method="get">
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
                <a href="/?email=<c:out value='${member.email}'/>"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="/?email=<c:out value='${member.email}'/>">홈</a></li>
                    <li><a href="/product/productList?email=<c:out value='${member.email}'/>">제품 보기</a></li>
                    <li><a href="/member/mypage?email=<c:out value='${member.email}'/>">마이페이지</a></li>
                    <li><a href="/notice">고객센터</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <form action="/cart/cartList" method="get">
                    <input type="hidden" name="email" value="${member.email}">
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
                <!-- Add Product -->
                <button type="button" class="btn btn-warning"
                    onclick="location.href='addproduct?email=<c:out value='${member.email}'/>'">제품 추가</button>
            </div>

            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

		
        <div class="shop_sidebar_area">

            <!-- ##### Single Widget ##### -->
            <div class="widget catagory mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Catagories</h6>

                <!--  Catagories  -->
                <div class="catagories-menu">
                    <form action="#" method="get">
                        <ul id="cate-menu">
                            <li value="COY"><a href="#">CPU</a></li>
                            <li value="메인보드"><a href="#">메인보드</a></li>
                            <li value="RAM"><a href="#">RAM</a></li>
                            <li value="그래픽카드"><a href="#">그래픽카드</a></li>
                            <li value="SSD"><a href="#">SSD</a></li>
                            <li value="HDD"><a href="#">HDD</a></li>
                            <li value="케이스"><a href="#">케이스</a></li>
                            <li value="파워"><a href="#">파워</a></li>
                            <li value="쿨러/튜닝"><a href="#">쿨러/튜닝</a></li>
                            <li value="키보드"><a href="#">키보드</a></li>
                            <li value="마우스"><a href="#">마우스</a></li>
                            <li value="ODD"><a href="#">ODD</a></li>
                            <li value="모니터"><a href="#">모니터</a></li>
                        </ul>
                    </form>
                </div>
            </div>

            <!-- ##### Single Widget ##### -->
            <div class="widget brands mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Brands</h6>

                <div class="widget-desc">
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="em-tech">
                        <label class="form-check-label" for="em-texh">이엠텍</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="msi">
                        <label class="form-check-label" for="msi">MSI</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="galaxy">
                        <label class="form-check-label" for="galaxy">갤럭시</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="gigabyte">
                        <label class="form-check-label" for="gigabyte">기가바이트</label>
                    </div>
                    <!-- Single Form Check -->
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" value="" id="zotac">
                        <label class="form-check-label" for="zotac">ZOTAC</label>
                    </div>
                </div>
            </div>

            <!-- ##### Single Widget ##### -->
            <div class="widget price mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Price</h6>

                <div class="widget-desc">
                    <div class="slider-range">
                        <div data-min="10000" data-max="3000000" data-unit="￦" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="10000" data-value-max="3000000" data-label-result="">
                            <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                            <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"></span>
                        </div>
                        <div class="range-price">￦10,000 - ￦3,000,000</div>
                    </div>
                </div>
            </div>
        </div>

        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <!-- Total Products -->
                            <div class="total-products">
                                <p>Showing 1-8 0f 25</p>
                                <p>현재 접속중인 이메일 계정은 ${member.email} 입니다.</p>
                                <div class="view d-flex">
                                    <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <div class="sort-by-date d-flex align-items-center mr-15">
                                    <p>Sort by</p>
                                    <form action="#" method="get">
                                        <select name="select" id="sortBydate">
                                            <option value="value">Date</option>
                                            <option value="value">Newest</option>
                                            <option value="value">Popular</option>
                                        </select>
                                    </form>
                                </div>
                                <div class="view-product d-flex align-items-center">
                                    <p>View</p>
                                    <form action="#" method="get">
                                        <select name="select" id="viewProduct">
                                            <option value="value">12</option>
                                            <option value="value">24</option>
                                            <option value="value">48</option>
                                            <option value="value">96</option>
                                        </select>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				
				<c:forEach var ="product"  items ="${product}">
				
                <div class="row product-area" data-category="${product.category}" style="width:700px">

                    <!-- Single Product Area -->
                    <div class="col-12 col col-md-12 col-xl-6">
                        <div class="single-product-wrapper">
                            <!-- Product Image -->
                            <div class="product-img">
                                <img src="/resources/img/computer/case.jpg" alt="">
                                <!-- Hover Thumb -->
                                <img class="hover-img" src="/resources/img/computer/case2.png" alt="">
                            </div>
							
							<form action="/cart/cartInsert" method="get">
                            <!-- Product Description -->
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price">${product.price} 만원</p>
                                </div>
                                <!-- Ratings & Cart -->
                                
                                <div class="ratings-cart text-right">
                                    <div class="cart">
                                        <input type="hidden" name="email" value="${member.email}">
                                        <input type="hidden" name="pno" value="${product.pno}">
                                        <input type="hidden" name="price" value="${product.price}">
                                        <input type="hidden" name="pname" value="${product.pname}">
                                        <input type="hidden" name="brand" value="${product.brand}">
                                        <input type="hidden" name="category" value="${product.category}">
                                        <input type="hidden" name="description" value="${product.description}">
                                        <input type="number" name="amount" min="1" max="5" value="1">
                                        &nbsp
                                        <input type="submit" value="장바구니에 담기" class="btn btn-warning">
                                    </div>
                                </div>
                            </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-xl-6" style="padding:25px 50px">
                        <a href="product-details">
                            <h2 style="text-align:center">
                                <strong>
                                    <c:out value="${product.pname}"/>
                                </strong>
                            </h2><br>
                        </a>
                        <p style="font-size:12px">
							<c:out value="${product.description}"/>
						</p>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <%@ include file="../includes/footer.jsp" %>

	<script>
	/*function fnCart(memberId, pno, pname, price, amount){
        if(confirm("장바구니에 담으시겠습니까?")){
            location.href="cartInsert.jsp?id=" + memberId + "&pno=" + pno + "&pname=" + pname 
                + "&price=" + price + "&amount=" + amount;
        }
    }
	$(document).ready(function(){
		var memberId = $("#memberId").val();
		var pno = $("#pno").val();
		var price = $("#price").val();
		var amount = $("#amount").val();
		var pname = $("#pname").val();
		
		
		$("a img").click(function(){
			fnCart(memberId, pno, pname, price, amount);
		});
	});*/

	$(document).ready(function(){
		listClick();
	});
	
	function productCategoryView(productCategory){
		let productArea = $(".product-area");
		
		productArea.each(function(index, item){
			console.log("index : " + index);
			let category = $(item).data('category');
			console.log($(item).data('category'));
			
			if(category !== productCategory){
				$(item).hide();
			}
			else $(item).show();
		});
	}
	
	function listClick(){
		let menu = $("#cate-menu li");
		menu.click(function(){
			//console.log("value : " + $(this).attr("value"));
			let category = $(this).attr("value");
			productCategoryView(category);
		});
	}	
</script>
</body>

</html>
    