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
    <link rel="stylesheet" href="/resources/style.css">


    <!-- Popper js -->
    <script src="/resources/js/popper.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    
    <script>
        var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
        var maxSize = 104857560; //10MB
        
        function checkExtension(fileName, fileSize){
            //파일 크기 경고창
            if(fileSize >= maxSize){
                alert("파일 크기 제한을 초과하였습니다.");
                return false;
            }
            
            //파일 타입 경고창
            if(regex.test(fileName)){
                alert("해당 종류의 파일은 업로드할 수 없습니다.");
                return false;
            }
            return true;
        }
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {//reader가 로드되면 함수 실행
                    $('#foo').attr('src', e.target.result);
                    console.log(e);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
        $(document).ready(function(){
            console.log("사랑");
            //제품 추가 버튼을 클릭할 때 이미지 관련 경고
            $("#addProd").on("click", function(e){
                var length = $("#prod_img")[0].files.length;
                console.log("prod_img : ", length);
                if(length==0){
                    alert("등록된 이미지가 없습니다.");
                } else{
                    $("#addProd").attr({type : "submit"});
                }
            });
            
            // 이미지 미리보기
            $("#prod_img").change(function() {
                readURL(this);
            });
            
        })
        
		
    </script>

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
                <a href="/?email=<c:out value='${member.email}'/>"><img src="/resources/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="/?email=<c:out value='${member.email}'/>">홈</a></li>
                    <li><a href="/product/productList?email=<c:out value='${member.email}'/>">제품 보기</a></li>
                    <li><a href="/member/mypage?email=<c:out value='${member.email}'/>">마이페이지</a></li>
                </ul>
            </nav>

            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="/cart/cartList?email=<c:out value='${member.email}'/>" class="cart-nav"><img src="/resources/img/core-img/cart.png" alt=""> 장바구니<span>(0)</span></a>
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
                                <h2><strong>Add Product</strong></h2>
								현재 접속중인 이메일 계정은 ${member.email} 입니다.
                            </div>
                            
                            <form action="addproduct" method="post" enctype="multipart/form-data">
                                <div class="row">                                    
                                    <input type="hidden" name="pno">
                                    <input type="hidden" name="email" value="${member.email}">								
                                    <div class="col-12">
                                        <div class="row">
                                            <div class="col-md-2 mb-1">
                                                <input type="text" class="form-control" value="제품명" style="text-align:center; width:123px" readonly="readonly">
                                            </div>
                                            <div class="col-md-10 mb-3">
                                                <input type="text" class="form-control" name="pname" id="pname">
                                            </div>
                                        </div>
                                    </div><!-- end name -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="브랜드" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="brand" id="brand">
                                    </div>
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control pw" value="카테고리" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control pw" name="category" id="category">
                                    </div>
                                    <!-- end category -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="가격" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-3 mb-3">
                                        <input type="number" class="form-control" name="price" id="price">
                                    </div>
                                    <!-- end price -->
                                    
                                    <div class="col-md-2 mb-1">
                                        <input type="text" class="form-control" value="상세정보" style="text-align:center; width:123px" readonly="readonly">
                                    </div>
                                    <div class="col-md-4 mb-3">
                                        <input type="text" class="form-control" name="description" id="description">
									</div>
                                    
                                    
                                    <div class="row" style="padding: 20px">
                                        <div class="col-md-5 col-md-offset-2">
                                            <input type="submit" id="addProd" value="저장" class="btn btn-info">
                                        </div>
                                        <div class="col-md-5 col-md-offset-2">
                                            <button type="reset" class="btn btn-dark">취소</button>
                                        </div>
                                    </div>
                                    <div>
                                        <input type="file" name="fileName" multiple="multiple" id="prod_img">
                                        <img id="foo" src="#" />
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