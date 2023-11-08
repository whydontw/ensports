<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="col-lg-4">
		<div class="blog_right_sidebar">
			<aside class="single_sidebar_widget search_widget align-self-center">
				<img class="" src="resources/img/elements/soccer_icon1.png" alt="">
				<span class="mx-auto">
					<c:choose>
						<c:when test="${loginUser.userNo == 1}">
							<b>Lv 999. 관리자</b>
						</c:when>
						<c:otherwise>
							<c:choose>
								<c:when test="${loginUser.userNo == 2}">
									<b>Lv 50. 킬리안 음바페</b>
								</c:when>
								<c:otherwise>
									<b>Lv 1. 어린이축구교실</b>
								</c:otherwise>
							</c:choose>
						</c:otherwise>
					</c:choose>

				</span>
				<div class="br"></div>
			</aside>
			<aside class="single_sidebar_widget author_widget">
				<img class="author_img rounded-circle" src="${contextPath}/resources/img/blog/sonny.jpg" alt="">
				<h4>${loginUser.userNickname }</h4>
				<div class="social_icon">
					<p>${loginUser.email}</p>
					<!-- <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-github"></i></a>
                  <a href="#"><i class="fa fa-behance"></i></a> -->
				</div>
				<div class="br"></div>
			</aside>
			<aside class="single_sidebar_widget post_category_widget">
				<h4 class="widget_title">내가 쓴 글</h4>
				<ul class="list cat-list">
					<li>
						<a href="${contextPath }/myPageBoard.me?currentPage=1"	class="d-flex justify-content-between">
							<p>게시글</p>
							<p id="boardCount"></p>
						</a>
					</li>
					<li>
						<a href="${contextPath }/myPageReply.me?currentPage=1" class="d-flex justify-content-between">
							<p>댓글</p>
							<p id="replyCount"></p>
						</a>
					</li>
<%-- 				<li><a href="${contextPath }/myPageReview.me?currentPage=1" class="d-flex justify-content-between"> --%>
<!-- 						<p>리뷰</p> -->
<!-- 						<p>0</p> -->
<!-- 				</a></li> -->
					<li>
						<a href="${contextPath }/myPageQa.me?currentPage=1" class="d-flex justify-content-between">
							<p>문의사항</p>
							<p id="qaCount"></p>
						</a>
					</li>
				</ul>
				<div class="br"></div>
			</aside>

			<!-- 내 경기 정보 -->
			<aside class="single_sidebar_widget post_category_widget">
				<h4 class="widget_title">나의 예약</h4>
				<ul class="list cat-list">
					<li>
						<a href="${contextPath }/myPageReservation.me?currentPage=1" class="d-flex justify-content-between">
							<p>예약 내역</p>
							<p id="reservationCount"></p>
						</a>
					</li>
<!-- 				<li> -->
<!-- 					이건 후순위 구현하는 것으로 -->
<!-- 					<a href="#" class="d-flex justify-content-between">W -->
<!-- 						<p>나의 지난 경기</p> -->
<!-- 						<p>0</p> -->
<!-- 					</a> -->
<!-- 				</li> -->
				</ul>
				<div class="br"></div>
			</aside>

			<!-- 내 경기 정보 -->
			<aside class="single_sidebar_widget post_category_widget">
				<h4 class="widget_title">나의 캐시</h4>
				<ul class="list cat-list">
					<li><a href="#" class="d-flex justify-content-between">
							<p>캐시 충전하기 (후순위)</p>
							<p>0 ￦</p>
					</a></li>
				</ul>
			</aside>
		</div>
	</div>
	
	
	<script type="text/javascript">
	
		$(function(){
			
			let userId = "${loginUser.userId}";
			let userNo = ${loginUser.userNo};
			
			$.ajax({
				url: "myPageProfile.me",
				data: { userNo : userNo,
						userId : userId
				},
				success: function(result){
					
					console.log("=============");
					console.log(result);
					console.log("=============");
					
					var data = JSON.parse(result);
					
// 					console.log(data.boardCount);
// 					console.log(data.replyCount);
// 					console.log(data.qaCount);
// 					console.log(data.reservationCount);
					
					$("#boardCount").text(data.boardCount);
					$("#replyCount").text(data.replyCount);
					$("#qaCount").text(data.qaCount);
					$("#reservationCount").text(data.reservationCount);
					
				},
				error: function(){
					console.log("불러오기 실패");	
				}
				
			});
			
		});
	
	</script>
	

</body>
</html>