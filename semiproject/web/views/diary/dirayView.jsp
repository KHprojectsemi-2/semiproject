<%@page import="diary.model.vo.JoinAttach"%>
<%@page import="diary.model.vo.Diary"%>
<%@page import="user.model.vo.Pet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import=java.util.*"%>
    
    <%
    	Pet pet = new Pet();
    	Diary diary = new Diary();
    	
		ArrayList<JoinAttach> fileList = (ArrayList<JoinAttach>)request.getAttribute("fileList"); 
    	
    	JoinAttach titleImg = fileList.get(0);	// 대표사진(fileLevel=0)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../css/style.css">
<style>
	#outer{
	 	margin: 50px 50px 50px 500px;
	}
</style>
</head>
<!-- 견주가 돌봄일지 확인하는 페이지(grade만 추가) -->
<body>
<%@include file = "../common/header.jsp" %>
<div id="outer">
<input type="hidden" name="id" value="<%=loginUser.getUserId()%>"> 
	<h1>돌봄일지</h1>
	<hr>
	<%=diary %>
	<h4 class="text-info">방문 날짜</h4>
	<h4 class="text-info">반려 동물 정보</h4>
	<%=pet.getPetName() %>
	<%=pet.getPetWeight() %> 
	<hr>
	<h4 class="text-info">돌봄 리스트</h4>
	<label>배변 확인</label>&nbsp;&nbsp;<%=diary.getIsToilet() %><br>
	<label>산책 확인</label>&nbsp;&nbsp;<%=diary.getIsWalk() %><br>
	<label>투약 확인</label>&nbsp;&nbsp;<%=diary.getIsMedic() %><br>
	<label>요청사항 확인</label>&nbsp;&nbsp;<%=diary.getChkNeeds() %><br>
	<hr>
	<h4 class="text-info">돌봄 후기</h4>
	<textarea cols="45" rows="6" style="resize:none" name="review" id="review"><%=diary.getDiaryContent() %></textarea><br>
    <hr>
	
	<h4 class="text-info">돌봄 사진</h4>
	<table>
		<tr>
		<td>대표사진</td>
		<td colspan="4">
			<div id="titleImgArea" align="center">
				<img id="titleImg" src="<%=request.getContextPath() %>/thumbnail_uploadFiles/<%=titleImg.getChangeName() %>">
			</div>
		</td>
	</tr>
	</table>
	<hr>
	
	<h4 class="text-info">점수 주기</h4>
<!-- 	 <div class="box">
		<a class="ion-android-star b1"></a>
		<a class="ion-android-star b2"></a>
		<a class="ion-android-star b3"></a>
		<a class="ion-android-star b4"></a>
		<a class="ion-android-star b5"></a>
	</div>  -->

	<!-- <input type="range" min="0" max="5" step="0.1" > -->
	
	<input type="number" name="quantity" min="0" max="5" step="0.5"><br><br>
	<!-- <input type="submit" class="btn btn-info btn-md" id="submit" value="일지 확인"> -->
	
	<button type="submit" class="btn btn-info btn-md" id="fnSubmit">제출하기</button>
	
	<script>
	$(function({
		$("#fnSubmit").click(function(){
			location.href='<%=request.getContextPath()%>/views/diary/diaryList.jsp';		
	});
					
	</script>
	
</div>	
	
	
<br>
<%@include file = "../common/footer.jsp" %>
</body>
</html>