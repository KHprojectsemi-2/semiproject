<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="outer">
		<br>
		<h2 align="center">게시판 작성</h2>
		<div class="tableArea" align="center">
			<form action="<%=request.getContextPath() %>/insert.bo" method="post">
				<table>
					<tr>
						<td>분야</td>
						<td>
							<select name="category">
								<option>-------</option>
								<option value="10">일반</option>
								<option value="20">공지</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>제목</td>
						<td colsapn="3"><input type="text" size="58" name="title"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="3">
							<textarea rows="15" cols="60" name="content" style="resize:none"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
		</div>
	</div>
	
	<!-- 게시판 작성하기 기능 구현하러 가기 -->
	<!--  InsertBoardServlet 만들러 ㄱㄱ씽 -->
	
</body>
</html>