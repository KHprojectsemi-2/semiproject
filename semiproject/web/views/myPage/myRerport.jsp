<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../common/header.jsp" %>
	<div class="tableArea">
		<table align="center" id="listArea">
			<tr>
				<th width="100px">no</th>
				<th width="500px">나의 문의 내역</th>
				<th width="50px">답변 여부</th>
			</tr>
				<% if(list.isEmpty()){ %>
				<tr>
					<td colspan="3">문의 내역이 없습니다.</td>
				</tr>
				<%}else{ %>
					<%for(Board b : list){ %>
						<tr>
							
						</tr>
					<%} %>
				<%} %>
		</table>
	</div>
</body>
</html>