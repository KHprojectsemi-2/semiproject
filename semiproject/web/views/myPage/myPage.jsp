<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="user.model.vo.User, user.model.vo.Pet, java.sql.Date, java.util.ArrayList"%>

<%

ArrayList<Pet> pal = (ArrayList<Pet>)request.getAttribute("pal");



%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

.updateForm {
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
#userUpdateForm{
	height: auto;

}
#d_confirm {
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
.l_confirm {
	width: 100px;
	text-align: right;
}
.petConfirm_d{
	display:inline-block;
	width: 350px;
	margin-top: 10px;
	margin-left: 80px;
}
.petConfirm_l{
	width: 80px;
	text-align: right;
}
img:hover{
	cursor:pointer;
}
#updateBtn, #deleteBtn{
		background:#17a2b8;
	}
	#updateBtn, #goMain, #deleteBtn{
		display:inline-block;
	}
</style>

<title>Insert title here</title>
</head>
<body>
		<%@ include file="../common/header.jsp"  %>
	
	<form id="userUpdateForm" action="<%=request.getContextPath() %>/update.me" method="post">
		<div class="updateForm">
		<table style="margin-right:0px">
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">아이디:</label>
					<input type="text" name="userId" value="<%=loginUser.getUserId()%>" readonly>
					</div>
					</td>
				</tr>
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">비밀번호:</label>
					<input type="password" maxlength="13" name="userPwd" value="<%=loginUser.getUserPwd() %>" readonly>
					</div>
					</td>
				</tr>
 				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confrim">비밀번호 확인:</label>
					<input type="password" maxlength="13" name="userPwd2" value="<%=loginUser.getUserPwd() %>" readonly >
					</div>
	 				</td>
					<td rowspan="4">
						<img src="#" width="200" height="200">
					</td>
				</tr> 
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">이름:</label>
					<input type="text" name="userName" value="<%=loginUser.getUserName() %>" readonly>
					</div>
					</td>
				</tr>
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">성별:</label>
					<input type="text" name="userGender" value="<%=loginUser.getUserGender() %>" readonly>
					</div>
					</td>
				</tr>
				<tr>
				<td>
				<div id="d_confirm">
					<label class="l_confirm">생년월일:</label>
					<input type="text" name="userBirth" value="<%=loginUser.getUserBirth()%>" readonly>
				</div>
				</td>
				</tr>
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">이메일:</label>
					<input type="email" name="userEmail" value="<%=loginUser.getUserEmail()%>" required>
					</div>
					</td>
				</tr>
				<tr>
					<td>
					<div id="d_confirm">
					<label class="l_confirm">연락처:</label>
					<input type="text" name="userPhone" value="<%=loginUser.getUserPhone()%>" required>
					</div>
					</td>
				</tr>
				
				<tr>
		<td>
		<div id="d_confirm">
			<label class="l_confirm">주소: </label>
			<input type="text" id="postcode" name="postcode" value="<%=loginUser.getUserPostcode() %>" required>
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			<span id="guide" style="color:#999"></span>
		</div>
		</td>
		</tr>
		<tr>
		<td>
		<div id="d_confirm">
			<label class="l_confirm"></label>
			<input type="text" id="userAddress" name="userAddress" value="<%=loginUser.getUserAddress()%>"  size="40">
		</div>
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소" hidden=true  disabled>
		</td>
				
			</table>
			</div>
			<%for(int i =0; i<pal.size();i++){ %>
			<div class="petForm" id="petForm">
				<table style="width:100%;">
					<tr>
						<td>
							<div class="petConfirm_d">
								<label class="petConfirm_l">강아지 이름: </label>
								<input type="text" name="petName" style="width: 120px;" value="<%=pal.get(i).getPetName() %>" readonly>
							</div>
						</td>
						<td rowspan="3"><img src="#" width="150" height="150" style="margin-top:20px">
						<button type="button"  id="pet_minus" class="pet_button" style="margin-bottom:100px;margin-left:25px;background-color:red;">-</button>
						</td>
					</tr>
					<tr>
						<td>
						<%if(pal.get(i).getIsNeutral().equals("Y")) { %>
						
							<div class="petConfirm_d">
								<label class="petConfirm_l">중성화</label>
								<input type="checkbox" name="chkNeutral" checked disabled>
							</div>
						<%} else{%>
							<div class="petConfirm_d">
								<label class="petConfirm_l">중성화</label>
								<input type="checkbox" name="chkNeutral" value="중성화">&nbsp;&nbsp;&nbsp;&nbsp;
							</div>
						<%} %>
						<div class="petConfirm_d">
								<label class="petConfirm_l">성별:</label> 
								<input type="text" name="petGender" value="<%=pal.get(i).getPetGender() %>" readonly>
						</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="petConfirm_d">
								<label class="petConfirm_l">무게 : </label>
								<input type="number" name="petWeight" value=<%=pal.get(i).getPetWeight() %> style="width:120px;"><label>kg</label>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="petConfirm_d">
								<label class="petConfirm_l">종:</label>
								<input type="text" name="petKind" value="<%=pal.get(i).getPetKind() %>" style="width: 100px;">
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="petConfirm_d">
								<label class="petConfirm_l">나이:</label>
								<input type="text" name="petAge" value="<%=pal.get(i).getPetAge()%>" style="width: 120px;">
								<button type="button" id="pet_plus" class="pet_button">+</button>
							</div>
						</td>
					</tr>
				</table>
			</div>
			<%} %>
	</form>
	<hr style="width:50%">
		<p align="center"></p>
		<div class="btn" align="center">
			<button id="goMain" onclick="goMain();">이전으로</button>
			<button id="updateBtn" onclick="updateUser();">수정하기</button>
			<button id="deleteBtn" onclick="deleteUser();">탈퇴하기</button>
		</div>
	
		<script>
		//펫 추가 빼기
 		function plus(){
			var count=0;
			var intro = $("<h2>").text("당신의 펫을 추가해보세요").css({"text-align":"center"});
			var plusBtn = $("<button>").text("+").attr({"class":"pet_button plus","type":"button","onclick":"plus()"});
			var minusBtn = $("<button>").text("-").attr({"class":"pet_button minus","type":"button","onclick":"minus()"})
			.css({"background-color":"orangered","margin-bottom":"100px","margin-left":"25px"});

			var petform = document.createElement("div");
			petform.setAttribute("class", "petForm")
			petform.setAttribute("id","petform2");
			

			if(count == 0){
				
			intro.append(plusBtn);	
			$("#userUpdateForm").append(intro);	// 펫을 추가해주세요 문구 붙이기
			}
			
			if(count<2){		
			count++;
			petform.innerHTML = document.getElementById("petForm").innerHTML;
			if(count==1){
				$(".petForm input").attr("required",true);			// 펫 입력란을 필수로 만들기
				$("#userUpdateForm").children("h2:last").remove();	// 펫추가 메세지 지우기
				$("#petForm").css("display","block");
				$("#petForm input").attr("disabled",false);
				$("#petForm select").attr("disabled",false);

			}else{
				$(".plus:first").css("display","none");
				$("#userUpdateForm").append(petform);
				$("#petform2 input").attr("required",true);
				$("#petform2 select").attr("name","petSize2");
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
			$("#userUpdateForm").append(intro);
			$("#userUpdateForm").children("div:last").css("display","none");
			$(".petForm input").attr("required",false);		
		}else{
			$("#userUpdateForm").children("div:last").remove();
			$(".plus:first").show();
		}
	} 
			function goMain(){
				location.href="<%=request.getContextPath()%>/index.jsp";
			}
			
			//정보 수정하기
			function updateUser(){
				$("#userUpdateForm").submit();
				
			}
			//회원 탈퇴
			function deleteUser(){
				var bool = confirm("정말 탈퇴 하시겠습니까?")
				
				if(bool){
					$("#userUpdateForm").attr("action","<%=request.getContextPath()%>/deletee.me");
					$("#userUpdateForm").submit();
				}
			}
			function sample4_execDaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
		                var extraRoadAddr = ''; // 도로명 조합형 주소 변수

		                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                    extraRoadAddr += data.bname;
		                }
		                // 건물명이 있고, 공동주택일 경우 추가한다.
		                if(data.buildingName !== '' && data.apartment === 'Y'){
		                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                if(extraRoadAddr !== ''){
		                    extraRoadAddr = ' (' + extraRoadAddr + ')';
		                }
		                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
		                if(fullRoadAddr !== ''){
		                    fullRoadAddr += extraRoadAddr;
		                }

		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
		                document.getElementById('userAddress').value = fullRoadAddr;
		                document.getElementById('sample4_jibunAddress').value = data.jibunAddress;
						
		                document.getElementById('postcode').setAttribute("readonly","true");
		                document.getElementById('userAddress').setAttribute("readonly","true");
		                document.getElementById('sample4_jibunAddress').setAttribute("readonly","true");
		                
		                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
		                if(data.autoRoadAddress) {
		                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
		                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
		                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';

		                } else if(data.autoJibunAddress) {
		                    var expJibunAddr = data.autoJibunAddress;
		                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

		                } else {
		                    document.getElementById('guide').innerHTML = '';
		                }
		            }
		        }).open();
		    }
		
		</script>
		<%@include file="../common/footer.jsp" %>
</body>
</html>