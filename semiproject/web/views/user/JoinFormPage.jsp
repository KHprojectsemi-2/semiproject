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

	<form id = "userJoin_Form" action="<%=request.getContextPath()%>/join.me" method="post">
	<div class="joinForm">
	<table style="margin-right:0px">
		<tr>
		<td>
		<div id="d_join" >
			<label  class="l_join">아이디:</label>
			 <input type="text" name="userId" required  placeholder="6~12자리 영문,숫자"> 
			 <input type="button" class="btn btn-info btn-md" value="중복 확인">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">비밀번호: </label> <input
				type="password"  name="userPwd" required  placeholder="6~12자리 입력">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">비밀번호 확인: </label> <input
				type="password"  id="userPwdCheck" required  placeholder="비밀번호 확인">
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
			<input type="text" name="userName" required  placeholder="1~8자리 입력">
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
			<input type="email" name="userEmail" required  placeholder="example@co.kr">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">연락처: </label>
			<input type="text" name="userPhone" required placeholder="(-)없이 숫자만 입력">
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">주소: </label>
			<input type="text" name="userAddress" required>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join"></label>
			<input type="text" name="userAddress2" required placeholder="상세 주소 입력">
		</div>
		</td>
		<td>
			<input type="submit" class="btn btn-info btn-md" value="가입하기" style="width:100%">
		</td>
		</tr>
	</table>
	</div>
		<div class="petForm" id="petForm" style="display:none">
			<table style="width:100%;">
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">강아지 이름: </label> <input type="text"
								name="petName" style="width: 120px">
						</div>
					</td>
					<td rowspan="3"><img src="#" width="150" height="150"
						style="margin-top: 20px">
 						<button type="button" class="pet_button minus" style="margin-bottom:100px;margin-left:25px;background-color:red;" onclick="minus()">-</button>
 					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">중성화</label> <input type="checkbox"
								 name="chkNeutral" value="중성화" checked>&nbsp;&nbsp;&nbsp;&nbsp;
							<label>남 </label> <input type="radio" name="petGender"
								value="M" checked>&nbsp;&nbsp; <label>여 </label> <input
								type="radio"  name="petGender" value="W">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">무게: </label> <input type="number"
								name="petSize" style="width: 120px;"><label>kg</label>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div" style="width: 200px">
							<label class="petInfo_lab">종: </label> <input type="text"
								name="petKind" style="width: 100px;">
						</div>
					</td>
					<td>
						<label>나이: </label> <input type="text" name="petAge" style="width: 120px;">
						<button type="button" class="pet_button plus" onclick="plus()">+</button>
						
					</td>
				</tr>
			</table>
			<br>
		</div>
		<br>
	</form>
	<hr style="width:50%">
		<p align="center">
		</p>	
	<script>
	var count=0;
	var intro = $("<h2>").text("당신의 펫을 추가해보세요").css({"text-align":"center"});
	var plusBtn = $("<button>").text("+").attr({"class":"pet_button plus","type":"button","onclick":"plus()"});
	var minusBtn = $("<button>").text("-").attr({"class":"pet_button minus","type":"button","onclick":"minus()"})
	.css({"background-color":"orangered","margin-bottom":"100px","margin-left":"25px"});

	var petform = document.createElement("div");
	petform.setAttribute("class", "petForm")
	petform.setAttribute("id","petform2");
	

	
	intro.append(plusBtn);	
	$("#userJoin_Form").append(intro);	// 펫을 추가해주세요 문구 붙이기
	
	function plus(){
		if(count<2){		
			count++;
			petform.innerHTML = document.getElementById("petForm").innerHTML;
			if(count==1){
				$(".petForm input").attr("required",true);			// 펫 입력란을 필수로 만들기
				$("#userJoin_Form").children("h2:last").remove();	// 펫추가 메세지 지우기
				$("#petForm").css("display","block");		
			}else{
				$(".plus:first").css("display","none");
				$("#userJoin_Form").append(petform);
				$("#petform2 input").attr("required",true);
				for(var i=0;i<7;i++){	// servlet으로 넘길 내용들 이름 설정
					$("#petform2 input").eq(i).attr("name",$("#petform2 input").eq(i).prop("name")+"2");
				}
				$("#petform2 img").attr("name",$("#petform2 img").prop("name")+"2");		// 이미지는 input속성 아니기 때문에 따로 이름 지정
				$(".minus:last").css("display","none");
			}

		}else{
			alert("펫은 2마리까지만 등록 가능합니다.");
		}
	}
	function minus(){
		count--;
		console.log(count);
		if(count==0){
			intro.append(plusBtn);
			$("#userJoin_Form").append(intro);
			$("#userJoin_Form").children("div:last").css("display","none");
			$(".petForm input").attr("required",false);		
		}else{
			$("#userJoin_Form").children("div:last").remove();
			$(".plus:first").show();
		}
	}

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