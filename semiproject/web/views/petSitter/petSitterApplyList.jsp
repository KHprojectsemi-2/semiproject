<%@page import="java.util.ArrayList"%>
<%@page import="petSitter.model.vo.PetSitter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<PetSitter> list = (ArrayList<PetSitter>)request.getAttribute("list");
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

	<div class="outer">
		<br>
		<h2 align="center">게시판</h2>
		<div class="tableArea">
			<table align="center" id="listArea">
				<tr>
					<th width="100px">이름</th>
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
							<%-- <td><%=p.() %></td><!-- 유저에서 불러와 --> --%>
							<td><%=p.getUserId() %></td>
							<td><%=p.getCanSick() %></td>
							<td><%=p.getChkResume() %></td>
						</tr>
					<%} %>
				<%} %>
			</table>
		</div>
<%@include file = "../common/footer.jsp" %>
</body>
</html>