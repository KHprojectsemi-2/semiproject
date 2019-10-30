<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, matching.model.vo.*, user.model.vo.*"%>

<%
	MatchingUserJoin m = (MatchingUserJoin)request.getAttribute("m");
	ArrayList<Pet> pList = (ArrayList<Pet>)request.getAttribute("pList");
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<!-- <script src ="https://kit.fontawesome.com/702f2f895a.js"></script> -->


<title>Insert title here</title>
<style>

.checks{
	padding-top:35px;
	padding-bottom:20px;
}

 .roww {
  	display: flex;
  	align:center;
  /* 	margin:50px 0 50px 50px;
	padding:25px 0 50px 50px; */

}

 .mb-10{
	margin-bottom:0px;
	padding-bottom:0px;
}

.psittername{
	padding:50px 0 0 0;
	
}
.imgarea2{
	width:300px;
	height:300px;
	border:1px solid black;
}
.matchingimg{
	width:300px;
	height:300px;
}

.column {
 	flex: 50%;
}

.matchingBGroup{
	margin-right:350px;
	padiing-top:100px;
	margin-top:50px;
}
/* .mb-10{
	margin-bottom:10px;
} */

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 0 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

#tagid{
	padding-top:0px;
	margin-top:0px;
}

hr.new5 {
  border: 10px solid green;
  border-radius: 5px;
}

.imgtg{
	width:100%;
	height:100%;
	background-size:cover;
	border:1px double black;
}
</style>
</head>
<body>
<%@include file = "../common/header.jsp" %>


<h2 class="psittername" align="center"><%=m.getUserName() %> 견주님의 매칭정보</h2>

<div class="roww">
  <div class="column">
  <div class="margin123">
	<div>
		<div align="center">
			<div class="col-lg-8 col-md-8 align3">
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>아이디</b></label></div>
					<div class="mb-10"align="center">
						<input type="text" placeholder="<%=m.getUser_Id() %>" class="single-input" readonly>
						<input type="hidden" value="<%=m.getUser_Id() %>" class="m_userid">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>주소</b></label></div>
					<div class="mb-10" align="center">
						<input type="text" placeholder="<%=m.getUserAddress() %>" class="single-input" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>이메일</b></label></div>
					<div class="mb-10">
						<input type="text" class="single-input" placeholder="<%=m.getUserEmail() %>" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>요청사항</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=m.getSpecial_Note() %>" class="single-input" readonly>
						<input type="hidden" value="<%=m.getSpecial_Note() %>" class="m_spnote">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>하고싶은말</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=m.getWantToSay() %>" class="single-input" readonly>
						<input type="hidden" value="<%=m.getWantToSay() %>" class="m_say">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>가격</b></label></div>
					<div class="mb-10"align="center">
						<input type="text" placeholder="<%=m.getPrice() %>원" class="single-input" readonly>
						<input type="hidden" value="<%=m.getPrice() %>" class="m_price">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>신고 받은 횟수</b></label></div>
					<div class="mb-10"align="center">
						<input type="text" placeholder="<%=m.getReported() %>회" class="single-input" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>케어 날짜</b></label></div>
					<div class="mb-10"align="center">
						<input type="text" placeholder="<%=m.getCareDate() %>" class="single-input" readonly>
						<input type="hidden" value="<%=m.getCareDate() %>" class="m_date">
					</div>
			</div>
		</div>
	</div>
</div>
</div>
<div class="column">
    <img src="<%=request.getContextPath()%>/join_uploadFiles/<%=m.getThumbnail()%>" style="width:300px;height:300px;" class="imgtg">


    <div class="mt-10">
		마릿수 : <i class="fas fa-dog"></i><%=m.getCountPet()%> 마리
	</div>
	<br>
	<%for(int i=0; i<pList.size(); i++) {%>
	<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>강아지 이름</b></label></div>
	<div class="mb-10">
		<input type="text" placeholder="<%=pList.get(i).getPetName() %>" class="single-input" style="width:500px;height:50px" readonly>
	</div>
	<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>견종</b></label></div>
	<div class="mb-10">
		<input type="text" placeholder="<%=pList.get(i).getPetKind() %>" class="single-input" style="width:500px;height:50px" readonly>
	</div>
	<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>강아지 무게(소,중,대형)</b></label></div>
	<div class="mb-10">
		<input type="text" class="single-input" placeholder="<%=pList.get(i).getPetWeight() %>" style="width:500px;height:50px" readonly>
	</div>
	<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>강아지 나이</b></label></div>
	<div class="mb-10">
		<input type="text" placeholder="<%=pList.get(i).getPetAge() %>살" class="single-input" style="width:500px;height:50px" readonly>
	</div> 
	<hr class="new5" style="width:500px;float:left">
	<br><br><br>
	<%} %>
	
	<%if(loginUser.getUserId().equals("admin")) {%>
	<button type="button" onclick="adminDeleteHome();" class="btn btn-danger">삭제하기</button>
	<%}else{ %>
		<%if(loginUser.getUserId().equals(m.getUser_Id())) {%>
	<button type="button" onclick="UpdateHouseprofile();" class="btn btn-danger">수정하기</button>
	<button type="button" onclick="DeleteHouseprofile();" class="btn btn-danger">삭제하기</button>
		<%}else{ %>
	<button type="button" onclick="Reservation();" class="btn btn-danger">예약하기</button>
		<%} %>
	<%} %>	
   <!--  <div class="matchingBGroup" align="right">
		<button type="button" onclick="Reservation();" class="btn btn-danger" align="right">예약하기</button>
	</div> -->
</div>
</div>
<script>
	function Reservation(){
		var petcount=<%=m.getCountPet()%>;
		var sitterid="<%=loginUser.getUserId()%>";
		var muserid=$(".m_userid").val();
		var mspnote=$(".m_spnote").val();
		var msay=$(".m_say").val();
		var mprice=$(".m_price").val();
		var mdate=$(".m_date").val();
		
		location.href="<%=request.getContextPath()%>/Update.hm?sitterid="+sitterid+"&muserid="+muserid+"&petcount="+petcount+"&mspnote="+mspnote+"&msay="+msay+"&mprice="+mprice+"&mdate="+mdate;
	}
	
	function UpdateHouseprofile(){
		var userid = "<%=loginUser.getUserId()%>";
		location.href="<%=request.getContextPath()%>/MyHouseApply.ma?userid="+userid;
	}
	
	function DeleteHouseprofile(){
		var matno = "<%=m.getMatch_No()%>";
		location.href="<%=request.getContextPath()%>/Deleteprofile.ma?matno="+matno;
	}
	
	function adminDeleteHome(){
		var matno = <%=m.getMatch_No()%>;
		if(confirm("정말 삭제하시겠습니까?")==true){
			location.href="<%=request.getContextPath()%>/adminDeleteprofile.ma?matno="+matno;
		}else{
			return;
		}
	}
</script>

<%@include file = "../common/footer.jsp" %>



</body>

</html>