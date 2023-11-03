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
					<h1>로그인</h1>
					<nav class="d-flex align-items-center">
						<a href="${contextPath}">Home<span class="lnr lnr-arrow-right"></span></a>
						<a href="${contextPath}/login.me">로그인</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->


	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="${contextPath}/resources/img/login.jpg" alt="">
						
						<div class="hover">
							<h4>Let's Play!</h4>
							<p>Ensport에 가입하여 다양한 Player를 만나보세요!</p>
							<a class="primary-btn" href="${contextPath}/insertMemberTerms.me">회원가입</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log in to enter</h3>
						<form class="row login_form" action="${contextPath}/login.me" method="post" id="contactForm" novalidate="novalidate">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="loginId" name="loginId" placeholder="ID" onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="loginPassword" name="loginPassword" placeholder="Password" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">아이디 저장하기</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="submit" value="submit" class="primary-btn">Log In</button>
							</div>
							<div class="col-md-12 form-group">
								<span><a href="${contextPath }/findInfo.me">아이디 찾기 / 비밀번호 찾기</a></span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Login Box Area =================-->




	<script type="text/javascript">
	   $(function(){
		   	//쿠키 아이디값 가지고 오기
		   	var saveId = "<%= saveId %>";
		   	
		   	if(saveId != ""){
				$("input[name=userId]").val(saveId);
				$("input[name=selector]").attr("checked", true);
		   	}
	   });
	</script>

	<!-- start footer Area -->
	<%@ include file="../common/footer.jsp" %>
	<!-- End footer Area -->


</body>

</html>