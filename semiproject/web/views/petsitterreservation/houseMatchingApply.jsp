<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.Pet, java.util.ArrayList"%>
<%
	ArrayList<Pet> pList = (ArrayList<Pet>)request.getAttribute("pList");
%>    
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
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

hr.new5 {
  border: 10px solid green;
  border-radius: 5px;
}


</style>
<body>
<%@include file = "../common/header.jsp" %>
<form id="insertMatching" action="<%=request.getContextPath()%>/housematchingApply.ma" method="post" encType = "multipart/form-data">
  <div class="container">
    <h1>매칭글 등록</h1>
    <p>펫시터님들이 보고 신청하기 때문에 상세히 적어주세요</p>
    <hr>

    <label for="price"><b>가격</b></label>
    <input type="text" name="price" class="matchingPrice" placeholder="가격" required>

    <label for="psw"><b>하고 싶은말</b></label>
    <input type="text" placeholder="상세히 적어주세요" name="wanttosay" required>

    <label for="psw-repeat"><b>요청사항</b></label>
    <input type="text" placeholder="펫시터님께 특별히 부탁드릴 요청사항을 입력하세요." name="specialnote" required>

    <input type="hidden" value="<%=loginUser.getUserId() %>" name=userId>
	<input type="text" style="width:200px" id="datepicker" placeholder='날짜선택' class="Rdate" name="caredate" required>
	<br>

    <div class=img_container>
    	<img class=thumbnail_img>
    	<br>
    	<input id="uploadBtn" type="file" class="upload" onchange=LoadImg(this,1) name="housematImg">    
	</div>
	
	<hr class="new5">
	<br>
	<b>맡기실 펫을 선택하세요.</b>
	<br>
	<%if(!pList.isEmpty()) {%>
		<%if(pList.size()>1) {%>
			<input type="checkbox" id="petselect1" name="petselector">
			<label><%= pList.get(0).getPetName()%></label>
			<input name="petno1" class="hiddenpetno1" type="hidden" value="0">
			<input type="text" id="firPetage" value="<%=pList.get(0).getPetAge()%>" disabled>
			<input type="text" id="firPetWeight" value="<%=pList.get(0).getPetWeight()%>" disabled>
			<input type="checkbox" id="petselect2" name="petselector">
			<label><%= pList.get(1).getPetName()%></label>
			<input name="petno2" class="hiddenpetno2" type="hidden" value="0">
			<input type="text" id="secPetage" value="<%=pList.get(1).getPetAge()%>" disabled>
			<input type="text" id="secPetWeight" value="<%=pList.get(1).getPetWeight()%>" disabled>
		<%}else{ %>
			<input type="checkbox" id="petselect1" name="petselector">
			<label><%= pList.get(0).getPetName()%></label>
			<input name="petno1" class="hiddenpetno1" type="hidden" value="0">
			<input type="text" value="<%=pList.get(0).getPetAge()%>" disabled>
			<input type="text" value="<%=pList.get(0).getPetWeight()%>" disabled>
			<input type="checkbox" id="petselect2" name="petselector">
			<label>펫을 등록하세요.</label>
			<input name="petno2" class="hiddenpetno2" type="hidden" value="0">
		<%} %>
	<%}else{ %>
		<label>펫을 등록하세요.</label>
		<input name="petno2" class="hiddenpetno2" type="hidden" value="0">
	<%} %>
	<input type="hidden" class="countpet" value="0">
	<br><br><br>
	<label></label>
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


		
	

</body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$("#datepicker").datepicker({
	minDate:0,
	dateFormat :'yy-mm-dd',
	prevText:'이전 달',
	nextText:'다음 달',
	monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	dayNames:['일','월','화','수','목','금','토'],
	dayNamesShort:['일','월','화','수','목','금','토'],
	dayNamesMin:['일','월','화','수','목','금','토'],
	showMonthAfterYear:true,
	changeMonth:true,
	changeYear:true,
	yearSuffix:'년',
	beforeShowDay:disableSomeDay
	});
	
	var disabledDays = [];
	
	function disableSomeDay(date){
		var month = date.getMonth();
		var dates = date.getDate();
		var year = date.getFullYear();
		
		for(i=0; i<disabledDays.length; i++){
			if($.inArray(year+'-'+(month+1)+'-'+dates,disabledDays)!= -1){
				return [false];
			}
		}
		return [true];
	}
</script>
<script>
	$(function(){
    $("#petselect1").change(function(){
        if($("#petselect1").is(":checked")){
            $(".hiddenpetno1").val("<%=pList.get(0).getPetNo()%>");
        }else{
        	$(".hiddenpetno1").val("0");
        	}
    	});
    $("#petselect2").change(function(){
        if($("#petselect2").is(":checked")){
            $(".hiddenpetno2").val("<%=pList.get(0).getPetNo()%>");
        }else{
        	$(".hiddenpetno2").val("0");
        	}
    	});
	});
</script>
<script>
	$(function(){
		$(".cancelbtn").click(function(){
			location.href="<%=request.getContextPath()%>/index.jsp";
		});
	});
</script>

</html>