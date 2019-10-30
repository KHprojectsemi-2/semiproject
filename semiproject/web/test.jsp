<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
      width: 100%;
      height: 100%;
      background-size : cover;
  }
  
  #diary{
		text-align : center;
		margin-right : auto;
		margin-left : auto;
		margin-top : 70%;
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
<div id="demo" class="carousel slide" data-ride="carousel" style = "width : 400px; height : 300px"> 

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
   <div class="carousel-inner">
    <div class="carousel-item active" style = "width : 400px; height : 300px">
      <img src="<%=request.getContextPath()%>/mainViewImg/dog1.jpg" alt="Los Angeles" width="400px" height="300px">
    </div>
    <div class="carousel-item" style = "width : 400px; height : 300px">
      <img src="<%=request.getContextPath()%>/mainViewImg/dog2.jpg" alt="Chicago" width="400px" height="300px">
    </div>
    <div class="carousel-item" style = "width : 400px; height : 300px">
      <img src="<%=request.getContextPath()%>/mainViewImg/dog3.jpg" alt="New York" width="400px" height="300px">
    </div>
  </div>
 
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
		<%-- <div id = "diary"> 
			<div class = "owl" >
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog1.jpg">
			</div>
			<div class = "owl">
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog2.jpg">
			</div>
			<div class = "owl">
				<img alt="" src="<%=request.getContextPath()%>/mainViewImg/dog3.jpg">
			</div>
		</div> --%>
</body>
</html>
