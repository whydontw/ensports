<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.ensport.member.model.vo.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<%
	
	//쿠키정보
	Cookie[] cookies = request.getCookies();		//반환타입: 배열
	
	//쿠키 배열에서 필요한 쿠키 정보를 추출하기
	//반복으로 돌려서 해당 쿠키의 이름을 찾고 그 쿠키의 값을 담아두기
	
	String saveId = "";
	if(cookies!=null){
		for(Cookie c : cookies){
			if((c.getName()).equals("userId")){
				saveId = c.getValue();
			}
		}
	}
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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
	<title>Ensport</title>
	<!-- CSS
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
	<link rel="stylesheet" href="${contextPath}/resources/css/magnific-popup.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/main.css">
	<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jodit/4.0.0-beta.98/jodit.min.css" />
	<script src="//cdnjs.cloudflare.com/ajax/libs/jodit/4.0.0-beta.98/jodit.min.js"></script>
</head>

<body>
    <header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="${contextPath }"><img src="${contextPath}/resources/img/logo(temp).jpg" />
</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto"> 
							<li class="nav-item active"><a class="nav-link" href="${contextPath}">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">경기매칭</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="${contextPath}/list.so">축구</a></li>
									<li class="nav-item"><a class="nav-link" href="#">야구</a></li>
									
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">경기장</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="#">축구</a></li>
									<li class="nav-item"><a class="nav-link" href="#">야구</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="boardList.bo">자유게시판</a></li>
									<li class="nav-item"><a class="nav-link" href="#">공지사항</a></li>
									
								</ul>
							</li>
							
							<c:choose>
								<c:when test="${loginUser == null }">
									<li class="nav-item submenu">
										<a href="${contextPath }/login.me" class="nav-link">로그인</a>
									</li>
								</c:when>
								<c:otherwise>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${loginUser.userNickname } 님 환영합니다!</a>
										<ul class="dropdown-menu">
											<c:if test="${loginUser.userNo == 1 }">
												<li class="nav-item"><a class="nav-link" href="#">관리자 페이지</a></li>
											</c:if>
											<c:if test="${loginUser.userNo != 1 }">
												<li class="nav-item"><a class="nav-link" href="${contextPath }/myPage.do">마이페이지</a></li>
											</c:if>
											<li class="nav-item"><a class="nav-link" href="${contextPath }/logout.me" onclick="return confirm('로그아웃 하시겠습니까?')">로그아웃</a></li>
										</ul>
									</li>
								</c:otherwise>
							</c:choose>
							

						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item"><a href="#" class="cart"><span class="ti-briefcase"></span></a></li>
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</header>
	
	
	
	<script>
		var msg = "${alertMsg}";
		console.log(msg);
		if (msg != null && msg != '') {
		    alert(msg);
		    <c:remove var="alertMsg" scope="session" />
		}
	</script>

</body>
</html>