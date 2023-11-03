<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<style>
.pdt-7{ padding-top : 7px; }
</style>


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

                        <!-- 내 경기 정보 -->
                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">나의 캐시</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex justify-content-between">
                                        <p>캐시 충전하기 (후순위)</p>
                                        <p>￦</p>
                                    </a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
				
				<!-- ### 내 정보 수정하기 ### -->
                <div class="col-xl-8 posts-list">
                    <div class="row">
                        <div class="col-lg-12">
                            <h3>내 정보 수정</h3>
                            <form class="row contact_form" id="myInformationForm" action="${contextPath}/memberUpdate.me" method="post" novalidate="novalidate" style="margin-top: 40px;">
								 <input type="hidden" name="userNo" value="${loginUser.userNo}">
                                
                                <!-- ID -->
                                <span class="col-md-4 pdt-7">아이디</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="userId" name="userId" placeholder="ID" value="${loginUser.userId}" readonly>
                                    <span class="placeholder"></span>
                                </div>                             
    							
    							<span class="col-md-4 pdt-7">이름</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="userName" name="userName" value="${loginUser.userName}" placeholder="이름">
                                    <span class="placeholder"></span>
                                </div>
                                
                                <!-- 전화번호 -->
    							<span class="col-md-4 pdt-7">전화번호</span>
                                <div class="col-md-8 form-group p_star">
                                    <input type="text" class="form-control" id="phone" name="phone" placeholder="전화번호" value="${loginUser.phone}" readonly>
                                    <span class="placeholder"></span>
                                </div>
                                
    
                                <!-- 주소 -->
                                <span class="col-md-4 pdt-7">주소</span>
                                <div class="col-md-6 form-group p_star">
                                    <input type="text" class="form-control" id="address" name="address" placeholder="주소" value="${loginUser.address}" readonly>
                                    <span class="placeholder"></span>
                                </div>
    
                                <!-- 주소 검색 버튼 -->
                                <div class="button-group-area" id="address_kakao">
                                    <a href="#" class="genric-btn primary mt-0">주소검색</a>
                                </div>
                                
                                <!-- 상세주소 -->
                                <span class="col-md-4 pdt-7"></span>
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
                              <span class="col-md-4 pdt-7">이메일</span>
                               <div class="col-md-8 form-group p_star">
                                  <input type="text" class="form-control" id="email" name="email" value="${loginUser.email}" placeholder="이메일 (example@example.kr)">
                                  <span class="placeholder"></span>
                              </div>

                              <!-- 성별 -->
                              <span class="col-md-4 pdt-7">성별</span>
                              <div class="col-md-8 form-group p_star">
                                  <select class="country_select" name="gender" id="gender">
                                     <option value="">-- 성별 선택 --</option>
                                     <option value="M">남자</option>
                                     <option value="F">여자</option>
                                  </select>
                              </div>

                                
                                <!-- 별명 -->
                                <div class="col-md-4 pdt-7"><span>별명</span></div>
                                <div class="col-md-8 form-group">
                                    <input type="text" class="form-control" id="userNickname" name="userNickname" placeholder="별명" value="${loginUser.userNickname}">
                                    <span class="placeholder"></span>
                                </div>
    
                                <!-- 선호하는 종목 -->
                                <div class="col-md-12 form-group d-flex mt-50 pdt-7">
                                    <div class="col-md-3 single-element-widget">
                                        <h5 class="mb-30 "><b>선호하는 종목</b></h5>
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
                                            <button type="submit" value="" class="primary-btn" onclick="return memberUpdate();">정보 수정</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            
                            
                            <!-- ### 내 정보 수정하기 ### -->
                            <form class="row contact_form" id="myChangePwdForm" action="${contextPath}/changePwd.me" method="post" novalidate="novalidate" style="display: none; margin-top: 40px;">
								<input type="hidden" name="userNo" value="${loginUser.userNo}">
                                
                                <!-- 현재 비밀번호 -->
                                <span class="col-md-4 pdt-7">현재 비밀번호</span>
                                <div class="col-md-8 form-group">
                                    <input type="password" class="form-control" id="userPassword" name="userPassword" placeholder="현재 비밀번호">
                                    <span class="placeholder"></span>
                                </div>                             
    							
    							<!-- 새로운 비밀번호 -->
    							<span class="col-md-4 pdt-7">새로운 비밀번호</span>
                                <div class="col-md-8 form-group">
                                    <input type="password" class="form-control" id="newUserPassword" name="newUserPassword" placeholder="새로운 비밀번호 비밀번호 (6~15자리 영문 및 숫자 조합)">
                                    <span class="placeholder"></span>
                                </div>
                                
                                <!-- 새로운 비밀번호 확인 -->
    							<span class="col-md-4 pdt-7">새로운 비밀번호 확인</span>
                                <div class="col-md-8 form-group">
                                    <input type="password" class="form-control" id="newUserPasswordChk" name="newUserPasswordChk" placeholder="새로운 비밀번호 확인 (6~15자리 영문 및 숫자 조합)">
                                    <span class="placeholder"></span>
                                </div>
    
                                <div class="col-md-12 form-group p_star">
                                    <div class="row contact_form">
                                        <div class="col-md-12 text-center mt-50">
                                            <button type="submit" class="primary-btn" onclick="chagePwdDone();">비밀번호 변경하기</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            
                        </div>
                    </div>
	                <div class="blog_post">
	                   <div class="blog_details text-right">
	                       <a href="#" class="white_bg_btn" id="changePwdbtn" onclick="changePwdForm();">비밀번호 변경</a>
	                       <a href="#" class="white_bg_btn" onclick="memberDelete();">회원 탈퇴하기</a>
	                   </div>
	                </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
	
    
    
    
    
    <script type="text/javascript">
    
    
    	//성별 선택하기
	    document.addEventListener('DOMContentLoaded', function() {
	        var gender = "${loginUser.gender}";
	        var selectElement = document.getElementById('gender');
	
	        if (gender === 'M') {
	          // 'M'를 선택
	          for (var i = 0; i < selectElement.options.length; i++) {
	            if (selectElement.options[i].value === 'M') {
	              selectElement.options[i].selected = true;
	              break;
	            }
	          }
	        } else if (gender === 'F') {
	          // 'F'를 선택
	          for (var i = 0; i < selectElement.options.length; i++) {
	            if (selectElement.options[i].value === 'F') {
	              selectElement.options[i].selected = true;
	              break;
	            }
	          }
	        }
	      });
	    
	    
    	
	    //선호종목 체크박스
	    document.addEventListener('DOMContentLoaded', function() {
	        var prefers = "${loginUser.prefer}";
	        var inputElements = document.querySelectorAll('input[name="prefer"]');

	        // 순차적으로 요소를 확인하며 처리
	        inputElements.forEach(function(inputElement) {
	          var value = inputElement.value;

	          // loginUser.prefer에 현재 value가 포함되어 있는지 확인
	          if (prefers.includes(value)) {
	            // 값이 있다면 현재 요소에 checked 속성을 추가
	            inputElement.checked = true;
	          }
	        });
	      });
	  	
	    
	    
	    //회원정보 수정하기
    	function memberUpdate(){
    		
    		if(confirm("회원 정보를 수정하시겠습니까?")){
    			return true;
    		}else{
        		return false;
    		}
    	}
    	
	    
    	
    	//회원 비밀번호 창 띄우기
    	function changePwdForm(){
    		$("#myInformationForm").hide();
    		$("#changePwdbtn").hide();
    		
    		$("#myChangePwdForm").css("display","");
    	}
    	
    	
    	//회원 비밀번호 변경
    	function changePwdDone(){
    		
    		
    		var userPwd = $("#userPassword").val();
    		var newPwd = $("#newUserPassword").val();
    		var newPwdChk = $("#newUserPasswordChk").val();
    		
    		
			if (userPwd == null || userPwd == '') {
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			if(newPwd == newPwdChk){
			
				alert("비밀번호가 일치하지 않습니다.");
				return false;
			
			}else {
				
				var regExp = /^[A-Za-z0-9]{4,15}$/;

				if (!regExp.test(newPwd)) { //비밀번호
					alert("비밀번호는 4~15자리 영문 및 숫자 조합이어야 합니다.");
					$("#userPassword").focus(); //해당 요소에 포커스 된다.
					return false;
				}
				
				if (userPassword != userPasswordChk) {
					alert("비밀번호가 일치하지 않습니다.");
					$("#userPasswordChk").focus();
					return false;
				}
			}
    	}
    	
    	
	    //회원 탈퇴
		function memberDelete(){
		    if (confirm('회원 탈퇴하시겠습니까?')) {
		        const password = prompt("탈퇴할 회원의 비밀번호를 입력하세요.");
		        location.href = '${contextPath}/memberDelete.me?userNo=${loginUser.userNo}&password=${loginUser.userPassword}';
		    }
		}
	</script>
	
	
	
	
	<!--================ footer =================-->
    <%@ include file="../common/footer.jsp" %>
    
    
 
</body>
</html>