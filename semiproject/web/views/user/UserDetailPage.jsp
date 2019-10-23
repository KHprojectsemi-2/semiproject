<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.*,java.util.*"%>
<%
	User user = (User)request.getAttribute("user");
	ArrayList<Pet> petlist = (ArrayList<Pet>)request.getAttribute("petlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Detail Page</title>
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
	max-width: 800px;
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
#userDetail_form{
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
    background-color: gray;
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
	<%= user %>
	<%@include file="../common/header.jsp"%>

	<form id = "userDetail_form" action="#" method="post">
	<div class="joinForm">
	<table style="margin-right:0px">
		<tr>
		<td>
		<div id="d_join" >
			<label  class="l_join">아이디:</label>
			 <input type="text" name="userId"  value="<%=user.getUserId()%>" readonly> 
		</div>
		</td>
		<td rowspan="4"  style="padding-left:70px;padding-top:30px;">
			<img src="#" width ="200" height="200" >
		</td>
		</tr>
		<tr>
		<td>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">이름: </label>
			<input type="text" name="userName"   value="<%=user.getUserName()%> " readonly>
			<label>남 </label>
			<input type="radio" name ="chkGender" value="M" checked>&nbsp;&nbsp;
			<label>여 </label>
			<input type="radio" name ="chkGender" value="W">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
 			<label class="l_join">생년월일: </label>
			<select name="birth_year"  style="min-height=10px">
				<% for(int i=2019;i>1920;i--) {%>
				<option value="<%=i %>"><%=i %></option>
				<%} %>
			</select>
			<select name="birth_month"  style="min-height=10px">
				<% for(int i=12;i>0;i--) {%>
				<option value="<%=i %>"><%=i %></option>
				<%} %>
			</select>
			<select name="birth_day"  style="min-height=10px">
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
			<input type="email" name="userEmail"  value="<%=user.getUserEmail() %>" readonly>			
		</div>
		</td>
		<td>
		<div id="d_join" >
			 <label class="l_join">펫시터 등급: </label>
			 <input type="text" name="grade"  value="등급입력" readonly> 
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">연락처: </label>
			<input type="text" name="userPhone"  value="<%=user.getUserPhone()%>" readonly>
		</div>
		</td>
		<td>
		<div id="d_join" >
			 <label class="l_join">신고 누적: </label>
			 <input type="text" name="reported"  value="신고누적" readonly> 
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">주소: </label>
			<input type="text" id="postcode" name="postcode" value="<%=user.getUserPostcode() %> ">
		</div>
		</td>
		<td>
		<div id="d_join" >
			 <label class="l_join">회원 상태: </label>
			 <input type="text" name="userStatus"  value="<%=user.getUserStatus() %>" readonly> 
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join"></label>
			<input type="text" id="userAddress" name="userAddress" value="<%=user.getUserAddress() %>" size="40">
		</div>
		</td>
		<td>
		<div id="d_join" >
			 <label class="l_join">마지막 접속일: </label>
			 <input type="text" name="latestDate"  value="<%=user.getLatestDate() %>" readonly> 
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join" >
		</div>
		</td>
		<td>
		<div id="d_join" >
			<button type="button" class="btn btn-info btn-md" id="goBack">돌아가기</button>
			<button type="button" class="btn btn-info btn-md" id="goMatch">매칭현황 보기</button>
			<button type="button" class="btn btn-info btn-md" id="goReport">제재</button>
		</div>
		</td>

		</tr>
	</table>
	</div>
	<%if(!petlist.isEmpty()){ int i=0;%>
	<% for(Pet pet : petlist){ i++;%>
		<div class="petForm" id="petForm<%=i %>">
			<table style="width:100%;">
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">강아지 이름: </label> <input type="text"
								name="petName" style="width: 120px" value="<%=pet.getPetName()%>">
						</div>
					</td>
					<td rowspan="3"><img src="#" width="150" height="150"
						style="margin-top: 20px">
 						<button type="button" class="pet_button minus" style="margin-bottom:100px;margin-left:25px;" onclick="minus()">-</button>
 					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">중성화</label> <input type="checkbox"
								 name="chkNeutral" value="Y" checked disabled>&nbsp;&nbsp;&nbsp;&nbsp;
							<label>남 </label> 
							<input type="radio" name="petGender<%=i %>" value="M" <%if(pet.getPetGender().equals("M")) {%>checked<%} %> disabled>&nbsp;&nbsp; 
							<label>여 </label> 
							<input type="radio"  name="petGender<%=i %>" value="W" <%if(pet.getPetGender().equals("W")) {%>checked<%} %> disabled>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">무게: </label>			
							<select name="petSize"  style="min-height:30px;min-width:100px;"  disabled>
									<option ><%=pet.getPetWeight() %></option>
							</select>	
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div" style="width: 200px">
							<label class="petInfo_lab">종: </label> <input type="text"
								name="petKind" style="width: 100px;" value="<%=pet.getPetKind()%>" readonly>
						</div>
					</td>
					<td>
						<label>나이: </label> <input type="text" name="petAge" style="width: 120px;"value="<%=pet.getPetAge()%>" readonly>
						<button type="button" class="pet_button plus" onclick="plus()">+</button>	
					</td>
				</tr>
			</table>
			<br>
		</div>
		<br>	
	<%} %>
	<%} %>
	</form>
	<script>
		$("#goBack").click(function(){
			location.href =  '<%=request.getContextPath()%>/userSearch.li';
		});
		$("#goMatch").click(function(){
			// 해당 회원의 매칭 페이지로 갈 것
		});
		$("#goReport").click(function(){
			
		});
	</script>
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