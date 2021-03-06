<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Home</title>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="css/core-style.css">
    <link rel="stylesheet" href="style.css">
  
  	<style>
	@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
	</style>
	  
    <style type="text/css">
        * {
    		font-family : 'Noto Sans KR', sans-serif;
    	}
    	#navigation * {
    		font-size: 16px;
    	}
    	table *{
    		font-size: 16px;
    	}
    	.a {
    		display: none;
    	}
    	#sup{
    		padding-top: 80px;
    	}
    	#title{
    		margin-bottom: 50px;
    	}
    	#list{
    		text-align: center;	
    		margin-bottom: 50px;
    	}
    	#list li{
    		display: inline-block;
    		width: 170px;
    		height: 170px;
    		padding: 35px 20px 0;
    		margin: 0 10px;
    		border: 2px solid #F7F7F7;
    	}
  	  	#list li:hover {
		    background: #F7F7F7;
	  	}
    	dl{
    		margin: 0 auto;
    	}
    	dt{
    		margin: 10px;
    		font-size: 14px;
    	}
    	dd{
    		font-size: 12px;
			margin: 0 auto;
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
                            <button type="submit"><img src="img/core-img/search.png" alt=""></button>
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
                <a href="index"><img src="img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>
        
   		<%@ include file="../header.jsp" %>
		<div id="sup" class="flex-fill">
			<h3 id="title" class="text-center">고객센터</h3>
			
				<div id="list" class="container">
					<ul>
						<li id="notice">
							<i class="fa fa-bullhorn fa-2x"></i>
							<dl>
								<dt>Notice</dt>
								<dd>공지사항</dd>
							</dl>
						</li>
						<li id="faq">
							<i class="fa fa-comments-o fa-2x"></i>
							<dl>
								<dt>FAQ</dt>
								<dd>자주묻는질문</dd>
							</dl>
						</li>
						<li id="qna">
							<i class="fa fa-bell-o fa-2x"></i>
							<dl>
								<dt>Q & A</dt>
								<dd>1:1 문의하기</dd>
							</dl>
						</li>
					</ul>
				</div>
				
			<ul id="navigation" class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link" aria-current="page" href="/faq">입금/결제</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="/faq2">배송</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="/faq3">반품/교환</a>
			  </li>
			</ul>
			<br>
			
			<div class="row">
				<div class="col-md-3 type">[배송]</div>
				<div class="col-md-7 faqtap">
					<ul class="faq1">
						<li class="article">
						<p class="q">주문시 배송은 언제 되나요?</p>
						<p class="a">주문시 배송 내용입니다</p>
						</li>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3 type">[배송]</div>
				<div class="col-md-7 faqtap">
					<ul class="faq2">
						<li class="article">
						<p class="q">해외배송 안내</p>
						<p class="a">해외배송 내용입니다</p>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
		
	</div>

    <%@ include file="../includes/footer.jsp" %>
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="js/plugins.js"></script>
    <!-- Active js -->
    <script src="js/active.js"></script>
    
    <script>
    	$('#notice').css("cursor","pointer").click(function(){
    		$(location).attr("href","/notice");
    	});
    	$('#qna').css("cursor","pointer").click(function(){
    		$(location).attr("href","/qna");
    	});
    	$('#faq').css("cursor","pointer").click(function(){
    		$(location).attr("href","/faq");
    	});
    	$('.q').css("cursor","pointer").click(function(){
			$(this).next().slideToggle();
    	});
	</script>
</body>

</html>
    