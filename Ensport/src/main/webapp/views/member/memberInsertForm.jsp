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
                    <h1>회원가입</h1>
                    <nav class="d-flex align-items-center">
                        <a href="index.html">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="lo">회원가입</a>
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
                                <a href="#" class="genric-btn primary mt-0" id="idDuplCheck" onclick="idDuplCheck();">중복확인</a>
                            </div>

							<div class="col-md-12 form-group p_star">
                                <input type="text" class="form-control" id="userName" name="userName">
                                <span class="placeholder" data-placeholder="이름"></span>
                            </div>
                            
							<!-- 비밀번호 -->
                            <div class="col-md-12 form-group p_star">
                                <input type="password" class="form-control" id="userPassword" name="userPassword">
                                <span class="placeholder" data-placeholder="비밀번호 (6~15자리 영문 및 숫자 조합)"></span>
                            </div>
                            <div class="col-md-12 form-group p_star">
                                <input type="password" class="form-control" id="userPasswordChk" name="userPasswordChk">
                                <span class="placeholder" data-placeholder="비밀번호 확인"></span>
                            </div>
                            
                            <!-- 전화번호 -->
                            <div class="col-md-6 form-group p_star">
                                <input type="text" class="form-control" id="phone" name="phone">
                                <span class="placeholder" data-placeholder="전화번호"></span>
                            </div>
                            <!-- 중복확인 버튼 -->
                            <div class="button-group-area">
                                <a href="#" class="genric-btn primary mt-0" id="phoneDuplCheck" onclick="phoneDuplCheck();">중복확인</a>
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


                            <!-- 성별 -->
                            <div class="col-md-12 form-group p_star">
                                <div class="col-md-4 single-element-widget">
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
                            </div>
                            
                            
                            <div class="row contact_form">
                               <div class="col-md-12 text-center mt-50">
                                   <h3 class="mx-auto" style="margin: 30px 0;"><b>선택사항</b></h3>
                               </div>
                           </div>
                            
                            <!-- 별명 -->
							<div class="col-md-12 form-group mt-50 ml-50">
                                <input type="text" class="form-control" id="userPasswordChk" name="userPasswordChk" placeholder="별명">
                                <span class="placeholder" data-placeholder="별명"></span>
                            </div>

							<!-- 선호하는 종목 -->
                            <div class="col-xl-12 form-group d-flex mt-50">
                                <div class="col-md-4 single-element-widget">
                                    <h3 class="mb-30">선호하는 종목</h3>
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
                                            <input type="checkbox" id="primary-checkbox">
                                            <label for="primary-checkbox"></label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 form-group p_star">
                                <div class="row contact_form">
                                    <div class="col-md-12 text-center mt-50">
                                        <button type="submit" value="" class="primary-btn">회원가입</button>
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
    
    
    
    
    <script type="text/javascript">
        
        function idDuplCheck(){
       			//사용자가 입력한 아이디값을 추출하여 데이터베이스에서 해당 아이디가 존재하는지
       			//조회후 존재한다면 다시 입력할 수 있도록
       			//존재하지 않는다면 사용 가능하도록 처리하기
       			var userId = $("#userId").val();
       			console.log(userId);		//id값 추출하기
				
       			$.ajax({
       				url: "idDuplCheck.me",
       				data: { checkId : userId },
       				success: function(result){

                        console.log(result);
       					
       					if(result == 'NNNNN'){	//아이디 중복
	       					alert("해당 아이디는 이미 존재하거나 탈퇴한 회원의 아이디입니다.");
       					}else{	//아이디 사용가능
       						//기존의 disabled 되어있던 회원가입 버튼을 사용가능하게 바꾸고 id값을 변경할 수 없도록 readonly 처리해주기
       						if(confirm("사용가능한 아이디입니다. 사용하시겠습니까?")){
           						$("#idDuplCheck").removeAttr("disabled");	//버튼 비활성화(disabled 속성) 삭제
           						$("#userId").attr("readonly", true);	//아이디 입력란 읽기 전용으로 변경하기
           					}else{
           						$("#userId").focus();
           					}
       					}

       				},
       				error: function(){
       				}
       			})
        	}
        
        
        function phoneDuplCheck(){
       			//사용자가 입력한 아이디값을 추출하여 데이터베이스에서 해당 아이디가 존재하는지
       			//조회후 존재한다면 다시 입력할 수 있도록
       			//존재하지 않는다면 사용 가능하도록 처리하기
       			var phone = $("#phone").val();
       			console.log(phone);
				
       			$.ajax({
       				url: "phoneDuplCheck.me",
       				data: { checkPhone : phone },
       				success: function(result){

                        console.log(result);
       					
       					if(result == 'NNNNN'){	//아이디 중복
	       					alert("해당 번호는 이미 존재하거나 탈퇴한 회원의 번호입니다.");
       					}else{	//아이디 사용가능
       						//기존의 disabled 되어있던 회원가입 버튼을 사용가능하게 바꾸고 id값을 변경할 수 없도록 readonly 처리해주기
       						if(confirm("가입 이력이 없는 번호입니다. 사용하시겠습니까?")){
           						$("#phoneDuplCheck").removeAttr("disabled");	//버튼 비활성화(disabled 속성) 삭제
           						$("#phone").attr("readonly", true);	//아이디 입력란 읽기 전용으로 변경하기
           					}else{
           						$("#phone").focus();
           					}
       					}
       				},
       				error: function(){
       				}
       			})
        	}

    </script>
    
    
    <%@ include file="../common/footer.jsp" %>
    
 
</body>

</html>