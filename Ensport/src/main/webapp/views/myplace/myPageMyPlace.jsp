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
                
                
                <!-- 마이 페이지 메뉴 -->
                <%@ include file="/views/member/myPage_profile.jsp" %>
                
				
				<!-- ### 내 정보 수정하기 ### -->
                <div class="col-lg-8 posts-list">
                    <div class="row">
                        <div class="col-md-12">
                            <h3>MY PLACE</h3>

								<div class="container section_gap_top_75">
							      <section class="lattest-product-area pb-40 category-list">
										<div class="row">
											<!-- single product -->
											<c:forEach items="${aList}" var="a">
												<div class="col-lg-4 col-md-6">
													<div class="single-product">
														<img class="img-fluid" src="${contextPath }${a.filePath }${a.changeName}" alt="" style="width : 300px; height : 174px;">
														<div class="product-details">
															<h6>No.${a.placeNo} ${a.placeName }</h6>
															<div class="price">
																<h6 class="">${a.localName } 경기장</h6>
															</div>
															<div class="prd-bottom">
																<a href="" class="social-info">
																	<span class="lnr lnr-heart"></span>
																	<p class="hover-text">찜 해제하기</p>
																</a>
															</div>
														</div>
													</div>
												</div>	
											</c:forEach>
										</div>
									</section>  
						        </div>
						    <!--================End Cart Area =================-->
 							
 							
 							<!--====== paging ======-->
 							<c:if test="${not empty aList }">
			                    <nav class="blog-pagination justify-content-center d-flex">
				                   <ul class="pagination">
			                    	<c:choose>
				                        <c:when test="${pi.currentPage eq 1}">
											 <li class="page-item">
				                                <a href="#" class="page-link" aria-label="Previous">
				                                    <span aria-hidden="true">
				                                        <span class="lnr lnr-chevron-left"></span>
				                                    </span>
				                                </a>
				                            </li>
										</c:when>
										<c:otherwise>
										 	<li class="page-item">
				                                <a href="${contextPath }/myPageMyPlace.me?currentPage=${pi.currentPage-1}" class="page-link" aria-label="Previous">
				                                    <span aria-hidden="true">
				                                        <span class="lnr lnr-chevron-left"></span>
				                                    </span>
				                                </a>
				                            </li>
										</c:otherwise>
				                    </c:choose>
				                    
				                    <!-- 해당 페이지에 active 속성 부여해야함 (어떻게 해야할지 궁리좀 해보자) -->
		                    		<c:forEach var="i" begin="${pi.startPage}" end="${pi.endPage }">
			                            <li class="page-item"><a href="${contextPath }/myPageMyPlace.me?currentPage=${i}" class="page-link">${i}</a></li>
									</c:forEach>
									
									
				                    <c:choose>
				                        <c:when test="${pi.currentPage eq pi.maxPage}">
											 <li class="page-item">
				                                <a href="#" class="page-link" aria-label="Next">
				                                    <span aria-hidden="true">
				                                        <span class="lnr lnr-chevron-right"></span>
				                                    </span>
				                                </a>
				                            </li>
										</c:when>
										<c:otherwise>
										 	<li class="page-item">
				                                <a href="${contextPath }/myPageMyPlace.me?currentPage=${pi.currentPage+1}" class="page-link" aria-label="Previous">
				                                    <span aria-hidden="true">
				                                        <span class="lnr lnr-chevron-right"></span>
				                                    </span>
				                                </a>
				                            </li>
										</c:otherwise>
				                    </c:choose>
			                       </ul>
			                    </nav>
			                </c:if>
							<!--====== page ======-->
 						
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================Blog Area =================-->
	


	<!--================ footer =================-->
    <%@ include file="../common/footer.jsp" %>
    
    
 
</body>
</html>