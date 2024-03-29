<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
/* body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box} */

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

form{
	padding-top:50px;
	padding-bottom:100px;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
/*  .container {
  padding: 16px;
} */

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}

.fileUpload{
	position:relative;
	overflow:hidden;
	margin:10px;
	background-color:#BDBDBD;
	height:200px;
	width:200px;
	text-align:center;
}
.fileUpload input.upload{
	position:absolute;
	top:0;
	right:0;
	margin:0;
	padding:0;
	font-size:20px;
	cursor:pointer;
	opacity:0;
	filter:alpha(opacity=0);
	height:100%;
	text-align:center;
}

.custom-span{
	font-family:Arial;
	font-weight:bold;
	font-size:100px;
	color:#FE57A1;
}
#uploadFile{
	border:none;
	margin-left:10px;
	width:200px;
}

.custom-para{
	font-family:arial;
	font-weight:bold;
	font-size:20px;
	color:#585858;
}
.thumbnail_img{
	position:relative;
	overflow:hidden;
	margin:10px;
	background-color:#BDBDBD;
	height:200px;
	width:200px;
	text-align:center;
}

</style>
<body>
<%@include file = "../common/header.jsp" %>
<form action="<%=request.getContextPath()%>/matchingApply.ma" method="post" encType = "multipart/form-data">
  <div class="container">
    <h1>매칭글 등록</h1>
    <p>견주님들이 보고 신청하기 때문에 상세히 적어주세요</p>
    <hr>

    <label for="price"><b>가격</b></label>
    <input type="text" placeholder="가격" name="price" required>

    <label for="psw"><b>하고싶은말</b></label>
    <input type="text" placeholder="상세히 적어주세요" name="wanttosay" required>

    <label for="psw-repeat"><b>주의사항</b></label>
    <input type="text" placeholder="펫 케어 도중 문제가 될 사항을 입력하세요" name="specialnote" required>

    <input type="hidden" value="<%=loginUser.getUserId() %>" name=sitterId>
    <p>나머지 정보는 지원서 작성에 쓰인대로 작성됩니다.<a href="#" style="color:dodgerblue">  내 지원서 보러가기</a>.</p>
    <div class=img_container>
    	<img class=thumbnail_img>
    	<br>
    	<input id="uploadBtn" type="file" class="upload" onchange=LoadImg(this,1) name="housematImg">    	
		</div>
		<br>
    <div class="clearfix">
      <button type="button" class="cancelbtn">취소하기</button>
      <button type="submit" class="signupbtn">등록하기</button>
    </div>
  </div>
</form>
<%@include file = "../common/footer.jsp" %>
<script>
	function LoadImg(value,num){
		if(value.files[0]!=undefined){
			var reader = new FileReader();
			
			reader.onload = function(e){
				$(".thumbnail_img").attr("src",e.target.result);
			}

		reader.readAsDataURL(value.files[0]);
	}
}
</script>
<script>
	$(function(){
		$(".cancelbtn").click(function(){
			location.href="<%=request.getContextPath()%>/index.jsp";
		});
	});
</script>
</body>
</html>