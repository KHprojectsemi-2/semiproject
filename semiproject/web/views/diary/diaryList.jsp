<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	
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
<body>
<%@include file = "../common/header.jsp" %>
	<div class="outer">	
	돌봄일지
 		<table align="center" id="listArea" >
		<tr>
			<th width="200px">번호</th>
			<th width="200px">펫시터</th>
			<th width="200px">견주</th>
			<th width="200px">방문 날짜</th>
		</tr>
		<tr>
			<td>1</td>
			<td>펫시터1</td>
			<td>견주1</td>
			<td>2019/10/21</td>
		</tr>
		<tr>
			<td>2</td>
			<td>펫시터2</td>
			<td>견주2</td>
			<td>2019/10/22</td>
		</tr>
		<tr>
			<td>3</td>
			<td>펫시터3</td>
			<td>견주3</td>
			<td>2019/10/23</td>
		</tr>
		<tr>
			<td>4</td>
			<td>펫시터4</td>
			<td>견주4</td>
			<td>2019/10/24</td>
		</tr>
		<tr>
			<td>5</td>
			<td>펫시터5</td>
			<td>견주5</td>
			<td>2019/10/25</td>
		</tr>
		<tr>
			<td>6</td>
			<td>펫시터6</td>
			<td>견주6</td>
			<td>2019/10/26</td>
		</tr>
		</table>
		
		<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				/* $(this).parent().css({"background":"darkgray", "cursor":"pointer"}); */
			}).click(function(){
				/* var num = $(this).parent().children().eq(0).text();	// petSitter 번호 */
				
				location.href='<%=request.getContextPath()%>/views/diary/realDiary.jsp';
			});
		});
		</script>
		</div>
		<br><br><br><br><br><br><br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>
</body>
</html>