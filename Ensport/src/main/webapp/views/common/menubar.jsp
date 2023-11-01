<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
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
	<title>메뉴바</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="../../resources/css/linearicons.css">
	<link rel="stylesheet" href="../../resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../resources/css/themify-icons.css">
	<link rel="stylesheet" href="../../resources/css/bootstrap.css">
	<link rel="stylesheet" href="../../resources/css/owl.carousel.css">
	<link rel="stylesheet" href="../../resources/css/nice-select.css">
	<link rel="stylesheet" href="../../resources/css/nouislider.min.css">
	<link rel="stylesheet" href="../../resources/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="../../resources/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="../../resources/css/magnific-popup.css">
	<link rel="stylesheet" href="../../resources/css/main.css">
    
</head>







<body> 
    <header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="<%=request.getContextPath()%>/"><img src="<%= request.getContextPath() %>/resources/img/logo(temp).jpg" />
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
							<li class="nav-item "><a class="nav-link" href="<%=request.getContextPath()%>/" id="home">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">경기매칭</a>
								<ul class="dropdown-menu">
								
									<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/list.so">축구</a></li>
									<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/list.ba">야구</a></li>
									
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">경기장</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/place.so">축구</a></li>
									<li class="nav-item"><a class="nav-link" href="<%= request.getContextPath() %>/place.ba">야구</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">커뮤니티</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="blog.html">자유게시판</a></li>
									<li class="nav-item"><a class="nav-link" href="tracking.html">공지사항</a></li>
									
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">로그인</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="login.html">로그인</a></li>

								</ul>
							</li>
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
		
	</header>
	
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 현재 URL을 가져옵니다.
        var currentURL = '<%= request.getRequestURI() %>';
        var menuItems = document.querySelectorAll('.nav-item');

        // 클릭 이벤트를 각 메뉴 항목에 연결합니다.
        menuItems.forEach(function(item) {
            var link = item.querySelector('.nav-link');
            var value = link.getAttribute('value');
            var id = link.getAttribute('id');

            // 클릭 이벤트 핸들러를 등록합니다.
            link.addEventListener('click', function() {
                // 모든 메뉴 항목의 "active" 클래스를 제거합니다.
                menuItems.forEach(function(item) {
                    item.classList.remove('active');
                });

                // 현재 클릭한 링크의 value 또는 id 값이 현재 URL과 일치하면 "active" 클래스를 추가합니다.
                if (value === currentURL || id === currentURL) {
                    item.classList.add('active');
                }
            });
        });
    });
</script>

</body>
</html>