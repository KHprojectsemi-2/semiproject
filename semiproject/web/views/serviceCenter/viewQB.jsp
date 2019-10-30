<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*"%>
<%
	QuestionBoard qb = (QuestionBoard)request.getAttribute("qb");
%>
<!DOCTYPE html>
<html lang="ko">
<head>

<title>관리자 문의목록 상세보기</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
#outer {
	width: 700px;
	height: 800px;
	margin-right: auto;
	margin-left: auto;	
	align: center;
}

#Menu_List {
	width: 700px;
	text-align: center;
}

.sc_Menu {
	display: inline-block;
	width: 120px;
	height: 30px;
	text-align: center;
	margin-right: 40px;
	margin-left: 40px;
	border: 1px solid #9C9C9C;
	padding : 0 !important;
}

.sc_Menu:hover {
	cursor: pointer;
}

#question_Area{
	border: 1px solid #9C9C9C;
}

button {
	width: 70px;
	height: 30px;
	margin-right: 0;
}

#btnArea {
	align: right;
}

#btnArea input{
	margin-left : 15px;
}

</style>

</head>
<body>
	<%@include file="../common/header.jsp"%>
	<br><br>

	<div id="outer">
			<div id = "question_Area" style="padding: 30px;">
				<div class="form-group">
					<label>작성자</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=qb.getUserId()%>" readonly>
					<label>제목</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=qb.getTitle()%>" readonly>
				</div>
				
				<div class="form-group">
					<label>카테고리</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=qb.getCategory()%>" readonly>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="20" readonly><%=qb.getContent() %></textarea>
				</div>
				<div id="btnArea" class = "text-right">
					<input type="button" onclick="Previous();" class="btn btn-info btn-md" value="이전으로"/>
					<input type="button" onclick="deleteQb();" class="btn btn-info btn-md" value="삭제하기"/> 
					<input type="button" onclick="writeQb();" class="btn btn-info btn-md" value="답글달기"/>
				</div>
			</div>
	</div>

	<script>
		function Previous(){
			location.href = '<%=request.getContextPath()%>/adminQBoard.bo';
		}
		
		function deleteQb(){
			var check = confirm("삭제하시겠습니까?");
			var qbn = <%=qb.getBoardNo()%>;
				if(check == true){
					location.href = '<%=request.getContextPath()%>/deleteqb.bo?qbn='+qbn;
					alert("삭제가 완료되었습니다.");
				}
			}
	
			function writeQb() {
				var qbn = <%=qb.getBoardNo()%>;
				location.href = '<%=request.getContextPath()%>/writeqb.bo?qbn='+qbn;
			}
	</script>

	<br><br><br><br><br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>

