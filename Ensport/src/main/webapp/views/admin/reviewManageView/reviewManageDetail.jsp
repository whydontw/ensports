<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<c:set var="rd" value="${reviewDetail}"/>
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
	<title>리뷰 페이지</title>
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="${contextPath}/resources/css/linearicons.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/themify-icons.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/nice-select.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/nouislider.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="${contextPath}/resources/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
</head>

<body>


	<!--================Product Description Area =================-->
	<section class="product_description_area vertical-center">
		<div class="container center">
			
			
				
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="review_box">
								<h4>내 리뷰</h4>
								<p>My Score: 
								</p>
								<ul class="list">
									<c:if test="${rd.score >= 1}">
										<li><a href="#"><i class="fa fa-star"></i></a></li>
									</c:if>
									<c:if test="${rd.score >= 2}">
										<li><a href="#"><i class="fa fa-star"></i></a></li>
									</c:if>
									<c:if test="${rd.score >= 3}">
										<li><a href="#"><i class="fa fa-star"></i></a></li>
									</c:if>
									<c:if test="${rd.score >= 4}">
										<li><a href="#"><i class="fa fa-star"></i></a></li>
									</c:if>
									<c:if test="${rd.score >= 5}">
										<li><a href="#"><i class="fa fa-star"></i></a></li>
									</c:if>
								</ul>
								<p>작성일자: ${rd.createDate}</p>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="myReviewContent" id="myReviewContent" disabled>${rd.reviewContent}</textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="primary-btn">리뷰수정</button>
									</div>
								</form>
							</div>
							
							
							<!-- 리뷰 수정하기 -->
							<div class="review_box">
								<h4>내 리뷰</h4>
								<div class="d-flex">
									<p>My Score:</p>
									<div class="default-select" id="default-select"">
										<select name="score">
											<option value="5">English</option>
											<option value="4">Spanish</option>
											<option value="3">Arabic</option>
											<option value="2">Portuguise</option>
											<option value="1">Bengali</option>
										</select>
									</div>
								</div>
								<p>작성일자: ${rd.createDate}</p>
								<form class="row contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
									<input type="hidden" name="re" value="${rd.reviewNo }">
									<div class="col-md-12">
										<div class="form-group">
											<textarea class="form-control" name="myReviewContent" id="myReviewContent">${rd.reviewContent}</textarea>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="primary-btn">수정완료</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>
	

	<script src="${contextPath}/resources/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="${contextPath}/resources/js/vendor/bootstrap.min.js"></script>
	<script src="${contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
	<script src="${contextPath}/resources/js/jquery.nice-select.min.js"></script>
	<script src="${contextPath}/resources/js/jquery.sticky.js"></script>
	<script src="${contextPath}/resources/js/nouislider.min.js"></script>
	<script src="${contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="${contextPath}/resources/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="${contextPath}/resources/js/gmaps.min.js"></script>
	<script src="${contextPath}/resources/js/main.js"></script>

</body>

</html>