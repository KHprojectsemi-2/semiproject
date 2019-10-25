<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="user.model.vo.*, java.util.ArrayList, board.model.vo.*"%>
	
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
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
			<% if(list.isEmpty()){ %>
			<tr>
				<td colspan="6">요청중인 매칭이 없습니다.</td>
			</tr>			
			<%} else{%>
				<% for(Matching m :list){ %>
						<tr>
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
								<label>내가 시터</label>
								<input type="text" name="whoSitter" >
							<%} else{%>
								<label>내가 견주</label>
								<input type="text" name="whoSitter" >
							<%} %>
							</td>		
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=loginUser.getUserId() %>
							<%}else{ %>
							<%} %>
							</td>	
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%if(loginUser.getIsHome().equals("Y")) %>
									방문
								<%else %>
									가정집
							<%}else{ %>
								<%if(m.getIsHome().equals("Y")) %>
									방문
								<%else %> 
									가정집
							<%} %>
							</td>
							<td>
								<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
									<%=loginUser.getCareDate() %>
								<%}else{ %>
									<%=m.getCareDate() %>
								<%} %>
							</td>
							<td>
								<%if(!loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=m.getSitter_Id() %>
								<%}else{ %>
								<%} %>
							</td>
							<td></td>
							<td rowspan="3"><img src="#" width="150" height="150" style="margin-top:20px">
							<button type="button"  id="pet_minus" class="pet_button" style="margin-bottom:100px;margin-left:25px;background-color:red;">내 신청 보기</button>
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
			<% if(list.isEmpty()){ %>
			<tr>
				<td colspan="6">진행중인 매칭이 없습니다.</td>
			</tr>			
			<%} else{%>
				<% for(Matching m :list){ %>
						<tr>
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
								<label>내가 시터</label>
								<input type="text" name="whoSitter" >
							<%} else{%>
								<label>내가 견주</label>
								<input type="text" name="whoSitter" >
							<%} %>
							</td>		
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=loginUser.getUserId() %>
							<%}else{ %>
								<%=m.getSitter_Id %>
							<%} %>
							</td>	
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%if(loginUser.getIsHome().equals("Y")) %>
									방문
								<%else %>
									가정집
							<%}else{ %>
								<%if(m.getIsHome().equals("Y")) %>
									방문
								<%else %> 
									가정집
							<%} %>
							</td>
							<td>
								<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
									<%=loginUser.getCareDate() %>
								<%}else{ %>
									<%=m.getCareDate() %>
								<%} %>
							</td>
							<td>
								<%if(!loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=m.getSitter_Id() %>
								<%}else{ %>
								<%} %>
							</td>
							<td>
								<%if(m.getRegStatus==2) %>
									X
								<%else %>
									Y
							</td>
							<td rowspan="3"><img src="#" width="150" height="150" style="margin-top:20px">
							<button type="button"  id="pet_minus" class="pet_button" style="margin-bottom:100px;margin-left:25px;background-color:red;">내 신청 보기</button>
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
			<% if(list.isEmpty()){ %>
			<tr>
				<td colspan="6">완료된 매칭이 없습니다.</td>
			</tr>			
			<%} else{%>
				<% for(Matching m :list){ %>
						<tr>
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
								<label>내가 시터</label>
								<input type="text" name="whoSitter" >
							<%} else{%>
								<label>내가 견주</label>
								<input type="text" name="whoSitter" >
							<%} %>
							</td>		
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=loginUser.getUserId() %>
							<%}else{ %>
								<%=m.getSitter_Id %>
							<%} %>
							</td>	
							<td>
							<%if(loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%if(loginUser.getIsHome().equals("Y")) %>
									방문
								<%else %>
									가정집
							<%}else{ %>
								<%if(m.getIsHome().equals("Y")) %>
									방문
								<%else %> 
									가정집
							<%} %>
							</td>
							<td>
								<%if(loginUser.getUserId().equals(m.getSitter_Id)) {%>
									<%=loginUser.getCareDate() %>
								<%}else{ %>
									<%=m.getCareDate() %>
								<%} %>
							</td>
							<td>
								<%if(!loginUser.getUserId().equals(m.getSitter_Id)){ %>
								<%=m.getSitter_Id() %>
								<%}else{ %>
								<%} %>
							</td>
							<td>
								<%if(m.getRegStatus==2) %>
									X
								<%else %>
									Y
							</td>
							<td rowspan="3"><img src="#" width="150" height="150" style="margin-top:20px">
							<button type="button"  id="pet_minus" class="pet_button" style="margin-bottom:100px;margin-left:25px;background-color:red;">내 신청 보기</button>
			<%} %>
			<%} %>
		</table>
		
	</div>
	<div class="btn" align="center">
		<div id="goMain">이전으로</div>
	</div>
	<script>
	function goMain(){
		location.href="/semiproject/index.jsp";
	}
	</script>
</body>
</html>