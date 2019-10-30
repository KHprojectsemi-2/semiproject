<%@page import="petSitter.model.vo.PetSitter"%>
<%@page import="matching.model.vo.Matching"%>
<%@page import="diary.model.vo.Diary"%>
<%@page import="user.model.vo.Pet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Pet pet = new Pet();   
	PetSitter ps = new PetSitter();
	Matching mc = new Matching();
	/* int pNum =(int)(request.getAttribute("num")); */
	Diary d = (Diary)request.getAttribute("matchNo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form{
		  margin: 50px 50px 50px 500px;
	}
	
</style>
</head>
<!-- 펫시터가 돌봄일지 작성하는 페이지 -->

<body>
<%@include file = "../common/header.jsp" %>
	<form <%-- action="<%=request.getContextPath()%>/insertDiary.id" --%> method="post" encType="multipart/form-data">
	<input type="hidden" name="userId" value="<%=loginUser.getUserId()%>"> 
	<input type="hidden" name="matching" value="<%=mc.getMatch_No()%>"> 
	<h1>돌봄일지 작성</h1>
	
<%-- 	<%if(loginUser.equals(ps.getUserId()) && ps.getChkResume().equals('Y')){ %>
		console.log(<%=loginUser.getUserId()%>);
	<%} %> --%>
	
	
	<hr>
	<h4 class="text-info">방문 날짜&nbsp;&nbsp;&nbsp;&nbsp;<input type="date" name="applyDate"></h4>
	<h4 class="text-info">반려 동물 정보&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="text" >
	</h4>
<%--  	<%=pet.getPetName() %>
	<%=pet.getPetWeight() %>  --%>
	<hr>
	<h4 class="text-info">돌봄 리스트</h4>
  	<input type="checkbox" name="list1" id="isToilet" value="y">
	<label>배변 확인</label><br>
	<input type="checkbox" name="list2" id="isWalk" value="y">
	<label>산책 확인</label><br>
	<input type="checkbox" name="list3" id="isMedic" value="y">
	<label>투약 확인</label><br>
	<input type="checkbox" name="list4" id="chkNeeds" value="y">
	<label>요청사항 확인</label><br> 
	<hr>
	
	<h4 class="text-info">돌봄 후기</h4>
	<textarea cols="90" rows="10" style="resize:none" name="review" id="review"></textarea><br>
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
		
		

	</script>
	
    <br><br>
<!--     <input type="submit" class="btn btn-info btn-md" id="submit" value="일지 등록"> -->
	<input type="button" onclick="fn();" class="btn btn-info btn-md" id="fnSubmit" value="일지 등록">
	</div>
	
	<script>
		function fn(){
			location.href='<%=request.getContextPath()%>/views/diary/diaryList.jsp';
		}	
		
	</script>
    
    
    
</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>



</body>
</html>