<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx" class="no-js">

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
                        <a href="single-product.html">회원가입</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->



	<!--================Contact Area =================-->
	<section class="contact_area section_gap_bottom">
		<div class="container">
			<div class="row text-center">



				<div class="accordion" id="accordionExample">
				  <div class="card">
				    <div class="card-header" id="headingOne">
				      <h2 class="mb-0">
				        <button class="btn btn-link btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				          Collapsible Group Item #1
				        </button>
				      </h2>
				    </div>
				
				    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				      <div class="card-body">
				        Some placeholder content for the first accordion panel. This panel is shown by default, thanks to the <code>.show</code> class.
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingTwo">
				      <h2 class="mb-0">
				        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          Collapsible Group Item #2
				        </button>
				      </h2>
				    </div>
				    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
				      <div class="card-body">
				        Some placeholder content for the second accordion panel. This panel is hidden by default.
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingThree">
				      <h2 class="mb-0">
				        <button class="btn btn-link btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          Collapsible Group Item #3
				        </button>
				      </h2>
				    </div>
				    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
				      <div class="card-body">
				        And lastly, the placeholder content for the third and final accordion panel. This panel is hidden by default.
				      </div>
				    </div>
				  </div>
				</div>



			</div>
		</div>
	</section>
	<!--================Contact Area =================-->


    <!--================End Checkout Area =================-->
	<%@ include file="../common/footer.jsp" %>



	<script type="text/javascript">
	

		$(function() {

			//전체동의 클릭시 전부 체크
			$("#default-checkbox3").on("click", function() {
				$("#default-checkbox, #default-checkbox2").prop("checked", true);
			});
			
			
			//전체동의 되지 않은 상태로 회원가입 버튼 클릭시 페이지 이동 막기
			$("#insertMemberNext").on("click", function() {
				// default-checkbox1과 default-checkbox2 체크 여부를 확인하고 alert 표시
				if (!($("#default-checkbox").prop("checked") && $("#default-checkbox2").prop("checked"))) {
					alert("이용 약관에 모두 동의해야 합니다.");
					return false;
				}
				
				location.href='${contextPath}/memberInsert.me';
				
			});
		})
	</script>


</body>

</html>