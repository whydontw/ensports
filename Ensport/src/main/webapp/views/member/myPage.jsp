<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<body>

	<%@ include file="../common/menubar.jsp" %>
	
    <!-- Start Banner Area -->
    <section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>마이 페이지</h1>
                    <nav class="d-flex align-items-center">
                        <a href="${contextPath }">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="${contextPath }/myPage.do">마이 페이지</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->
	
	

	<section class="blog_area single-post-area section_gap">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget align-self-center">
                            <img class="author_img rounded-top" src="${contextPath}/resources/img/elements/baseball_icon1.png" alt="">
                            <span class="mx-auto"><b>Lv 1. 슛돌이</b></span>
                            <div class="br"></div>
                        </aside>
                        <aside class="single_sidebar_widget author_widget">
                            <img class="author_img rounded-circle" src="${contextPath}/resources/img/blog/author.png" alt="">
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
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>게시글</p>
                                        <p>37</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>댓글</p>
                                        <p>24</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>리뷰</p>
                                        <p>59</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>문의사항</p>
                                        <p>29</p>
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
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>예약 내역</p>
                                        <p>2</p>
                                    </a>
                                </li>
                                <li>
                                    <%-- 이건 후순위 구현하는 것으로 --%>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>나의 지난 경기</p>
                                        <p>15</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>

                <div class="col-xl-8 posts-list">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3>내 정보 수정</h3>
                            <form class="row contact_form" action="${contextPath }/memberUpdate.me" method="post" novalidate="novalidate" style="margin-top: 40px;">
                                <input type="hidden" name="userNo" value="${loginUser.userNo}">
                                
                                <!-- ID -->
                                <span class="col-md-4">아이디</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="ID" value="${loginUser.userId}" readonly>
                                    <span class="placeholder"></span>
                                </div>                             
    							
    							<span class="col-md-4">이름</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="userName" name="userName" value="${loginUser.userName}" placeholder="이름">
                                    <span class="placeholder"></span>
                                </div>
                                

                                <!-- 변경할 비밀번호 -->
    							<span class="col-md-4">변경할 비밀번호</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="password" class="form-control" id="userPassword" name="userPasswordChk" placeholder="새로운 비밀번호">
                                    <span class="placeholder" ></span>
                                </div>
                                <!-- 변경할 비밀번호 확인하기 -->
    							<span class="col-md-4">비밀번호 확인하기</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="password" class="form-control" id="userPasswordChk" name="userPasswordChk" placeholder="새로운 비밀번호 확인">
                                    <span class="placeholder" ></span>
                                </div>
                                
                                <!-- 전화번호 -->
    							<span class="col-md-4">전화번호</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호" value="${loginUser.phone}" readonly>
                                    <span class="placeholder"></span>
                                </div>
                                
    
                                <!-- 주소 -->
                                <span class="col-md-4">주소</span>
                                <div class="col-md-6 form-group p_star">
                                    <input type="text" class="form-control" id="address" name="address" placeholder="주소" value="${loginUser.address }" readonly>
                                    <span class="placeholder"></span>
                                </div>
    
                                <!-- 주소 검색 버튼 -->
                                <div class="button-group-area" id="address_kakao">
                                    <a href="#" class="genric-btn primary mt-0">주소검색</a>
                                </div>
                                <span class="col-md-4">상세주소</span>
                                <div class="col-md-8 form-group">
                                    <input type="text" class="form-control" id="addressDetail" name="addressDetail" placeholder="상세주소" >
                                    <span class="placeholder"></span>
                                </div>
                                
                                <script type="text/javascript">
                                    window.onload = function(){
                                        document.getElementById("address_kakao").addEventListener("click", function(){ //주소입력칸을 클릭하면
                                            
                                            event.preventDefault(); // 링크의 기본 동작을 중지
                                            //카카오 지도 발생
                                            new daum.Postcode({
                                                oncomplete: function(data) { //선택시 입력값 세팅
                                                    document.getElementById("address").value = data.address; 	// 주소 넣기
                                                    document.querySelector("input[name=addressDetail]").focus(); //상세입력 포커싱
                                                }
                                            }).open();
                                        });
                                    }
                                </script>
    
    
                              <!-- 이메일 -->
                              <span class="col-md-4">이메일</span>
                               <div class="col-md-8 form-group p_star">
                                  <input type="text" class="form-control" id="email" name="email" value="${loginUser.email}" placeholder="이메일 (example@example.kr)">
                                  <span class="placeholder"></span>
                              </div>

                              <!-- 성별 -->
                              <span class="col-md-4">성별</span>
                                <div class="col-md-8 form-group p_star">
                                    <select class="country_select col-md-8" name="gender" id="gender">
                                        <option value="">-- 성별 선택 --</option>
                                       	<option value="M">남자</option>
                                       	<option value="F">여자</option>
                                    </select>
                                </div>
                                
                                <script type="text/javascript">
                                	$(function(){
                                		
                                		var gender = ${loginUser.gender};
                                		
                                		if(gender == 'M'){
                                			$('select option[value="M"]').prop("selected", "selected");
                                		}else{
                                			$('select option[value="F"]').prop("selected", "selected");
                                		}
                                		
                                	})
                                </script>
    
                                
                                <!-- 별명 -->
                                <div class="col-md-4 align-middle"><span>별명</span></div>
                                <div class="col-md-8 form-group">
                                    <input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="별명" >
                                    <span class="placeholder"></span>
                                </div>
    
                                <!-- 선호하는 종목 -->
                                <div class="col-md-12 form-group d-flex mt-50">
                                    <div class="col-md-5 single-element-widget">
                                        <h5 class="mb-30"><b>선호하는 종목</b></h5>
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <p>축구</p>
                                            <div class="primary-checkbox">
                                                <input type="checkbox" id="soccer" name="prefer" value="축구">
                                                <label for="soccer"></label>
                                            </div>
                                        </div>
                                        <div class="switch-wrap d-flex justify-content-between">
                                            <p>야구</p>
                                            <div class="primary-checkbox">
                                                <input type="checkbox" id="baseball" name="prefer" value="야구">
                                                <label for="baseball"></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
    
                                <div class="col-md-12 form-group p_star">
                                    <div class="row contact_form">
                                        <div class="col-md-12 text-center mt-50">
                                            <button type="submit" value="" class="primary-btn" onclick="return memberUpdate();">정보수정</button>
                                            <button type="button" class="primary-btn" onclick="memberDelete();">회원탈퇴</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->


	<script type="text/javascript">
		function memberDelete(){
			
		    if (confirm('회원 탈퇴하시겠습니까?')) {
		        const password = prompt("탈퇴할 회원의 비밀번호를 입력하세요.");
		        location.href = '${contextPath}/memberDelete.me?userNo=${loginUser.userNo}&password=${loginUser.userPassword}';
		    }
		}
		
	</script>
	



    
    
    <%@ include file="../common/footer.jsp" %>
 
</body>
</html>