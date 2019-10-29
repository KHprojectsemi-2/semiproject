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
		<h4 class="text-info">반려 동물 정보 - 크림이</h4>
		<hr>
		<h4 class="text-info">돌봄 리스트</h4>
		<img src="../../img/check.jpg" alt="사진1" width="45px" height="45px"/><label>배변을 정리하였습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="45px" height="45px"/><label>산책을 다녀왔습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="45px" height="45px"/><label>투약을 완료하였습니다</label>&nbsp;&nbsp;<br><hr>
		<img src="../../img/check.jpg" alt="사진1" width="45px" height="45px"/><label>요청사항을 완료하였습니다</label>&nbsp;&nbsp;<br><hr>
		<hr>
		<h4 class="text-info">돌봄 후기</h4>
		<textarea cols="90" rows="10" style="resize:both;" readonly="readonly" name="review" id="review">
첫만남부터 살갑게 반겨준 크림이! 절 보더니 곧 산책 가는 걸 아는지 폴짝폴짝 신나하더라구요. 패드에 쉬야도 잘 해서 다 갈아두었습니다.

공원에서 처음엔 이쪽저쪽 저를 막 끌고 다녔는데 차분히 기다려주니까 진정되었습니다. 흙 밟고 냄새 맡는 걸 좋아하는 것 같아서 충분히 밟게 해주었고 풀숲으론 최대한 가지 않았어요. 비가 조금씩 와서, 15분 정도만 산책을 했고 산책 중에 대변 한 번, 소변 한 번 보았어요.

집에 와서 발을 닦아주는데 너무 얌전하게 있어서 간식도 챙겨 주었습니다. 말씀해주신 대로 사료도 정량 급여했구요. 그리고 새로 사주신 장난감으로 노즈워크 놀이를 했어요 ^^ 이리저리 간식도 잘 찾고 엄청 재밌어하는 모습이 정말 귀여웠어요~

사용한 수건은 신발장 앞에 두었습니다.
크림이는 사람을 좋아하고 활발해서 저도 힐링되는 기분입니다. 다음 만남도 무척 기대되어요~^^
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
			<td colspan="4">
				<div id="titleImgArea" align="center">
				<img src="../../img/dog5.jpg" alt="사진2" width="250px" height="200px"/>
				</div>
			</td>
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