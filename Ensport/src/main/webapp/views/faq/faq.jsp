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
                    <h1>자주 묻는 질문 (FAQ)</h1>
                    <nav class="d-flex align-items-center">
                        <a href="${contextPath }">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="${contextPath }/faq.do">FAQ</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!-- End Banner Area -->



	<!--================Contact Area =================-->
	<section class="related-product-area section_gap_top section_gap_bottom">
		<h2 class="mb-4 text-center"><b><i class="bi bi-check"></i>  <span>자주 묻는 질문</span></b></h2>
		<div class="container">
		
			<div class="accordion" id="accordionExample">
				<div class="card-header" id="headingOne">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							Question 1 #  소셜 매치와 구장 예약의 차이가 무엇인가요?
						</button>
					</h2>
				</div>
				<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 1 #</b></p>
						<p>저도 안 지 얼마 되지 않았기 때문에 자세히는 답변해 드릴 수 없지만 어쨌든 다르다는 것은 확실합니다.</p>
					</div>
				</div>

				<div class="card-header" id="headingTwo">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							Question 2 #  소셜 매치에서 인원이 모이지 않으면 어떻게 되나요?
						</button>
					</h2>
				</div>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 2 #</b></p>
						<p>아쉬움이 커집니다.</p>
					</div>
				</div>

				<div class="card-header" id="headingThree">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							Question 3 #  경기 중 부상을 당했을 때에는 어떻게 조치해야 하나요?
						</button>
					</h2>
				</div>
				<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 3 #</b></p>
						<p>Ensports 쪽에는 알리지 않고 병원에 방문하시기를 권장드립니다.</p>
					</div>
				</div>


				<div class="card-header" id="headingFour">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
							Question 4 #  구장 예약 후 취소하고 싶습니다.
						</button>
					</h2>
				</div>
				<div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 4 #</b></p>
						<p>마이 페이지에서 취소할 수 있습니다만, 두번 이상 취소시 Ensports 회원으로서의 자격을 상실하게 됩니다.</p></div>
				</div>


				<div class="card-header" id="headingFive">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
							Question 5 #  장기 구장 대여를 희망합니다.
						</button>
					</h2>
				</div>
				<div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 5 #</b></p>
						<p>다양한 플레이어가 이용할 수 있도록 장기 구장 대여는 되도록 지양하고 있으나 대기업 야유회 등 특수한 상황에서는 일부 허용하는 부분이 존재합니다. 자세한 문의는 문의사항란 혹은 Ensports 본사로 연락해 주시기 바랍니다.</p></div>
				</div>

				<div class="card-header" id="headingSix">
					<h2 class="mb-0">
						<button class="btn btn-link-faq btn-block text-left collapsed" type="button" data-toggle="collapse" data-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
							Question 6 #  사이트를 후원하고 싶습니다.
						</button>
					</h2>
				</div>
				<div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionExample">
					<div class="card-body-faq">
						<p><b>Answer 6 #</b></p>
						<p>
							소중한 후원을 감사드립니다.
							Ensports 본사에 방문하셔서 50년 만기 의무 후원 서약서에 서약하신 후 후원자의 자격을 얻으실 수 있습니다.
							Lv 5.에 해당하는 다이아볼 등급을 취득할 수 있으며 10년에 한번 구장 예약 무료 혜택을 드립니다.
							자세한 문의는 문의사항란 혹은 Ensports 본사로 연락주시기 바랍니다. 감사합니다.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================Contact Area =================-->



    <!--================End Checkout Area =================-->
	<%@ include file="../common/footer.jsp" %>


</body>

</html>