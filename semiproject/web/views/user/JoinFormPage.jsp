<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #17a2b8;
	height: 100vh;
}

input {
	height: calc(1.5em + .75rem + 2px);
	padding: .375rem .75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: .25rem;
	transition: border-color .15s ease-in-out, box-shadow .15s ease-in-out;
}

.joinForm {
	margin: auto;
	margin-top: 120px;
	max-width: 700px;
	height: 500px;
	border: 1px solid #9C9C9C;
}
.petForm{
	margin:auto;
	margin-top:20px;
	max-width:700px;
	height:500 px;
	border: 1px solid #9C9C9C;

}
#userJoin_Form{
	height: auto;

}
#d_join {
	display:inline-block;
	width: 420px;
	margin-top: 10px;
	margin-left: 10px;
}

.l_join {
	width: 100px;
	text-align: right;
}
img:hover{
	cursor:pointer;
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	
	<form id = "userJoin_Form">
	<div class="joinForm">
	<table>
		<tr>
		<td>
		<div id="d_join" >
			<label  class="l_join">아이디:</label> <input type="text"
				id="userId" required> <input type="button"
				class="btn btn-info btn-md" value="중복 확인">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">비밀번호: </label> <input
				type="password"  id="userPwd" required>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">비밀번호 확인: </label> <input
				type="password"  id="userPwdCheck" required>
		</div>
		</td>
		<td rowspan="4">
			<img src="#" width ="200" height="200" >
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">이름: </label>
			<input type="text" id="userName" required>
			<label>남 </label>
			<input type="radio" id="" name ="chkGender" value="남" checked>
			<label>여 </label>
			<input type="radio" id="" name ="chkGender" value="여">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">생년월일: </label>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">이메일: </label>
			<input type="email" id="userEmail" required>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">연락처: </label>
			<input type="number" id="userPhone" required>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">주소: </label>
			<input type="text" id="userAddress" required>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join"></label>
			<input type="text" id="userAddress2" required>
		</div>

	</table>
	</div>
	<div class="petForm">
		제작중
	</div>
	</form>
	


	<br>
	<br>
	<br>


	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>

	<%@include file="../common/footer.jsp"%>
</body>
</html>