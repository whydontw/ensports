<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

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
	<title>메인페이지</title>
</head>

<body>

	<%@ include file="../common/menubar.jsp" %>
	

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>내 정보 찾기</h1>
					<nav class="d-flex align-items-center">
						<a href="${contextPath}">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="${contextPath}/login.do">로그인<span class="lnr lnr-arrow-right"></span></a>
						<a href="${contextPath}/findInfo.do">아이디/비밀번호 찾기</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->




    <!--================Blog Categorie Area =================-->
    <section class="blog_categorie_area">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="categories_post">
                        <img src="${contextPath }/resources/img/blog/cat-post/cat-post-1.jpg" alt="post">
                        <div class="categories_details" onclick="location.href='${contextPath}/findId.do'">
                            <div class="categories_text">
                                <a href="blog-details.html">
                                    <h5>아이디 찾기</h5>
                                </a>
                                <div class="border_line"></div>
                                <p>Find your ID</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="categories_post">
                        <img src="${contextPath }/resources/img/blog/cat-post/cat-post-2.jpg" alt="post" >
                        <div class="categories_details" onclick="location.href='${contextPath}'">
                            <div class="categories_text">
                                <a href="blog-details.html">
                                    <h5>비밀번호 찾기</h5>
                                </a>
                                <div class="border_line"></div>
                                <p>Find your Password</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Categorie Area =================-->



	<%@ include file="../common/footer.jsp" %>
	
	
</body>

</html>