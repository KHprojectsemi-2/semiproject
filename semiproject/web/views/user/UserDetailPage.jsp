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
<title>leopet || UserDetail</title>
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

 <!-- 모달 부분 -->
/* 마스크 뛰우기 */
#mask {  
    position:absolute;  
    z-index:9000;
	position: absolute; /* */
	left: 50%;
	top: 100%;
	transform: translate(-50%, -50%);
	width: 100%;
	height: 100%;
    display:none; 
    background-color:black;
    

} 
/* 팝업으로 뜨는 윈도우 css  */ 
.window{
    display: none;
	position: absolute; /* */
	left: 50%;
	top: 100%;
	transform: translate(-50%, -50%);
	width: 48%;
	height: 59%;
    background-color:white;
    z-index:10000;
    border:1px solid black;
   
 }
.msg{
	position : absolute;
	transform: translate(-50%, -50%);
	left: 50%;
	top: 40%;
    border:1px solid black;
	font-size:14px;
	width:85%;
	height:40%;
	
}
.css_sel{
	position : absolute;
	transform: translate(-50%, -50%);
	z-index:10000;
	
	left: 22.5%;
	top: 70%;
	min-height:40px;
	min-width:150px;
}
.css_btn{
	position : absolute;
	transform: translate(-50%, -50%);
	z-index:10000;
	
	left: 80%;
	top: 70%;
	min-height:40px;
	min-width:120px;
}
</style>
</head>
<body>
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
			<img src="<%=request.getContextPath()%>/join_uploadFiles/<%=user.getUserImage()%>" width ="200" height="200" >
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
			 <input type="text" name="grade"  value="----" readonly> 
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
			 <input type="text" name="reported"  value="<%=user.getReported()%>" readonly> 
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
			<button type="button" class="openMask btn btn-info btn-md" id="goReport">제재</button>
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
					<td rowspan="3"><img src="<%=request.getContextPath()%>/join_uploadFiles/<%=pet.getPetImage()%>" width="150" height="150"
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
	<!-- 팝업 될 레이어 --> 
	<div id ="wrap"> 
        <div id = "container">  
           <div id="mask"></div>
            <div class="window">
            	<a href="#" class="close">X</a>
                <p style="width:1000px;height:500px;text-align:center;font-size:20px;vertical-align:middle;">회원 제재</p>    	
             <textarea name="msg" class="msg">보낼 메세지를 입력하세요</textarea>
             	<select name="limitDate" class="css_sel">
             		<option value=0>경고</option>
             		<option value=7>7일</option>
             		<option value=30>30일</option>
             		<option value=9999>영구</option>
				</select>
				<button type="button" id="reportBtn" class="css_btn btn btn-info btn-md" >제재</button>
            </div>
        </div>
    </div>

	<script>
	$(function(){
		$("textarea[name=msg]").focus(function(){
			$("textarea[name=msg]").val("");
		})
	})
	function wrapWindowByMask(){
		 
        //화면의 높이와 너비를 구한다.
        var maskHeight = $(document).height();  
        var maskWidth = $(window).width();  
 
        //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
        $("#mask").css({"width":maskWidth,"height":maskHeight});  
 
        //애니메이션 효과 - 일단 0초동안 까맣게 됐다가 60% 불투명도로 간다.
 
        $("#mask").fadeIn(0);      
        $("#mask").fadeTo("slow",0.6);    
 
        //윈도우 같은 거 띄운다.
        $(".window").show();
 
    }
 
    $(document).ready(function(){
    	
        //검은 막 띄우기
        $(".openMask").click(function(e){
        	if($("input[name=userStatus]").val()=='Y'){
          	  e.preventDefault();
          	  wrapWindowByMask();
        	}
        });
 
        //닫기 버튼을 눌렀을 때
        $(".window .close").click(function (e) {  
            //링크 기본동작은 작동하지 않도록 한다.
            e.preventDefault();  
            $("#mask, .window").hide();  
        });       
 
        //검은 막을 눌렀을 때
        $("#mask").click(function () {  
            $(this).hide();  
            $(".window").hide();  
 
        });      
 
    });	

		$("#goBack").click(function(){
			location.href =  '<%=request.getContextPath()%>/userSearch.li';
		});
		$("#goMatch").click(function(){
			// 해당 회원의 매칭 페이지로 갈 것
		});

		$("#goReport").click(function(){
			if($("input[name=userStatus]").val()!='Y'){
				alert("정지 중이거나 탈퇴한 회원입니다.");
			}else{
				$("#modal_content").modal();
			}
		});
		
		$("#reportBtn").click(function(){
			var reportId = $("input[name=userId]").val();
			var msg = $("textarea[name=msg]").val();
			var limitDate = $("select[name=limitDate]").val();
			
			$.ajax({
				url:"<%=request.getContextPath()%>/report.me",
				type:"post",
				data:{reportId:reportId,msg:msg,limitDate:limitDate},
				success:function(data){
					if(data>0){
						alert("회원 제재 성공");
						location.href='index.jsp';
					}
					else{
						alert("해당 정보가 없습니다!");
					}
				},
				error:function(data){
					console.log("서버 통신 안됨");
				}
			}); 

		})

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