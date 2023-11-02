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
						<a href="${contextPath}/login.me">로그인<span class="lnr lnr-arrow-right"></span></a>
						<a href="${contextPath}/findInfo.me">아이디/비밀번호 찾기</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->


   <!--================Contact Area =================-->
	<section class="contact_area section_gap_bottom">
		<div class="container">
			
			<div class="row mt-50">
				<div class="col-xl-12">
					<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
						<div class="col-md-6 mx-auto">
							<div class="form-group">
								<input type="text" class="form-control" id="userId" name="userId" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'">
							</div>
							<div class="form-group">
								<input type="text" class="form-control" id="userName" name=""userName"" placeholder="Enter Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'">
							</div>
							<div class="form-group">
								<input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'">
							</div>
						</div>
						<div class="col-md-12 text-center">
							<button type="submit" value="submit" class="primary-btn">ID 찾기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


	<script type="text/javascript">
		
		
	</script>


	<!-- start footer Area -->
	<%@ include file="../common/footer.jsp" %>
	<!-- End footer Area -->


</body>

</html>