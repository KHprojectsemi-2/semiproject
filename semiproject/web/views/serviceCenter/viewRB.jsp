<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, user.model.vo.User" %>
<%
	ReportBoard rb = (ReportBoard)request.getAttribute("rb");
	User user = (User)request.getAttribute("user");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 신고하기 상세보기</title>

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
					<label>작성자</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=rb.getUserId()%>" readonly>
					<label>제목</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=rb.getTitle()%>" readonly>
				</div>
				
				<div class="form-group">
					<label>신고대상</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=rb.getRepUser()%>" readonly>
					<label>신고날짜</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;" value = "<%=rb.getCreateDate()%>" readonly>
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="15" readonly><%=rb.getContent() %></textarea>
				</div>
				<div id="btnArea" class = "text-right">
					<input type="button" onclick="Previous();" class="btn btn-info btn-md" value="이전으로"/>
					<input type="button" onclick="deleteRB();" class="btn btn-info btn-md" value="삭제하기"/> 
					<input type="button" onclick="report();" class="btn btn-info btn-md" value="신고하기"/>
				</div>
			</div>
	</div>

	<script>
		function Previous(){
			location.href = '<%=request.getContextPath()%>/adminRBoard.bo';
		}
	
		function deleteRB(){
			var check = confirm("삭제하시겠습니까?");
			var rbn = <%=rb.getBoardNo()%>;
				if(check == true){
					location.href = '<%=request.getContextPath()%>/deleterb.bo?rbn='+rbn;
					alert("삭제가 완료되었습니다.");
				}
			}
	
			function report() {
				var rbn = <%=rb.getBoardNo()%>;
				var repUserId = "<%=user.getUserId()%>";
				
				var check = confirm("신고처리 하시겠습니까?");
				if(check == true){
					alert("처리되었습니다.");
					location.href = '<%=request.getContextPath()%>/addrepPoint.bo?rbn='+rbn+'&repUserId='+repUserId;
				}
				
			}
	</script>

	<br><br><br><br><br><br><br><br><br><br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>