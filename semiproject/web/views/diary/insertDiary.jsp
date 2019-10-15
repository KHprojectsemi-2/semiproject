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
	
</style>
</head>
<!-- 돌봄일지 작성 -->
<body>
<%@include file = "../common/header.jsp" %>
<form>
	<h1>돌봄일지</h1>
	<hr>
	<h4>방문 날짜</h4>
	<h4>반려 동물 정보</h4>
	<hr>
	<h4>돌봄 리스트</h4>
	<input type="checkbox" id="">
	<label>배변 확인</label><br>
	<input type="checkbox" id="">
	<label>산책 확인</label><br>
	<input type="checkbox" id="">
	<label>투약 확인</label><br>
	<input type="checkbox" id="">
	<label>요청사항 확인</label><br>
	<hr>
	<h4>돌봄 후기</h4>
	<textarea cols="45" rows="3" style="resize:none" name="textarea">
    </textarea><br>
    <hr>
    <h4>돌봄 사진</h4>
    <button id="picture">사진 등록</button>
    <br><br>
    <input type="submit" id="submit" value="일지 등록">
</form>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>

</body>
</html>