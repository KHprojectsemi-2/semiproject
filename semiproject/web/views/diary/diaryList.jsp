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
<style>
	/* table{
		border:1px solid black;
	}
	 */
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</style>
</head>
<body>
<%@include file = "../common/header.jsp" %>
	<div class="outer">	
 		<table class="type09" align="center" id="listArea" >
 		<thead>
		<tr>
			<th width="200px">번호</th>
			<th width="200px">펫시터</th>
			<th width="200px">견주</th>
			<th width="200px">방문 날짜</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<th>1</th>
			<td>petsitter</td>
			<td>animalfarm</td>
			<td>2019/10/31</td>
		</tr>

		</tbody>
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