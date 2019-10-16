<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.vo.User"%>

<%
	User u = (User)request.getAttribute("user");

	String userId = u.getUserId();
	String userPwd = u.getUserPwd();
	String userName = u.getUserName();
	int phone = u.getUserPhone();
	String email = u.getUserEmail();
	String address = u.getUserAddress();
%>
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
					<td><input type="text" maxlength="13" name="userId" value="<%=userId %>" readonly></td>
					<td style="width:200px"></td>
				</tr>
				<tr>
					<td>* 이름</td>
					<td><input type="text" maxlength="5" name="userName" value="<%=userName %>"></td>
				</tr>
				<tr>
					<td>* 비밀번호</td>
					<td><input type="password" maxlength="13" name="userPwd" value="<%=userPwd %>" readonly></td>
				</tr>
<%-- 				<tr>
					<td>* 비밀번호 확인</td>
					<td><input type="password" maxlength="13" name="userPwd2" ></td>
				</tr> --%>
				
				<tr>
					<td>연락처</td>
					<td>
						<input type="tel" maxlength="11" name="phone" placeholder="(-없이)01012345678" value="<%=phone %>">
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" value="<%=email %>"></td>
				
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value="<%=address %>"></td>
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
						<td></td>
					</tr>
					<tr>
						<td>종</td>
					</tr>
					<tr>
						<td>성별</td>
					</tr>
					<tr>
						<td>나이</td>
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
			<div id="goMain();">메인으로</div>
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
				$("#deleteForm").submit();
			}
		</script>
</body>
</html>