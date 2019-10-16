<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();

%>
<!doctype html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>leopet || Home</title>
    <link rel="icon" href="img/favicon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<%=root %>/css/bootstrap.min.css">
    <!-- animate CSS -->
    <link rel="stylesheet" href="<%=root %>/css/animate.css">
    <!-- owl carousel CSS -->
    <link rel="stylesheet" href="<%=root %>/css/owl.carousel.min.css">
    <!-- themify CSS -->
    <link rel="stylesheet" href="<%=root %>/css/themify-icons.css">
    <!-- flaticon CSS -->
    <link rel="stylesheet" href="<%=root %>/css/flaticon.css">
    <!-- font awesome CSS -->
    <link rel="stylesheet" href="<%=root %>/css/magnific-popup.css">
    <!-- style CSS -->
    <link rel="stylesheet" href="<%=root %>/css/style.css">
    <style>
       footer{
          width:cover;
          height:900px;
          !important;
       }
    </style>
</head>

<body>
    <!--::header part start::-->
    <header class="header_area">
        <div class="sub_header">
            <div class="container">
                <div class="row align-items-center">
                  <div class="col-4 col-md-4 col-xl-6">
                      <div id="logo">
                          <a href="<%=root %>/index.jsp"><img src="<%=root %>/img/pett.png"  width = "400px" height = "125px" alt="" title="" /></a>

                      </div>
                  </div>
                  <div class="col-8 col-md-8 col-xl-6 ">
                      <div class="sub_header_social_icon float-right">
                      
                        <!-- <a href="#"><i class="flaticon-phone"></i>+02 213 - 256 (365)</a> -->
                        <a href="<%=root %>/views/user/LoginPage.jsp" class="btn_1 d-none d-md-inline-block">로그인</a>
                      </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main_menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <i class="ti-menu"></i>
                            </button>

                            <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link active" href="<%=root %>/index.html"></a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="<%=root %>/index.jsp" class="nav-link">소개</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="<%=root %>/views/diary/insertDiary" class="nav-link">돌봄일지</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="<%=root %>/views/petSitter/petSitterApply" class="nav-link">펫 시터 지원</a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                               펫 시터 예약
                                        </a>
                                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                            <a class="dropdown-item" href="<%=root %>/views/petsitterreservation/petSitterSearch.jsp">방문 펫 시터 예약</a>
                                            <a class="dropdown-item" href="single-blog.html">가정집 펫시터 예약</a>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a href="blog.html" class="nav-link">커뮤니티</a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="<%=root %>/views/serviceCenter/FAQ.jsp" class="nav-link">고객센터</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
   </body>
 </html>