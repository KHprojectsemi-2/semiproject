<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    
    
		body {
  			font-family: Arial;
			}

		* {
  		box-sizing: border-box;
			}

		form.example input[type=text] {
  		padding: 10px;
  		font-size: 17px;
  		border: 1px solid grey;
  		float: left;
  		width: 80%;
  		background: #f1f1f1;
		}

	form.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

form.example::after {
  content: "";
  clear: both;
  display: table;
}
.leftalign{
	align:left;
	!important;
}
hr.new5 {
  border: 10px solid green;
  border-radius: 5px;
}

</style>
</head>

<body>
	<%@include file = "../common/header.jsp" %>
	
	<br><br>
	
	<h2 style="text-align:center">펫시터를 검색해보세요</h2>

	<p style="text-align:center">본인 조건에 맞게 검색해보세요</p>
	<form class="example" action="#" style="margin:auto;max-width:500px">
  	<input type="text" placeholder="Search.." name="search2">
  	<button type="submit"><i class="fa fa-search"></i></button>
	</form>
	<div class="button-group-area mt-10" align="center">
		<button class="genric-btn primary-border small">대형견</button>
		<button class="genric-btn primary-border small">투약가능</button>
		<button class="genric-btn primary-border small">노령견</button>
		<button class="genric-btn primary-border small">환자견</button>
		<button class="genric-btn primary-border small">자격증</button>
	</div>
	<br>
	<hr class="new5">
	<div class="bs-example" align="center">
    <div class="card" style="max-width: 1000px">
        <div class="row no-gutters">
            <div class="col-md-3" style="background: #868e96;">
                <img src="/examples/images/sample.svg" class="card-img-top h-100" width="300px">
            </div>
            <div class="col-md-7" align="center">
                <div class="card-body leftalign" style="width:700px">
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
	
	
	
	<%@include file = "../common/footer.jsp" %>
	
</body>

</html>
                         