<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
		<%@ include file="../common/header.jsp"  %>
	<div class="outer">
	<!-- memberJoinForm.jsp에 있는 table을 복사해서 쓰자 -->
	<form id="updateForm" action="<%=request.getContextPath() %>/update.me" method="post">
		<table>
				<tr>
					<td width="200px">* 아이디</td>
					<td><input type="text" maxlength="13" name="userId"  readonly></td>
					<td style="width:200px"></td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" maxlength="5" name="userName"></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" maxlength="13" name="userPwd" readonly></td>
				</tr>
<%-- 				<tr>
					<td>* 비밀번호 확인</td>
					<td><input type="password" maxlength="13" name="userPwd2" ></td>
				</tr> --%>
				
				<tr>
					<td>연락처</td>
					<td>
						<input type="tel" maxlength="11" name="phone" placeholder="(-없이)01012345678" >
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" "></td>
				
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" ></td>
				</tr>
				<tr>
					<td>펫시터 평점</td>
				</tr>
			</table>
			<form class="myPet">
				<legend>마이 펫</legend>
				<table>
					<tr>
						<td>반려동물 이름</td>
						<td><input type="text" maxlength="10" name="petName" value="" readonly></td>
					</tr>
					<tr>
						<td>종</td>
						<td><input type="text" maxlength="10" name="petKind" value="" readonly></td>
					</tr>
					<tr>
						<td>성별</td>
						<td><input type="select" readonly></td>
					</tr>
					<tr>
						<td>나이</td>
						<td><input type="text"></td>
					</tr>
					<tr>
						<td>무게</td>
					</tr>
				</table>
				<div class="btn" align="right">
					<div id="deletePetInfo" onlick="deletePetInfo();">펫정보 지우기</div>
					<div id="plusPetInfo" onclick="plusPetInfo();">펫 추가하기</div>
				</div>
			</form>
		<div class="btn" align="center">
			<div id="goMain();">이전으로</div>
			<div id="updateBtn" onclick="updateMember();">수정하기</div>
			<div id="deleteBtn" onclick="deleteBmember();">탈퇴하기</div>
		</div>
		<script>
			function goMain(){
				location.href="/semiproject/index.jsp";
			}
			
			//정보 수정하기
			function updateMember(){
				$("#updateForm").submit();
				
			}
			//회원 탈퇴
			function deleteMember(){
				var bool = confirm("정말 탈퇴 하시겠습니까?")
				
				if(bool){
					$("#updateForm").attr("action",<%=request.getContextPath()%>/delete.me);
					$("#updateForm").submit();
				}
			}
		</script>
</body>
</html>