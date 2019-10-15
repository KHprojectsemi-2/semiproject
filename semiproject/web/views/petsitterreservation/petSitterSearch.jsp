<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="author" content="colorlib.com">
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link href="../../css/main.css" rel="stylesheet"/>
    <style>
    	ul{
    		float:right;
    		padding-right:0px;
    		!important;
    		
    	}
    	.disabled{
    		pointer-events:none;
    		!important;
    	}
    </style>
</head>
<body>
	<%@include file = "../common/header.jsp" %>
	
	<br><br>

	<div class="bs-example" align="center">
    <div class="card" style="max-width: 1000px">
        <div class="row no-gutters">
            <div class="col-md-3" style="background: #868e96;">
                <img src="/examples/images/sample.svg" class="card-img-top h-100" width="300px">
            </div>
            <div class="col-md-7" align="center">
                <div class="card-body" style="width:700px">
                    <h5 class="card-title">주소</h5>
                    <p class="card-text">자기소개</p>
                    <br>
                    	<div class="button-group-area mt-10" style="display:inline">
							<button class="genric-btn primary small disabled">대형견</button>
							<button class="genric-btn primary small disabled">투약가능</button>
							<button class="genric-btn primary small disabled">노령견</button>
							<button class="genric-btn primary small disabled">환자견</button>
							<button class="genric-btn primary small disabled">자격증</button>
						</div>
						<br>
                   <!--  <a href="#" class="btn btn-primary stretched-link">View Profile</a> -->
                   	<br>
                   	<ul class="blog-info-link">
                		<li><a href="#"><i class="far fa-user"></i>리뷰</a></li>
                		<li><a href="#"><i class="far fa-comments"></i>4.8 </a></li>
                        <li><a href="#"><i class="far fa-comments"></i>예약하기</a></li>
                    </ul>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
	
	<div class="button-group-area mt-10">
		<button class="genric-btn primary-border small">대형견</button>
		<button class="genric-btn primary-border small">투약가능</button>
		<button class="genric-btn primary-border small">노령견</button>
		<button class="genric-btn primary-border small">환자견</button>
		<button class="genric-btn primary-border small">자격증</button>
	</div>
	
	<%@include file = "../common/footer.jsp" %>
	
</body>
    <script>
      const choices = new Choices('[data-trigger]',
      {
        searchEnabled: false,
        itemSelectText: '',
      });

    </script>
</html>
                         