<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>leopet || Home</title>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
	#outer{
		margin-left : 10%;
		margin-right : 10%;	
		width : 80%;
		height : 2200px;
	}
	
	#mainImg{
		background-image : url(<%=request.getContextPath()%>/mainViewImg/mainImg.jpg);
		width: 100%;
		height : 700px;
		border : 1px solid black;
		background-size : cover;
		}
		
	/* #mainImg. img{
		width : 100%;
		height : 100%;
	} */	
	
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
	#diary{
		text-align : center;
		margin-right : auto;
		margin-left : auto;
		margin-top : 70%
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
	.owl{
		width : 400px;
		height: 300px;
		align : center;
		border : 1px solid black;
		display : inline-block;
	}
	.owl img{
		width : 100%;
		height : 100%;
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
			<%-- <img alt="사진사진사진" src="<%=request.getContextPath()%>/mainViewImg/mainImg.jpg"> --%>
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

		<div id = "diary"> 
			<div class = "owl" >
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog1.jpg">
			</div>
			<div class = "owl">
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog2.jpg">
			</div>
			<div class = "owl">
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog3.jpg">
			</div>
		</div>
	</div>
	 
	  

	
	<script>
		/* $(document).ready(function(){
			var owl = $('.owl-carousel');
			owl.owlCarousel({
			    items:1,
			    loop:true,
			    margin:10,
			    autoplay:true,
			    autoplayTimeout:1000,
			    autoplayHoverPause:true
			});
 
	});*/
	function joinpetsitter(){
		var user = $("#login").val();
		if(user == null){
			alert("로그인이 필요합니다.");
			location.href = "<%=request.getContextPath()%>/views/user/LoginPage.jsp";
		}else{
			location.href = "<%=request.getContextPath()%>/지원서작성경로";
		}
	}
		
	</script>

	<br><br><br>
	<%@include file = "views/common/footer.jsp" %>

</body>
</html>