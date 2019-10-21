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
<div class="outer">	
		지원서 뽑아
		<table align="center" id="listArea">
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
				<td><%=p.getUserId() %></td>
				<td><%=p.getResidence() %>
				<td><%=p.getIsLicense() %>
			</tr>
			<%} %>
		<%} %> 
		
		<script>
			$(function(){
				$("listArea td").click(function(){
					var num = $(this).parent().children().eq(0).text();
					location.href="<%=request.getContextPath()%>/applyList.ps?ps=" + num;
				});
			});
		
		</script>
		
		
<%@include file = "../common/footer.jsp" %>
</div>	
</body>
</html>