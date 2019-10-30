<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>leopet || Home</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>

<style>
	#outer{
		margin-left : 10%;
		margin-right : 10%;	
		width : 80%;
		height : 2200px;
	}
	
	#mainImg{
		margin-left : 10%;
		margin-right : 10%;	
		background-image : url(<%=request.getContextPath()%>/mainViewImg/mainImg.jpg);
		width: 80%;
		height : 700px;
		background-size : cover;
		}	
	
	#intFont{
		margin-left : 20%;
		margin-right : 20%;
		width :60%;
		height : 350px;
		padding-top : 30px;
	}
	#intFont p{
		font-size : 60px;
		font-color : red;
		margin-left : 5%;
		margin-rigth : 5%;
		padding-top : 10px;
		font-weight : bold;
		line-height : 150%;
	}
	
	#joinpetcitter{
		margin-left : 20%;
		margin-right : 20%;
		
	}
	#joinpetcitter input{
		margin-left : 30px;
		width : 200px;
		height : 50px;
		opacity : 0.5 !important;
	}
	#joinpetcitter input:hover{
		cursor : pointer !important;
		opacity : 1 !important;
		
	}
	
	#petCare{
		text-align : center;
	}
	
	.care{
		margin-top : 5%; 
		margin-left : 3%; 
		margin-right : 3%;
		padding-top : 10px;
		display : inline-block; 
		width : 500px; 
		height : 400px;
	}
	
	.care img:hover{
		cursor:pointer;
		opacity : 0.8;
		border : 3px solid #53C9BB;
	}
	
	.care p{
		margin-top : 10px;
		font-size : 1.5em;
	}
	
  	
  	.banner {
  		position: relative;
  	 	width: 1200px;
  		height: 300px; 
  		margin:0 auto; 
  		padding:0; 
  		overflow: hidden;
  	  }
	.banner ul{
		position: absolute;
		margin: 0px; 
	 	padding:0; 
		list-style: none; 
	 }
	.banner ul li{
		float: left; 
		width: 1200px; 
		height: 300px; 
		margin:0; 
		padding:0;
		background-size : cover;
	}
	
</style>

</head>
<body>

	<%@include file = "views/common/header.jsp" %>
	<br><br>
	
	<input id = "loginUser" type = "hidden" value = "<%=loginUser%>">
	<div id = "outer">
		<div id = "mainImg">
			<div id = "intFont">
				<p>
					반려동물들을 위해<br>
					펫시터지원을<br>
					해보세요<br>
				</p>
			</div>
			<div id = "joinpetcitter">
				<input type = "button" class = "btn btn-info btn-md" onclick = "joinpetsitter();" value = "펫시터 지원하러가기">
			</div>
		</div>
		<br>

		<div id = "petCare">
			<div id = "homecare" class = "care" onclick = "homecare();">
				<div class = "changecare">
					<img src="<%=request.getContextPath()%>/mainViewImg/dogcare1.PNG" alt="" width="400px" height="300px">
					<p>
						방문펫시터
					</p>
				</div>
				<div class="img-cover"></div>
			</div>
			
			<div id = "sitterhomecare" class = "care">
				<div class = "changecare">
					<img src="<%=request.getContextPath()%>/mainViewImg/dog4.jpg" alt="" width="400px" height="300px">
					<p>
						가정집펫시터
					</p>
				</div>
				
			</div>
			
		</div>

		<div class="banner">
			<ul>
				<li><img src="<%=request.getContextPath()%>/mainViewImg/dogbanner1.PNG" width="1200px" height="300px"></li>
				<li><img src="<%=request.getContextPath()%>/mainViewImg/dogbanner2.PNG" width="1200px" height="300px"></li>
				<li><img src="<%=request.getContextPath()%>/mainViewImg/dogbanner3.PNG" width="1200px" height="300px"></li>
				<li><img src="<%=request.getContextPath()%>/mainViewImg/dogbanner4.PNG" width="1200px" height="300px"></li>
			</ul>
		</div>
		
			
		<br>
		
	</div>
	 
	  

	
	<script>
	$(document).ready(function() {
		var $banner = $(".banner").find("ul");

		var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
		var $bannerHeight = $banner.children().outerHeight(); // 높이
		var $length = $banner.children().length;//이미지의 갯수
		var rollingId;

		//정해진 초마다 함수 실행
		rollingId = setInterval(function() { rollingStart(); }, 2500);//다음 이미지로 롤링 애니메이션 할 시간차
    
		function rollingStart() {
			$banner.css("width", $bannerWidth * $length + "px");
			$banner.css("height", $bannerHeight + "px");
			//배너의 좌측 위치를 옮겨 준다.
			$banner.animate({left: - $bannerWidth + "px"}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
				//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
				$(this).append("<li>" + $(this).find("li:first").html() + "</li>");
				//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
				$(this).find("li:first").remove();
				//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
				$(this).css("left", 0);
				//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
			});
		}
	}); 	
	
	function joinpetsitter(){
		var user = $("#loginUser").val();
		if(user == 'null'){
			alert("로그인이 필요합니다.");
			location.href = "<%=request.getContextPath()%>/views/user/LoginPage.jsp";
		}else{
			location.href = "<%=request.getContextPath()%>/views/petSitter/petSitterApply.jsp";
		}
	}		
	
	<%-- function homecare(){
		var user = $("#loginUser").val();
		if(user == 'null'){
			alert("로그인이 필요합니다.");
			location.href = "<%=request.getContextPath()%>/views/user/LoginPage.jsp";
		}else{
			var sitterId = <%=loginUser.getUserId()%>
			location.href = "<%=request.getContextPath()%>/시터예약경로";
		}	
	}
	
	function sitterhomecare(){
		var user = $("#loginUser").val();
		if(user == 'null'){
			alert("로그인이 필요합니다.");
			location.href = "<%=request.getContextPath()%>/views/user/LoginPage.jsp";
		}else{
			var sitterId = <%=loginUser.getUserId()%>
			location.href = "<%=request.getContextPath()%>/시터예약경로";
		}	
	} --%>
	
	</script>

	<br><br><br>
	<%@include file = "views/common/footer.jsp" %>
	
</body>
</html>