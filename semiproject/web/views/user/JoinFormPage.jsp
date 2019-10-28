<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String kakao_email = request.getParameter("kakao_email");
	String kakao_name = request.getParameter("kakao_name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leopet || Login</title>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 우편번호 관련 -->

<!-- 이메일 인증 관련 EmailJs -->

<script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.3.2/email.min.js"></script>
<script type="text/javascript">
   (function(){
      emailjs.init("user_ZRwz4I6lOX6VqMRLja9yl");
   })();
</script>

<!-- ------------------ -->
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
	height: 550px;
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
	<form id = "userJoin_Form" action="<%=request.getContextPath()%>/join.me" method="post" encType="multipart/form-data">
	<div id="fileArea">
				<input type="file" id="thumbnailImg1" multiple="multiple" name="thumbnailImag1" onchange="LoadImg(this,1)">
				<input type="text" name="userImg">
				<input type="file" id="thumbnailImg2" multiple="multiple" name="thumbnailImag2" onchange="LoadImg(this,2)">
				<input type="text" name="petImg">
				<input type="file" id="thumbnailImg3" multiple="multiple" name="thumbnailImag3" onchange="LoadImg(this,3)">
				<input type="text" name="petImg2">
					
	</div>
	<div class="joinForm">
	<table style="margin-right:0px">
		<tr>
		<td>
		<div id="d_join" >
			<label  class="l_join">아이디:</label>
			 <input type="text" name="userId" required  placeholder="6~12자리 영문,숫자"> 
			 <input type="button" id="idCheck" class="btn btn-info btn-md" value="중복 확인">
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
			<div id="userImgArea">
			<img id="userImg"  width ="200" height="200" style="border:1px solid black"> 
			</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join">이름: </label>
			<input type="text" name="userName" required  placeholder="1~8자리 입력"
					 <%if(kakao_name!=null){%>value=<%=kakao_name %><%} %>   >
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
			<input type="email" name="userEmail" required  placeholder="example@co.kr"
			 <%if(kakao_email!=null){%>value=<%=kakao_email %><%} %> >
			<input type="button" id="emailCheck" class="btn btn-info btn-md" value="인증받기">
				
		</div>
		</td>
		</tr>
		<tr>
		<td id="codeInput">

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
			<input type="text" id="postcode" name="postcode" placeholder="우편번호">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<span id="guide" style="color:#999"></span>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_join">
			<label class="l_join"></label>
			<input type="text" id="userAddress" name="userAddress" placeholder="도로명주소" size="40">
		</div>
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소" hidden=true  disabled>
		</td>
		<td>
			<input type="submit" class="btn btn-info btn-md" value="가입하기" style="width:100%">
		</td>
		</tr>
	</table>
	</div>
		<div class="petForm" id="petForm" style="display:none" >
			<table style="width:100%;">
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">강아지 이름: </label> <input type="text"
								name="petName" style="width: 120px" disabled>
						</div>
					</td>
					<td rowspan="3">
					<div id="petImgArea" style="display:contents">
						<img name="petImg" width="150" height="150" style="margin-top: 20px;border:1px solid black">
					</div>
						<button type="button" class="pet_button minus" style="margin-bottom:100px;margin-left:25px;background-color:red;" onclick="minus()">-</button>
 					</td>
 					<td>				
 					
 					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">중성화</label> <input type="checkbox"
								 name="chkNeutral" value="Y" checked disabled>&nbsp;&nbsp;&nbsp;&nbsp;
							<label>남 </label> <input type="radio" name="petGender"
								value="M" checked disabled>&nbsp;&nbsp; <label>여 </label> <input
								type="radio"  name="petGender" value="W" disabled>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div">
							<label class="petInfo_lab">무게: </label>			
							<select name="petSize"  style="min-height=10px" disabled>
									<option value="소형">소형(~5kg)</option>
									<option value="중형">중형(~10kg)</option>
									<option value="대형">대형(10kg~)</option>	
							</select>	
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="petInfo_div" style="width: 200px">
							<label class="petInfo_lab">종: </label> <input type="text"
								name="petKind" style="width: 100px;" disabled>
						</div>
					</td>
					<td>
						<label>나이: </label> <input type="text" name="petAge" style="width: 120px;" disabled>
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
	
	
	$(function(){
		$("#fileArea").hide();
		
		$("#userImgArea").click(function(){
			$("#thumbnailImg1").click();
		});
		$("#petImgArea").click(function(){
			$("#thumbnailImg2").click();
		});
	});
		// 동적으로 만들어진 버튼 클릭위해 따로 씀
		$(document).on("click","#petImgArea2",function(){ 
			$("#thumbnailImg3").click();
		});
	
		// 각각의 영역에 파일을 첨부 했을 경우 미리 보기가 가능하도록 하는 부분
		function LoadImg(value, num) {
			// value는 함수를 발동시킨 객체(file타입 input태그)
			if (value.files[0] != undefined) {
				var reader = new FileReader();
				reader.onload = function(e) {
					switch (num) {
					case 1:
						$("#userImg").attr("src", e.target.result);
						$("input[name=userImg]").val("true");
						break;
					case 2:
						$("img[name=petImg]").attr("src", e.target.result);
						$("input[name=petImg]").val("true");
						break;
					case 3:
						$("img[name=petImg2]").attr("src", e.target.result);
						$("input[name=petImg2]").val("true")
						break;
					}
				}
				reader.readAsDataURL(value.files[0]);
			}
			console.log("userImg"+$("input[name=userImg]").val());
			console.log("petImg"+$("input[name=petImg]").val());
			console.log("petImg"+$("input[name=petImg]").val());

		}
	
		var count = 0; // 펫 추가 카운트
		var sendCode = false; // 인증 번호 발송 확인용
		var emailCode = 0; // 인증 번호

		var intro = $("<h2>").text("당신의 펫을 추가해보세요").css({
			"text-align" : "center"
		});
		var plusBtn = $("<button>").text("+").attr({
			"class" : "pet_button plus",
			"type" : "button",
			"onclick" : "plus()"
		});
		var minusBtn = $("<button>").text("-").attr({
			"class" : "pet_button minus",
			"type" : "button",
			"onclick" : "minus()"
		}).css({
			"background-color" : "orangered",
			"margin-bottom" : "100px",
			"margin-left" : "25px"
		});

		var petform = document.createElement("div");
		petform.setAttribute("class", "petForm")
		petform.setAttribute("id", "petform2");

		intro.append(plusBtn);
		$("#userJoin_Form").append(intro); // 펫을 추가해주세요 문구 붙이기

		function plus() {
			if (count < 2) {
				count++;
				petform.innerHTML = document.getElementById("petForm").innerHTML;
				if (count == 1) {
					$(".petForm input").attr("required", true); // 펫 입력란을 필수로 만들기
					$("#userJoin_Form").children("h2:last").remove(); // 펫추가 메세지 지우기
					$("#petForm").css("display", "block");
					$("#petForm input").attr("disabled", false);
					$("#petForm select").attr("disabled", false);
					
				} else {
					$(".plus:first").css("display", "none");
					$("#userJoin_Form").append(petform);
					$("#petform2 input").attr("required", true);
					$("#petform2 select").attr("name", "petSize2");;
					$("#petform2 #petImgArea").attr("id","petImgArea2");
					for (var i = 0; i < 7; i++) { // servlet으로 넘길 내용들 이름 설정
						$("#petform2 input").eq(i).attr("name",
								$("#petform2 input").eq(i).prop("name") + "2");
					}
					$("#petform2 img").attr("name",
							$("#petform2 img").prop("name") + "2"); // 이미지는 input속성 아니기 때문에 따로 이름 지정
					$("#petform2 img").attr("src","#");
					$(".minus:last").css("display", "none");
				}

			} else {
				alert("펫은 2마리까지만 등록 가능합니다.");
			}
		}
		function minus() {
			count--;
			console.log(count);
			if (count == 0) {
				intro.append(plusBtn);
				$("#userJoin_Form").append(intro);
				$("#userJoin_Form").children("div:last").css("display", "none");
				$(".petForm input").attr("required", false);
			} else {
				$("#userJoin_Form").children("div:last").remove();
				$(".plus:first").show();
			}
		}

		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 도로명 조합형 주소 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}
							// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
							if (fullRoadAddr !== '') {
								fullRoadAddr += extraRoadAddr;
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
							document.getElementById('userAddress').value = fullRoadAddr;
							document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

							document.getElementById('postcode').setAttribute(
									"readonly", "true");
							document.getElementById('userAddress')
									.setAttribute("readonly", "true");
							document.getElementById('sample4_jibunAddress')
									.setAttribute("readonly", "true");

							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								//예상되는 도로명 주소에 조합형 주소를 추가한다.
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';

							} else {
								document.getElementById('guide').innerHTML = '';
							}
						}
					}).open();
		}

		$("#idCheck").click(function() {

			var userId = $("#userJoin_Form input[name='userId']");

			if (!userId || userId.val().length < 6) { // 중복 확인 버튼을 누를 상태가 아니라면..
				alert("아이디는 최소 6자리 이상이어야 합니다.");
				userId.focus();
			} else { // 중복 버튼 기능이 활성화 되야 된다면..
				$.ajax({
						url : "<%=request.getContextPath()%>/idCheck.me",
						type:"post",
						data:{userId:userId.val()},
						success:function(data){
							if(data =="fail"){
								alert("아이디가 중복됩니다.");
								userId.focus();
							}else{
								alert("사용 가능한 아이디입니다.");
								userId.attr("readonly","true"); // 더 이상 바꿀 수 없도록
								isUsable = true; // 사용가능하다는 의미로 flag 값을 변경
							}
						},
						error:function(data){
							console.log("서버 통신 안됨");
						}
					});
				}
			});
			
			// 인증번호 만들기
			function makeRandom(){
				var code="";
				for(var i=0;i<6;i++)
				{
					code += Math.floor(Math.random() * 10)+"";
				}
				return code;
			};
			
			// 이메일 인증번호 전송
			$("#emailCheck").click(function(){
				var userId = $("input[name=userId]").val();
				var userEmail = $("input[name=userEmail]").val();
				var userName = $("input[name=userName]").val();
				emailCode = makeRandom();
		 		var template_params = {
						   "userEmail": userEmail,
						   "reply_to": "reply_to_value",
						   "pettrase": "펫트라슈",
						   "userName": userName,
						   "code":emailCode
						}

						var service_id = "Patrasche";
						var template_id = "template_loLSxR35";
					//	emailjs.send(service_id, template_id, template_params); 
						
						
				alert(userId + "님에게 " +userEmail+"로 인증번호"+ emailCode + "가 발송되었습니다.");
				// alert(userId + "님에게 인증번호가 발송되었습니다."); 
				if(!sendCode)
				{
					var cDiv = $("<div>").attr({"id":"d_join"});
					cDiv.append($("<label>").attr({"class":"l_join"}));
					cDiv.append($("<input>").attr({"type":"text","id":"emailCode","required":true,"placeholder":"인증번호 입력"}));
					cDiv.append($("<label>").attr({"class":"l_join","name":"chkCode"}));
					$("#codeInput").append(cDiv)
					sendCode=true;
				}
			});
			
			// 인증번호 입력. 동적으로 생성한 태그에 이벤트 적용
			$(document).on("focusout","#emailCode",function(){ 
				if(emailCode == ($("#emailCode").val())){
					$("label[name=chkCode]").css({"color":"lightgreen","text-align":"center"}).text("일치!");
					$("#emailCode").attr({"readonly":true});
				}else{
					$("label[name=chkCode]").css({"color":"red","text-align":"center"}).text("불일치!");
				}
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