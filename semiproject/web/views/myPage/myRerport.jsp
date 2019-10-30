<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList"%>
    
<%
	ArrayList<QuestionBoard> mrlist = (ArrayList<QuestionBoard>)request.getAttribute("mrlist");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
</style>
<title>Insert title here</title>
<style>
table{
	border:1px solid black;
	text-algin:center;	
}
td,th{
	border:1px solid black;
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp" %>
	<div class="tableArea">
	<h2 align="center">나의 문의 내역</h2>
		<table align="center" id="listArea">
			<tr>
				<th width="100px">no</th>
				<th width="500px">내용</th>
				<th width="100px">등록날짜</th>
				<th width="100px">답변여부</th>
			</tr>
				<% if(mrlist.isEmpty()){ %>
				<tr>
					<td colspan="4">문의 내역이 없습니다.</td>
				</tr>
				<%}else{ %>
					<%for(QuestionBoard b : mrlist){ %>
						<tr>
							<input type="hidden" value="<%=b.getBoardNo() %>">
							<td><%=b.getBoardNo() %></td>
							<td><%=b.getTitle() %></td>
							<td><%=b.getCreate_date() %></td>
							<td><%=b.getReBoardStatus() %></td>
						</tr>
					<%} %>
				<%} %>
		</table>
	</div>
	<div class="pagingArea" align="center">
			<!-- 맨 처음으로(<<) -->
			<button onclick="location.href='<%=request.getContextPath() %>/list.bo?currentPage=1'"> << </button>
			
			<!-- 이전 페이지로(<) -->
			<%if(pi.getCurrentPage() <= 1) {%>
				<button disabled> < </button>
			<%} else{ %>
				<button onclick="location.href='<%=request.getContextPath() %>/list.bo?currentPage=<%=pi.getCurrentPage()-1 %>'"> < </button>
			<%} %>
			
			<!-- 10개의 페이지 목록 -->
			<%for(int p = pi.getStartPage(); p<=pi.getEndPage(); p++){ %>
				<% if(p == pi.getCurrentPage()){ %>
					<button disabled><%=p %></button>
				<%} else{%>
					<button onclick="location.href='<%=request.getContextPath() %>/list.bo?currentPage=<%=p %>'"><%=p %></button>
				<%} %>
			<%} %>
			
			<!-- 다음 페이지로(>) -->
			<%if(pi.getCurrentPage() >= pi.getMaxPage()){ %>
				<button disabled> > </button>
			<%}else{ %>
				<button onclick="location.href='<%=request.getContextPath() %>/list.bo?currentPage=<%=pi.getCurrentPage()+1 %>'"> > </button>
			<%} %>
			
			<!-- 맨 끝으로(>>) -->
			<button onclick="location.href='<%=request.getContextPath() %>/list.bo?currentPage=<%=pi.getMaxPage() %>'"> >> </button>
			
		</div>
		
		<script>
			$(function(){
				$("#listArea td").mouseenter(function(){
					$(this).parent().css({"cursor":"pointer"});
				}).mouseout(function(){
					$(this).parent();
				}).click(function(){
					var boardNo=$(this).parent().children("input").val(); 
					
					location.href="<%=request.getContextPath()%>/reView.my?boardNo="+boardNo ;
				})
			});
		</script>
	<%@include file="../common/footer.jsp" %>
</body>
</html>