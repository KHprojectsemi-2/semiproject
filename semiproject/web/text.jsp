<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>LightSlider Test</title>
    <link rel="stylesheet"  href="https://han3283.cafe24.com/js/lightslider/css/lightslider.css"/>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script>

<style>
	ul{
    list-style: none outside none;
    padding-left: 0;
    margin: 0;
	}
	.slide-content .slide-content{
	    margin-bottom: 60px;
	}
	.slider li{
	    text-align: center;
	    color: #FFF;
	    background-size:cover;
	    background-position: center;
	}
	.slider h3 {
	    margin: 0;
	    padding: 100px 0;
	    height:250px;
	}
	.slide-content{
	    width: 100%;
	    height:300px;
	}
	.item1{background-image:url('http://han3283.cafe24.com/images/apple.jpg');}
	.item2{background-image:url('http://han3283.cafe24.com/images/cherry.jpg');}
	.item3{background-image:url('http://han3283.cafe24.com/images/strawberry.jpg');}
	.item4{background-image:url('http://han3283.cafe24.com/images/grape.jpg');}
	.item5{background-image:url('http://han3283.cafe24.com/images/lemon.jpg');}
	.item6{background-image:url('http://han3283.cafe24.com/images/grapefruit.jpg');}
</style>    
	    
</head>
 
<body>
    <div class="slide-wrap">
        <div class="slide-content">
            <ul id="slider" class="slider">
                <li class="item1">
                    <h3>사과</h3>
                </li>
                <li class="item2">
                    <h3>체리</h3>
                </li>
                <li class="item3">
                    <h3>딸기</h3>
                </li>
                <li class="item4">
                    <h3>포도</h3>
                </li>
                <li class="item5">
                    <h3>레몬</h3>
                </li>
                <li class="item6">
                    <h3>자몽</h3>
                </li>
            </ul>
        </div>
    </div>
	    <script>
	    $(document).ready(function() {
	        $("#slider").lightSlider({
	            mode:'slide',    // 이미지가 표시되는 형식 (fade / slide)
	            loop:true,       // 무한반복 할 것인지
	            auto:true,       // 자동 슬라이드
	            speed:1500,      // 슬라이드 되는 속도
	            pause:3000       // 이미지가 머무는 시간
	        });
	    });
    </script>
   
    
</body>
</html>