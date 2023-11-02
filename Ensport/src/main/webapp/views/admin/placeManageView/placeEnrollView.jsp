<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!--부트스트랩 설정-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

    <!-- Title Page-->
    <title>경기장 개설</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">경기장 개설</h2>
                </div>
                <div class="card-body">
                    <form method="POST">

                        
                        <div class="form-row">
                            <div class="name">경기장 이름</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="company">
                                </div>
                            </div>
                        </div>
                        
                       
                        
                        <div class="form-row">
                            <div class="name">지역명</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="subject">
                                            <option disabled="disabled" selected="selected">서울</option>
                                            <option>부산</option>
                                            <option>대구</option>
                                            <option>인천</option>
                                            <option>광주</option>
                                            <option>대전</option>
                                            <option>울산</option>
                                            <option>세종</option>
                                            <option>경기</option>
                                            <option>제주</option>
                                            <option>경남</option>
                                            <option>경북</option>
                                            <option>전남</option>
                                            <option>전북</option>
                                            <option>충남</option>
                                            <option>충북</option>
                                            <option>강원</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">카테고리 </label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">축구
                                    <input type="radio" checked="checked" name="category" value="1">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">야구
                                    <input type="radio" name="category">
                                    <span class="checkmark" value="2"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">수용인원</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">22
                                    <input type="radio" checked="checked" name="max_capacity">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">14
                                    <input type="radio" name="max_capacity">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">경기장 규격</label>
                            <div class="p-t-15">
                                <label class="radio-container">45m X 90m
                                    <input type="radio" checked="checked" name="place_size">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">64m X 100m
                                    <input type="radio" name="place_size">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">75m X 110m
                                    <input type="radio" name="place_size">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">90m X 120m
                                    <input type="radio" name="place_size">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">주차장 유무</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Yes
                                    <input type="radio" checked="checked" name="parking_yn">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">No
                                    <input type="radio" name="parking_yn">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">특이사항</div>
                            <div class="value">
                                <div class="input-group">
                                    <textarea class="input--style-5" rows="2" cols="50"style="resize:none;" ></textarea>
                                </div>
                            </div>
                        </div>
                        <!--대표이미지, 세부이미지 첨부파일-->
                        <div class="mb-3">
                            <label for="formFile" class="form-label"><b>대표이미지</b></label>
                            <input class="form-control" type="file" id="formFile">
                        </div>
                        <div class="mb-3">
                            <label for="formFileMultiple" class="form-label"><b>세부이미지 (최대 5개)</b></label>
                            <input class="form-control" type="file" id="formFileMultiple" multiple>
                        </div>
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Register</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->