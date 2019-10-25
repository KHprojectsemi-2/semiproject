<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form{
		  margin: 50px 50px 50px 500px;
	}
	/* #submit{
		margin : 50px 50px 50px 300px;
	} */
	
/* 	#contentImgArea{
		border:1px solid red;
	} */
	
</style>
</head>
<!-- 펫시터가 돌봄일지 작성하는 페이지 -->

<body>
<%@include file = "../common/header.jsp" %>
	<form action="<%=request.getContextPath()%>/insertDiary.id" method="post">
	<h1>돌봄일지</h1>
	<hr>
	<h4 class="text-info">방문 날짜</h4>
	<h4 class="text-info">반려 동물 정보</h4>
	<hr>
	<h4 class="text-info">돌봄 리스트</h4>
 	<input type="checkbox" name="list1" id="isToilet" value="배변확인">
	<label>배변 확인</label><br>
	<input type="checkbox" name="list2" id="isWalk" value="산책확인">
	<label>산책 확인</label><br>
	<input type="checkbox" name="list3" id="isMedic" value="투약확인">
	<label>투약 확인</label><br>
	<input type="checkbox" name="list4" id="chkNeeds" value="요청사항확인">
	<label>요청사항 확인</label><br> 
	
<!-- 	<label for="isToilet">배변 확인</label>
	<input type="text" id="isToilet" name="isToilet"><br>
	<label for="isWalk">산책 확인</label>
	<input type="text" id="isToilet" name="isWalk"><br>
	<label for="isMedic">투약 확인</label>
	<input type="text" id="isToilet" name="isMedic"><br>
	<label for="chkNeeds">요청사항 확인</label>
	<input type="text" id="isToilet" name="chkNeeds"> -->
	
	<hr>
	
	
	
	
	
	<h4 class="text-info">돌봄 후기</h4>
	<textarea cols="45" rows="6" style="resize:none" name="review" id="review">
    </textarea><br>
    <hr>
    <h4 class="text-info">돌봄 사진</h4>
    <div id="contentImgArea">
    	<img id="contentImg" width="220" height="200">
    </div>
    <!-- <button id="picture">사진 등록</button> -->
	<!-- 파일 업로드 하는 부분(file 타입형 input태그들) -->
	<div id="fileArea">
		<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImg1" onchange="LoadImg(this,1)">
	</div>
	
	<script>
	
/* 	function(){
		$(document).ready(function() {
	        $('#isToilet').val('원하는 값');
	    });
	} */
	
	$(document).ready(function(){
		if($('#isToilet').prop('checked')){
			$('#isToilet').val('test value');
		}
	});
		// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 부분(함수)
		function LoadImg(value, num){
			if(value.files[0] != undefined){	
				// value는 함수를 발동시킨 객체(file타입 input태그)이고
				// value.files[0]은 input태그로 파일을 선택했으면 undefined가 아니고 선택안했으면 undefined다.
				var reader = new FileReader();
				
				reader.onload = function(e){
					switch(num){
					case 1:
						$("#contentImg").attr("src", e.target.result);
						break;
				}
			}
				reader.readAsDataURL(value.files[0]);
			}
		}
		
/* 		function(){
			if($("input:checkbox[id='isToilet']").is(":checked") == true){
				$("input:checkbox[id='isToilet']").value("안 쌈");
			}
		} */
		

	</script>
	
    <br><br>
    <input type="submit" class="btn btn-info btn-md" id="submit" value="일지 등록">
</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>



</body>
</html>