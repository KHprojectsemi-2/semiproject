<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int petcount = 1;
%>
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
.pet_button{
	color: #fff;
    background-color: #17a2b8;
    border-color: #17a2b8;
    display: inline-block;
    font-weight: 400;
    color: #212529;
    text-align: center;
    vertical-align: middle;
	border: 1px solid transparent;
    padding: .375rem .75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: .25rem;
    transition: color .15s;
    align:right;
    margin-left: 20px;
}
.pet_button:hover{
	cursor: pointer;
}
.l_join {
	width: 100px;
	text-align: right;
}
.petInfo_div{
	display:inline-block;
	width: 350px;
	margin-top: 10px;
	margin-left: 80px;
}
.petInfo_lab{
	width: 80px;
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
	<table style="margin-right:0px">
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
			<input type="radio" id="" name ="chkGender" value="남" checked>&nbsp;&nbsp;
			<label>여 </label>
			<input type="radio" id="" name ="chkGender" value="여">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">생년월일: </label>
			<select name="year" id ="birth_year" style="min-height=10px">
				<% for(int i=2019;i>1920;i--) {%>
				<option value="<%=i %>"><%=i %></option>
				<%} %>
			</select>
			<select name="month" id ="birth_month" style="min-height=10px">
				<% for(int i=12;i>0;i--) {%>
				<option value="<%=i %>"><%=i %></option>
				<%} %>
			</select>
			<select name="day" id ="birth_day" style="min-height=10px">
				<% for(int i=31;i>0;i--) {%>
				<option value="<%=i %>"><%=i %></option>
				<%} %>
			</select>
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
		</td>
		</tr>
	</table>
	</div>
		<div class="petForm">
			<table style="width:100%;">
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">강아지 이름: </label> <input type="text"
								id="petName" style="width: 120px;">
						</div>
					</td>
					<td rowspan="3"><img src="#" width="150" height="150"
						style="margin-top: 20px">
						<button class="pet_button" style="margin-bottom:100px;margin-left:25px;background-color:red;">-</button>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">중성화</label> <input type="checkbox"
								id="" name="chkNeutral" value="중성화" checked>&nbsp;&nbsp;&nbsp;&nbsp;
							<label>남 </label> <input type="radio" id="" name="chkGender"
								value="남" checked>&nbsp;&nbsp; <label>여 </label> <input
								type="radio" id="" name="chkGender" value="여">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">무게: </label> <input type="number"
								id="petSize" style="width: 120px;"><label>kg</label>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div" style="width: 200px">
							<label class="petInfo_lab">종: </label> <input type="text"
								id="petKind" style="width: 100px;">
						</div>
					</td>
					<td>
						<label>나이: </label> <input type="text" id="petKind" style="width: 120px;">
						<button class="pet_button">+</button>
					</td>
				</tr>
			</table>
			<br>
		</div>
		<hr style="width:50%">
		<p align="center">
			<input type="submit" class="btn btn-info btn-md" value="가입하기" style="width:150px;">
		</p>	
		<br>
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