<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 상세보기</title>
</head>
<body>

<h2 align="center">게시글 상세보기</h2>
		<div align="center" class="tableArea">
			<form action="<%=request.getContextPath() %>/modifybbs.bo" method="post">
				<table>
					<div>
					<button type="submit">수정게시</button>
					</div>
					<tr>
						<td>제목</td>
						<td colsapn="4"><input type="text" size="60" name="title" ></td>&nbsp;&nbsp;
						<td>게시자</td>
						<td colsapn="4"><input type="text" size="30" name="poster_name" readonly></td>
						
					</tr>
					<tr>
						<td>게시일</td>
						<td colsapn="4"><input type="text" size="30" name="poster_date"></td>&nbsp;&nbsp;
						<td>분야</td>
						<td>
							<select name="category">
								<option>-------</option>
								<option value="0">일반</option>
								<option value="1">공지</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>내용</td>
						<td colspan="4">
							<textarea rows="15" cols="107" name="content" style="resize:none"></textarea>
						</td>
					</tr>

				</table>
				<br>
					<div align="center">
						<button type="submit">첨부</button>
					</div>
				<br>
			</form>
		</div>
	</div>
	
</body>
</html>