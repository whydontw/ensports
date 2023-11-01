<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Karma Shop</title>

    <!-- CSS ============================================= -->
    <link rel="stylesheet" href="../../resources/css/linearicons.css">
    <link rel="stylesheet" href="../../resources/css/owl.carousel.css">
    <link rel="stylesheet" href="../../resources/css/themify-icons.css">
    <link rel="stylesheet" href="../../resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="../../resources/css/nice-select.css">
    <link rel="stylesheet" href="../../resources/css/nouislider.min.css">
    <link rel="stylesheet" href="../../resources/css/bootstrap.css">
    <link rel="stylesheet" href="../../resources/css/main.css">
</head>

<body>

    <!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
							<li class="nav-item submenu dropdown active">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.html">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="single-product.html">Product Details</a></li>
									<li class="nav-item active"><a class="nav-link" href="checkout.html">Product Checkout</a></li>
									<li class="nav-item"><a class="nav-link" href="cart.html">Shopping Cart</a></li>
									<li class="nav-item"><a class="nav-link" href="confirmation.html">Confirmation</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Blog</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">Blog</a></li>
									<li class="nav-item"><a class="nav-link" href="single-blog.html">Blog Details</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Pages</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking.html">Tracking</a></li>
									<li class="nav-item"><a class="nav-link" href="elements.html">Elements</a></li>
								</ul>
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="#" class="cart"><span class="ti-bag"></span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="Search Here">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header>
	<!-- End Header Area -->

    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>Checkout</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="single-product.html">회원가입</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->

    <!--================Checkout Area =================-->
    <section class="checkout_area section_gap">
        <div class="container">

            <div class="billing_details">
                <div class="row">
                    <div class="col-lg-8  mx-auto">
                        <h2>Member Entrance</h2>
                        <form class="row contact_form" action="/ensport/memberInsert.me" method="post" novalidate="novalidate" style="margin-top: 40px;">
                            
                            <!-- ID -->
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="userId" name="userId">
                                <span class="placeholder" data-placeholder="ID (6~10자리 영문 및 숫자 조합)"></span>
                            </div>
                            <!-- 중복확인 버튼 -->
                            <div class="button-group-area">
                                <a href="#" class="genric-btn primary mt-0">중복확인</a>
                            </div>


							<div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="userName" name="userName">
                                <span class="placeholder" data-placeholder="이름"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="userNickname" name="userNickname">
                                <span class="placeholder" data-placeholder="별명"></span>
                            </div>
                            
                            
							<!-- 비밀번호 -->
                            <div class="col-md-12 form-group p_star">
                                <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="비밀번호">
<!--                                 <span class="placeholder" data-placeholder="비밀번호 (6~15자리 영문 및 숫자 조합)"></span> -->
                            </div>
                            <div class="col-md-12 form-group">
                                <input type="password" class="form-control" id="userPasswordChk" name="userPasswordChk">
<!--                                 <span class="placeholder" data-placeholder="비밀번호 확인"></span> -->
                            </div>
                            
                            <!-- 전화번호 -->
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="phone" name="phone">
                                <span class="placeholder" data-placeholder="전화번호"></span>
                            </div>
                            <!-- 중복확인 버튼 -->
                            <div class="button-group-area">
                                <a href="#" class="genric-btn primary mt-0">중복확인</a>
                            </div>

                            <!-- 주소 -->
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="address" name="address" readonly>
                                <span class="placeholder" data-placeholder="주소"></span>
                            </div>
                            <!-- 주소 검색 버튼 -->
                            <!-- 중복확인 버튼 -->
                            <div class="button-group-area">
                                <a href="#" class="genric-btn primary mt-0">주소검색</a>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="addressDetail" name="addressDetail">
                                <span class="placeholder" data-placeholder="상세주소"></span>
                            </div>

                            
                            <!-- 이메일 -->
                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="email" name="email">
                                <span class="placeholder" data-placeholder="이메일 (example@example.kr)"></span>
                            </div>


                            <div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="email" name="email">
                                <span class="placeholder" data-placeholder="이메일 (example@example.kr)"></span>
                            </div>


							<!-- 선호하는 종목 -->
                            <div class="col-xl-12 form-group d-flex">
                            	<div class="col-md-6 single-element-widget mt-50">
									<h3 class="mb-30 p_star">성별</h3>
									<div class="switch-wrap d-flex justify-content-between">
										<p>남성</p>
										<div class="primary-radio">
											<input type="checkbox" id="gender_m" name="gender">
											<label for="gender_m"></label>
										</div>
									</div>
									<div class="switch-wrap d-flex justify-content-between">
										<p>여성</p>
										<div class="primary-radio">
											<input type="checkbox" id="gender_f" name="gender">
											<label for="gender_f"></label>
										</div>
									</div>
								</div>
								
                                <div class="col-md-6 single-element-widget">
                                    <h3 class="mb-30">선호하는 종목(선택)</h3>
                                    <div class="switch-wrap d-flex justify-content-between">
                                        <p>축구</p>
                                        <div class="primary-checkbox">
                                            <input type="checkbox" id="default-checkbox">
                                            <label for="default-checkbox"></label>
                                        </div>
                                    </div>
                                    <div class="switch-wrap d-flex justify-content-between">
                                        <p>야구</p>
                                        <div class="primary-checkbox">
                                            <input type="checkbox" id="primary-checkbox" checked>
                                            <label for="primary-checkbox"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-12 form-group p_star">
                                <div class="row contact_form">
                                    <div class="col-md-12 text-center mt-50">
                                        <button type="submit" value="" class="primary-btn" onclick="location.href=''">회원가입</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================End Checkout Area =================-->

    <!-- start footer Area -->
    <footer class="footer-area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>About Us</h6>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt
                            ut labore dolore
                            magna aliqua.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4  col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>Newsletter</h6>
                        <p>Stay update with our latest</p>
                        <div class="" id="mc_embed_signup">

                            <form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                                method="get" class="form-inline">

                                <div class="d-flex flex-row">

                                    <input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''"
                                        onblur="this.placeholder = 'Enter Email '" required="" type="email">


                                    <button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right"
                                            aria-hidden="true"></i></button>
                                    <div style="position: absolute; left: -5000px;">
                                        <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value=""
                                            type="text">
                                    </div>

                                    <!-- <div class="col-lg-4 col-md-4">
													<button class="bb-btn btn"><span class="lnr lnr-arrow-right"></span></button>
												</div>  -->
                                </div>
                                <div class="info"></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3  col-md-6 col-sm-6">
                    <div class="single-footer-widget mail-chimp">
                        <h6 class="mb-20">Instragram Feed</h6>
                        <ul class="instafeed d-flex flex-wrap">
                            <li><img src="img/i1.jpg" alt=""></li>
                            <li><img src="img/i2.jpg" alt=""></li>
                            <li><img src="img/i3.jpg" alt=""></li>
                            <li><img src="img/i4.jpg" alt=""></li>
                            <li><img src="img/i5.jpg" alt=""></li>
                            <li><img src="img/i6.jpg" alt=""></li>
                            <li><img src="img/i7.jpg" alt=""></li>
                            <li><img src="img/i8.jpg" alt=""></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget">
                        <h6>Follow Us</h6>
                        <p>Let us be social</p>
                        <div class="footer-social d-flex align-items-center">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-behance"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom d-flex justify-content-center align-items-center flex-wrap">
                <p class="footer-text m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
</p>
            </div>
        </div>
    </footer>
    <!-- End footer Area -->


    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
        crossorigin="anonymous"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/nouislider.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <!--gmaps Js-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
    <script src="js/gmaps.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>