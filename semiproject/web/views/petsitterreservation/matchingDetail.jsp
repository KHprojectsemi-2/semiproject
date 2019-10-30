<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="matching.model.vo.*, java.util.ArrayList, user.model.vo.*, java.util.List, java.util.Date"%>

<%
	PetSitterMatchingJoin psm = (PetSitterMatchingJoin)request.getAttribute("psm");
	ArrayList<Pet> pList = (ArrayList<Pet>)request.getAttribute("pList");
	ArrayList<String> val = (ArrayList<String>)request.getAttribute("val");
	out.print(pList);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src ="https://kit.fontawesome.com/702f2f895a.js"></script>


<title>Insert title here</title>
<style>

.checks{
	padding-top:35px;
	padding-bottom:20px;
}

.roww {
  	display: flex;
  	align:center;
  	margin:50px 0 50px 50px;
	padding:25px 0 50px 50px;

}

.psittername{
	padding:50px 0 0 0;
	
}
.imgarea2{
	width:300px;
	height:300px;
	border:1px solid black;
}


.column {
 	flex: 50%;
}

.matchingBGroup{
	margin-right:350px;
	padiing-top:100px;
	margin-top:50px;
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
<h2 class="psittername" align="center"><%=psm.getUserName() %> 펫시터님의 매칭정보</h2>
<div class="roww">
  <div class="column">
  <div class="margin123">
	<div>
		<div align="center">
			<div class="col-lg-8 col-md-8 align3">
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>아이디</b></label></div>
					<div class="mb-10"align="center">
						<input type="text" placeholder="<%=psm.getSitter_Id() %>" class="single-input" readonly>
						<input type="hidden" class="m_sitterid" value="<%=psm.getSitter_Id()%>">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>주소</b></label></div>
					<div class="mb-10" align="center">
						<input type="text" placeholder="<%=psm.getUserAddress() %>" class="single-input" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>이메일</b></label></div>
					<div class="mb-10">
						<input type="text" class="single-input" placeholder="<%=psm.getUserEmail() %>" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>직업</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=psm.getJob() %>" class="single-input" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>주거환경</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=psm.getResidence() %>" class="single-input" readonly>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>주의해야 할 사항</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=psm.getSpecial_Note() %>" class="single-input" readonly>
						<input type="hidden" class="m_spnote" value="<%=psm.getSpecial_Note()%>">
						<input type="hidden" class="m_say" value="<%=psm.getWantToSay()%>">
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>기타 주요사항</b></label></div>
					<div class="mb-10" align="left">
					<%if(psm.getWithFam().equals("Y")) {%>
						<div class="custom-control custom-checkbox" style="align:center">
							<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
							<label class="custom-control-label" for="jb-checkbox">가족과 함께 생활중</label>
						</div>
					<%}else {%>
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
							<label class="custom-control-label" for="jb-checkbox">가족과 함께 생활중</label>
						</div>
					<%} %>
					<%if(psm.getWithPet().equals("Y")) {%>	
						<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
							<label class="custom-control-label" for="jb-checkbox">반려동물 여부</label>
						</div>
					<%} else {%>
					<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
							<label class="custom-control-label" for="jb-checkbox">반려동물 여부</label>
					</div>
					<%} %>	
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>하고 싶은말</b></label></div>
					<div class="mb-10">
						<textarea class="single-textarea" placeholder="<%=psm.getWantToSay()%>" readonly></textarea>
					</div>
					<div class="mt-10" align="left"><label for="email" align="left" id="tagid"><b>신고 누적 횟수</b></label></div>
					<div class="mb-10">
						<input type="text" placeholder="<%=psm.getReported() %>" class="single-input" readonly>
					</div>
			</div>
		</div>
	</div>
</div>
</div>
<div class="column">
 
    <img src="<%=request.getContextPath()%>/join_uploadFiles/<%=psm.getThumbnail()%>" style="width:300px;height:300px;" class="imgtg">
 
    <div class="checks">
    <div class="mt-10">
		별점 : <i class="fas fa-star checked" style="color:#f1c40f"></i> <%=psm.getGrade()%>
	</div>
	<br>
	<div class="custom-control custom-checkbox">
		<%if(psm.getCanLarge().equals("Y")) {%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
		<%} else{%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
		<%} %>
		<label class="custom-control-label" for="jb-checkbox">대형견 가능 여부</label>
	</div>
	<div class="custom-control custom-checkbox">
		<%if(psm.getCanMedic().equals("Y")) {%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
		<%} else{%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
		<%} %>
		<label class="custom-control-label" for="jb-checkbox">투약가능</label>
	</div>
	<div class="custom-control custom-checkbox">
		<%if(psm.getCanOld().equals("Y")) {%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
		<%} else{%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
		<%} %>
		<label class="custom-control-label" for="jb-checkbox">노령견 가능 여부</label>
	</div>
	<div class="custom-control custom-checkbox">
		<%if(psm.getCanSick().equals("Y")) {%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
		<%} else{%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
		<%} %>
		<label class="custom-control-label" for="jb-checkbox">환자견 가능 여부</label>
	</div>
	<div class="custom-control custom-checkbox">
		<%if(psm.getIsLicense().equals("Y")) {%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" checked disabled>
		<%} else{%>
		<input type="checkbox" id="jb-checkbox" class="custom-control-input" disabled>
		<%} %>
		<label class="custom-control-label" for="jb-checkbox">자격증 보유</label>
	</div>
    </div>
    <!-- checks end -->
    <p>펫을 맡기실 날짜를 선택후 예악하세요.</p>
    <input type="text" id="datepicker" placeholder='날짜선택' class="Rdate">
    <br><br>
    <b>맡기실 펫을 선택하세요.</b>
    <%if(!(loginUser.getUserId().equals("admin"))) {%>
    	<%if(loginUser.getUserId().equals(psm.getSitter_Id())) {%>
    	<br>
    	<b>본인 정보를 수정하세요.</b>
    	<%}else{ %>
    		<%if(pList.isEmpty()) {%>
    	<br>
   	 	<b>펫을 등록하세요.</b>
			<%}else {%>
				<%if(pList.size()>1) {%>
				<br>
		<input type="checkbox" id="petselect1" name="petselector">
		<label><%= pList.get(0).getPetName()%></label>
		<input name="petno1" class="hiddenpetno1" type="hidden" value="0">
		<input type="checkbox" id="petselect2" name="petselector">
		<label><%= pList.get(1).getPetName()%></label>
		<input name="petno2" class="hiddenpetno2" type="hidden" value="0">
				<%}else{ %>
				<br>
		<input type="checkbox" id="petselect1" name="petselector">
		<label><%= pList.get(0).getPetName()%></label>
		<input name="petno1" class="hiddenpetno1" type="hidden" value="0">
		<br>	
		<label>펫을 등록하세요.</label>
		<input name="petno2" class="hiddenpetno2" type="hidden" value="0">
				<%} %>
			<%} %>
			<%} %>
		<%}else{ %>
	<label>관리자입니다.</label>
	<%} %>
  	<br>
    <div class="matchingBGroup" style="display:inline">
    	<input class="matching_price" value="<%=psm.getPrice()%>" text-align="right">원
	</div>
	<br><br><br>
	<%if(!(loginUser.getUserId().equals("admin"))) {%>
		<%if(loginUser.getUserId().equals(psm.getSitter_Id())) {%>
	<button type="button" onclick="Updateprofile();" class="btn btn-danger">수정하기</button>
	<button type="button" onclick="Deleteprofile();" class="btn btn-danger">삭제하기</button>
		<%}else{ %>
	<button type="button" onclick="Reservation();" class="btn btn-danger">예약하기</button>
		<%} %>
	<%}else{ %>
		<button type="button" onclick="adminDeleteprofile();" class="btn btn-danger">삭제하기</button>
	<%} %>
</div>
</div>
<script>
	function Updateprofile(){
		var sitterid = "<%=loginUser.getUserId()%>";
		alert(sitterid);
		<%-- location.href="<%=request.getContextPath()%>/myApply.ma?sitterid="+sitterid; --%>
	}
	
	function Deleteprofile(){
		var matno = <%=psm.getMatch_No()%>;
		if(confirm("정말 삭제하시겠습니까?")==true){
			location.href="<%=request.getContextPath()%>/Deleteprofile.ma?matno="+matno;
		}else{
			return;
		}
		
	}
	
	function adminDeleteprofile(){
		var matno = <%=psm.getMatch_No()%>;
		if(confirm("정말 삭제하시겠습니까?")==true){
			location.href="<%=request.getContextPath()%>/adminDeleteprofile.ma?matno="+matno;
		}else{
			return;
		}
	}
	
</script>

<%@include file = "../common/footer.jsp" %>



</body>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$("#datepicker").datepicker({
	minDate:0,
	dateFormat :'yy-mm-dd',
	prevText:'이전 달',
	nextText:'다음 달',
	monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	dayNames:['일','월','화','수','목','금','토'],
	dayNamesShort:['일','월','화','수','목','금','토'],
	dayNamesMin:['일','월','화','수','목','금','토'],
	showMonthAfterYear:true,
	changeMonth:true,
	changeYear:true,
	yearSuffix:'년',
	beforeShowDay:disableSomeDay
	});
	
	var caredate = <%=val%>
	
	var disabledDays=['2019-10-30','2019-10-31'];
	
/* 	if(caredate.length>0){
		for(var i=0; i<caredate.length; i++){
			disabledDays[i]=caredate[i];
		}
	}else{
		disabledDays=[];
	} */

	
	var temp2 = [];
	var str1 ="";
	<%if(val == null){%>
	
	temp2 = [];
	
	<%}else{%>
	
	<%for(int i=0; i < val.size(); i++){ %>
		str1 = "<%=val.get(i)%>";
		temp2[<%=i%>] = str1;
	<%}%>
	<%}%>
	
	
	
	console.log(typeof(temp2));
	console.log(temp2);


	
	function disableSomeDay(date){
	
		var month = date.getMonth();
		var dates = date.getDate();
		var year = date.getFullYear();
		
		for(i=0; i<disabledDays.length; i++){
			if($.inArray(year+'-'+(month+1)+'-'+dates,temp2)!= -1){
				return [false];
			}
		}
		return [true];
	}

</script>
<script>
	$(function(){
    $("#petselect1").change(function(){
    	var petcount = $("input:checkbox[name=petselector]:checked").length;
        if($("#petselect1").is(":checked")){
            $(".hiddenpetno1").val("<%=pList.get(0).getPetNo()%>");
            $(".matching_price").val(<%=psm.getPrice()%> * petcount);
        }else{
        	$(".hiddenpetno1").val("0");
        	$(".matching_price").val(<%=psm.getPrice()%> * petcount);
        	}
    	});
    $("#petselect2").change(function(){
    	var petcount = $("input:checkbox[name=petselector]:checked").length;
        if($("#petselect2").is(":checked")){
            $(".hiddenpetno2").val("<%=pList.get(0).getPetNo()%>");
            $(".matching_price").val(<%=psm.getPrice()%> * petcount);
        }else{
        	$(".hiddenpetno2").val("0");
        	$(".matching_price").val(<%=psm.getPrice()%> * petcount);
        	}
    	});
	});
</script>
<script>
	function Reservation(){
		var rdate = $(".Rdate").val();
		var petno1 = $(".hiddenpetno1").val();
		var petno2 = $(".hiddenpetno2").val();
		var sitterid = $(".m_sitterid").val();
		var msay=$(".m_say").val();
		var muserid="<%=loginUser.getUserId()%>";
		var mspnote=$(".m_spnote").val();
		var mprice=$(".matching_price").val();
		
		
/* 	var msg = "====시작====";
        msg += rdate;
        msg += petno1;
        msg += petno2;
        msg += sitterid;
        msg += muserid;
        msg += mspnote;
        msg += msay;
        msg += mprice;
        alert(msg); */
  		if(rdate == '' || rdate == null){
			alert("예약날짜를 정해주세요!");
		}else{
			if($("input:checkbox[name=petselector]:checked").length<1){
				alert("펫을 선택해주세요.");
			}else{
				location.href = "<%=request.getContextPath()%>/UpdateMatching.ma?rdate="+rdate+"&petno1="+petno1+"&petno2="+petno2+"&sitterid="+sitterid+"&muserid="+muserid+"&mspnote="+mspnote+"&msay="+msay+"&mprice="+mprice;
			}
			
		}
	}


	

</script>


</html>