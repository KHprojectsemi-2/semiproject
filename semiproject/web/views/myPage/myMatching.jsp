<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="matching.model.vo.*,java.sql.Date, java.util.ArrayList"%>
	
<%
ArrayList<Matching> yList1 = (ArrayList<Matching>)request.getAttribute("yList1");
ArrayList<Matching> yList2 = (ArrayList<Matching>)request.getAttribute("yList2");
ArrayList<Matching> nList1 = (ArrayList<Matching>)request.getAttribute("nList1");
ArrayList<Matching> nList2 = (ArrayList<Matching>)request.getAttribute("nList2");
ArrayList<Matching> nList3 = (ArrayList<Matching>)request.getAttribute("nList3");
ArrayList<Matching> nList4 = (ArrayList<Matching>)request.getAttribute("nList4");
ArrayList<Matching> nList5 = (ArrayList<Matching>)request.getAttribute("nList5");
ArrayList<Matching> nList6 = (ArrayList<Matching>)request.getAttribute("nList6");
ArrayList<Matching> nList7 = (ArrayList<Matching>)request.getAttribute("nList7");
ArrayList<Matching> nList8 = (ArrayList<Matching>)request.getAttribute("nList8");
ArrayList<Matching> eList1 = (ArrayList<Matching>)request.getAttribute("eList1");
ArrayList<Matching> eList2 = (ArrayList<Matching>)request.getAttribute("eList2");
ArrayList<Matching> eList3 = (ArrayList<Matching>)request.getAttribute("eList3");
ArrayList<Matching> eList4 = (ArrayList<Matching>)request.getAttribute("eList4");







%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table{
border:1px solid black;
text-align:center;
border-collapse:collapse;
}
th, td{
	border: 1px solid black;
	padding: 5px;
}
</style>
<title>Insert title here</title>
</head>
<!-- jQuery -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
  <!-- iamport.payment.js -->
  <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<body>
	<%@ include file="../common/header.jsp" %>
	
	<h2 align="center">매칭 현황</h2>
	
	<div class="reqMatching">
	<label id="mLabel">신청한 매칭</label>
		<table>
			<tr>

				<th width="100px">내 입장</th>
				<th width="100px">견주</th>
				<th width="100px">방문 유형</th>
				<th width="100px">예약날짜</th>
				<th width="100px">펫시터</th>
				<th width="100px">결제여부</th>
			</tr>
			<% if(yList1.isEmpty() && yList2.isEmpty()){ %>
			<tr>
				<td colspan="6">요청중인 매칭이 없습니다.</td>
			</tr>			
			<%} else if(!yList1.isEmpty() && yList2.isEmpty()){%>
				<% for(Matching y1 : yList1){ %>
						<tr>
							<td>
								내가 시터
							</td>		
							<td>
							</td>	
							<td>
								방문
							</td>
							<td>
							<%=y1.getCareDate() %>
							</td>
							<td>
							<%=y1.getSitter_Id() %>
							</td>
							<td></td>
						</tr>
			
			<%} %>
			<%}else if(yList1.isEmpty() && !yList2.isEmpty()) {%>
			<% for(Matching y2 : yList2){ %>
						<tr>
							<td>
								내가 견주
							</td>		
							<td>
							<%=y2.getUser_Id()%>	
							</td>	
							<td>
								가정집
							</td>
							<td>
							<%=y2.getCareDate() %>
							</td>
							<td>
							</td>
							<td></td>
							
						</tr>
			
			<%} %>
			<%} %>
		</table>
	</div>
	<div class="nowMatching">
		<label id="mLabel">진행중인 매칭</label>
		<table>
			<tr>
				<th width="100px">내 입장</th>
				<th width="100px">견주</th>
				<th width="100px">방문 유형</th>
				<th width="100px">예약날짜</th>
				<th width="100px">펫시터</th>
				<th width="100px">결제여부</th>
			</tr>
			<% if(nList1.isEmpty() &&nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() &&nList8.isEmpty()) { %>
			
			<tr>
				<td colspan="6">진행중인 매칭이 없습니다.</td>
			</tr>			
			<%} else if(!nList1.isEmpty() &&nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() &&nList8.isEmpty()) {%>
				<% for(Matching n1 : nList1){ %>
						<tr>
							<td>
								내가 펫시터
							</td>		
							<td>
								<%= n1.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=n1.getCareDate() %>
							</td>
							<td>
								<%=n1.getSitter_Id() %>
							</td>
							<td>
								X
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;" disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && !nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n2 : nList2){ %>
						<tr>
							<td>
								내가 펫시터
							</td>		
							<td>
								<%= n2.getUser_Id() %>
							</td>	
							<td>
								가정집
							<td>
								<%=n2.getCareDate() %>
							</td>
							<td>
								<%=n2.getSitter_Id() %>
							</td>
							<td>
								X
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;" disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && !nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n3 : nList3){ %>
						<tr>
							<td>
								내가 펫시터
							</td>		
							<td>
								<%= n3.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=n3.getCareDate() %>
							</td>
							<td>
								<%=n3.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;" disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && nList3.isEmpty() && !nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n4 : nList4){ %>
						<tr>
							<td>
								내가 펫시터
							</td>		
							<td>
								<%= n4.getUser_Id() %>
							</td>	
							<td>
								가정집
							<td>
								<%=n4.getCareDate() %>
							</td>
							<td>
								<%=n4.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;"disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && !nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n5 : nList5){ %>
						<tr>
							<td>
								내가 견주
							</td>		
							<td>
								<%= n5.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=n5.getCareDate() %>
							</td>
							<td>
								<%=n5.getSitter_Id() %>
							</td>
							<td>
								X
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;">결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && !nList6.isEmpty() && nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n6 : nList6){ %>
						<tr>
							<td>
								내가 견주
							</td>		
							<td>
								<%= n6.getUser_Id() %>
							</td>	
							<td>
								가정집
							<td>
								<%=n6.getCareDate() %>
							</td>
							<td>
								<%=n6.getSitter_Id() %>
							</td>
							<td>
								X
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;">결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && !nList7.isEmpty() && nList8.isEmpty()) {%>
			<% for(Matching n7 : nList7){ %>
						<tr>
							<td>
								내가 견주
							</td>		
							<td>
								<%= n7.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=n7.getCareDate() %>
							</td>
							<td>
								<%=n7.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goPay" class="goPay" style="align:center;" disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} else if(nList1.isEmpty() && nList2.isEmpty() && nList3.isEmpty() && nList4.isEmpty() && nList5.isEmpty() && nList6.isEmpty() && nList7.isEmpty() && !nList8.isEmpty()) {%>
			<% for(Matching n8 : nList8){ %>
						<tr>
							<td>
								내가 견주
							</td>		
							<td>
								<%= n8.getUser_Id() %>
							</td>	
							<td>
								가정집
							<td>
								<%=n8.getCareDate() %>
							</td>
							<td>
								<%=n8.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goPay" onclick="goPay()" class="goPay" style="align:center;" disabled>결제하기</button>
							<button type="button"  id="matching_cancle" onclick="matching_cancle()" class="matching_cancle" style="align:center;">취소하기</button>
							</td>
						</tr>
			<%} %>
			<%} %>
			
		</table>
		</div>
	
	<div class="endMatching">
		<label id="mLabel">지난 매칭</label>
		<table>
			<tr>
				<th width="100px">내 입장</th>
				<th width="100px">견주</th>
				<th width="100px">방문 유형</th>
				<th width="100px">예약날짜</th>
				<th width="100px">펫시터</th>
				<th width="100px">결제여부</th>
			</tr>
			<% if(eList1.isEmpty() && eList2.isEmpty() && eList3.isEmpty() && eList4.isEmpty()){ %>
			<tr>
				<td colspan="6">완료된 매칭이 없습니다.</td>
			</tr>			
			<%} else if(!eList1.isEmpty() && eList2.isEmpty() && eList3.isEmpty() && eList4.isEmpty()){%>
				<% for(Matching e1 : eList1){ %>
						<tr>
							<td>
								내가 시터
							</td>		
							<td>
								<%= e1.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=e1.getCareDate() %>
							</td>
							<td>
								<%=e1.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goNote" onclick="goNote()" class="goNote" style="align:center;">돌봄일지</button>
							</td>
						</tr>
			<%} %>
			<%} else if(eList1.isEmpty() && !eList2.isEmpty() && eList3.isEmpty() && eList4.isEmpty()){%>
				<% for(Matching e2 : eList2){ %>
						<tr>
							<td>
								내가 시터
							</td>		
							<td>
								<%= e2.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=e2.getCareDate() %>
							</td>
							<td>
								<%=e2.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goNote" onclick="goNote()" class="goNote" style="align:center;">돌봄일지</button>
							</td>
						</tr>
			<%} %>
			<%} else if(eList1.isEmpty() && eList2.isEmpty() && !eList3.isEmpty() && eList4.isEmpty()){%>
				<% for(Matching e3 : eList3){ %>
						<tr>
							<td>
								내가 시터
							</td>		
							<td>
								<%= e3.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=e3.getCareDate() %>
							</td>
							<td>
								<%=e3.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goNote" onclick="goNote()" class="goNote" style="align:center;">돌봄일지</button>
							</td>
						</tr>
			<%} %>
			<%} else if(eList1.isEmpty() && eList2.isEmpty() && eList3.isEmpty() && !eList4.isEmpty()){%>
				<% for(Matching e4 : eList4){ %>
						<tr>
							<td>
								내가 시터
							</td>		
							<td>
								<%= e4.getUser_Id() %>
							</td>	
							<td>
								방문
							<td>
								<%=e4.getCareDate() %>5ㅓ
							</td>
							<td>
								<%=e4.getSitter_Id() %>
							</td>
							<td>
								O
							</td>
							<td>
							<button type="button"  id="goNote" onclick="goNote()" class="goNote" style="align:center;">돌봄일지</button>
							</td>
						</tr>
			<%} %>
			<%} %>
		</table>
	</div>
	
	<div class="btn" align="center">
		<button id="goMain" onclick="goMain()">이전으로</button>
	</div>
	<script>
	function goMain(){
		location.href="<%=request.getContextPath()%>/index.jsp";
	}
	function goPay(){
		console.log("버튼클릭");
		$(function(){

		      var IMP = window.IMP; // 생략가능
		      IMP.init('imp43659263'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
		      
		      IMP.request_pay({
		          pg : 'inicis', // version 1.1.0부터 지원.
		          pay_method : 'card',
		          merchant_uid : 'merchant_' + new Date().getTime(),
		          name : '펫트라슈',   // 이거는 상품명 들어와야되는데 그냥 조 이름으로 집어넣었고
		          amount : 100,   //여기는 원래 입력된 가격들어와야되는데 일단 100원으로 고정하게할꺼
		         buyer_email: "<%=loginUser.getUserEmail()%>",		
		          buyer_name : '<%=loginUser.getUserName()%>',   
		          buyer_tel : '<%=loginUser.getUserPhone()%>',   // 결제한 사람 번호
		          buyer_addr : "<%=loginUser.getUserAddress()%>" 
		      }, function(rsp) {
		          if ( rsp.success ) {
		            
		              var msg = '결제가 완료되었습니다. 메인화면으로 이동합니다.';
		              alert(msg);
		              location.href = '<%=request.getContextPath()%>/index.jsp';
		          } else {
		              var msg = '결제에 실패하였습니다.';
		              msg += '에러내용 : ' + rsp.error_msg;
		              alert(msg);
		              // 여기도 결제 취소했을때 이동할 경로
		          }
		      });
		   });
	}
	function matching_cancle(){
		
	}
	function goNote(){
		
	}
	</script>
	
</body>
</html>