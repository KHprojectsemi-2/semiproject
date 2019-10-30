<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#outer{
	 	margin: 50px 50px 50px 500px;
	}
</style>
</head>
<body>
<%@include file = "../common/header.jsp" %>
	<div id="outer">
		<h1>돌봄일지</h1>
		<hr>
		<h4 class="text-info">방문 날짜 - 2019/10/31</h4>
		<h4 class="text-info">펫 번호 - 7</h4>
		<hr>
		<h4 class="text-info">돌봄 리스트</h4>
		<img src="../../img/check.jpg" alt="사진1" width="35px" height="35px"/><label>배변을 정리하였습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="35px" height="35px"/><label>산책을 다녀왔습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="35px" height="35px"/><label>투약을 완료하였습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="35px" height="35px"/><label>요청사항을 완료하였습니다</label>&nbsp;&nbsp;<br><hr>
		<hr>
		<h4 class="text-info">돌봄 후기</h4>
		<textarea cols="90" rows="2" style="resize:both;" readonly="readonly" name="review" id="review">
쪼꼬미 잘 돌봐드렸습니다.
		</textarea><br>
	    <hr>
		
		<h4 class="text-info">돌봄 사진</h4>
		<table>
			<tr>
			<td colspan="4">
				<div id="titleImgArea" align="center">
				<img src="../../img/dog1.jpg" alt="사진1" width="250px" height="200px"/>
				</div>
			</td>
<!-- 			<td colspan="4">
				<div id="titleImgArea" align="center">
				<img src="../../img/dog5.jpg" alt="사진2" width="250px" height="200px"/>
				</div>
			</td> -->
		</tr>
		</table>
		<hr>
		
		<h4 class="text-info">점수 주기</h4>
		
		<input type="number" name="quantity" min="0" max="5" step="0.5"><br><br>
		<input type="button" onclick="fn();" class="btn btn-info btn-md" id="fnSubmit" value="일지 확인">
	</div>
	
	<script>
		function fn(){
			location.href='<%=request.getContextPath()%>/views/diary/diaryList.jsp';
		}	
		
	</script>
	
	
<%@include file = "../common/footer.jsp" %>
</body>
</html>