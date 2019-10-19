<%@page import="java.util.ArrayList"%>
<%@page import="petSitter.model.vo.PetSitter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<PetSitter> list = (ArrayList<PetSitter>)request.getAttribute("list");
	/* PetSitter p = new PetSitter(); */
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 관리자가 펫시터 지원서 관리하는 페이지 -->
<body>
<%@include file = "../common/header.jsp" %>

<%-- 	<div class="outer">
		<br>
		<h2 align="center">게시판</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<!-- <th width="100px">이름</th> -->
					<th width="300px">아이디</th>
					<th width="100px">신청 날짜</th>
					<th width="100px">승인 유무</th>
				</tr>
				<% if(list.isEmpty()){ %>
				<tr>
					<td colspan="6">조회된 리스트가 없습니다.</td>
				</tr>
				<%}else{ %>
					<% for(PetSitter p : list){ %>
						<tr>
							<input type="hidden">
							<td><%=p.get() %></td>
							<td><%=p.getUserId() %></td>
							<td><%=p.getResidence() %></td>
							<td><%=p.getChkResume() %></td>
						</tr>
					<%} %>
				<%} %>
			</table>
		</div> --%>
		
		지원서 뽑아
		<table>
		<tr>
			<th>아이디</th>
			<th>주거</th>
			<th>자격증</th>
		</tr>
		<% if(list.isEmpty()){ %>
		<tr>
			<td colspan="6">조회된 리스트가 없습니다.</td>
		</tr>
 		<%}else{ %>
			<%for(PetSitter p : list){ %>
			<tr>
				<input type="hidden">
				<td><%=p.getCanLarge() %></td>
				<td><%=p.getCanMedic() %>
				<td><%=p.getCanSick() %>
			</tr>
			<%} %>
		<%} %> 
		
		
<%-- 		<%if(loginUser != null && loginUser.getUserId().equals("admin")){ %>
			<button onclick="location.href='views/notice/noticeInsertForm.jsp'">작성하기</button>
		<%} %> --%>
		
<%@include file = "../common/footer.jsp" %>
</body>
</html>