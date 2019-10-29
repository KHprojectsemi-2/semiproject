<%@page import="matching.model.vo.Matching"%>
<%@page import="petSitter.model.vo.PetSitter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="diary.model.vo.Diary"%>
<%
	ArrayList<Diary> list = (ArrayList<Diary>)request.getAttribute("arr");
	PetSitter p = new PetSitter();
	Matching m = new Matching();
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
		border:1px solid black;
	}
</style>
</head>
<!-- 관리자가 펫시터 지원서 관리하는 페이지 -->
<body>
<%@include file = "../common/header.jsp" %>
<div class="outer">	
	돌봄일지
 		<table align="center" id="listArea" >
		<tr>
			<th width="200px">번호</th>
			<th width="200px">아이디</th>
			<th width="200px">신청 날짜</th>
		</tr>
 		<%for(Diary d : list){ %>
		<tr>
			<%-- <input type="hidden" name="<%=p.getPetSitterNo() %>" value="<%=p.getPetSitterNo() %>"> --%>
			<td><%=d.getDiaryNo() %></td>
 			<td><%=p.getUserId() %></td>
			<td><%=m.getCareDate() %></td>
		</tr>
		<%} %> 
		</table> 
</div>	

		<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				/* $(this).parent().css({"background":"darkgray", "cursor":"pointer"}); */
			}).click(function(){
				var num = $(this).parent().children().eq(0).text();	// petSitter 번호
				
				location.href='<%=request.getContextPath()%>/view.dr?num='+num;
			});
		});
		</script>


<br><br><br><br><br><br><br>
</body>
</html>