<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*"%>
<%
	QuestionBoard qb = (QuestionBoard)request.getAttribute("qb");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 답글달기</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
#outer {
	width: 700px;
	height: 800px;
	margin-right: auto;
	margin-left: auto;	
	align: center;
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
				<div class="form-group" style = "display : inline-block">
					작성자<input type = "text" class="form-control" value = "<%=qb.getUserId()%>" readonly>
					카테고리<input type = "text" class="form-control" value = "<%=qb.getCategory()%>" readonly>
				</div>
					<div class="form-group">
						<label>제목</label> <input id = "title" type="text" name="title" class="form-control" value = "<%=qb.getTitle() %>" readonly>
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="10" readonly><%=qb.getContent()%></textarea>
					</div>
					
					<div class="form-group">
						<label>답글</label>
						<textarea id = "recontent" style = "resize: none;" name="content" class="form-control" rows="10"></textarea>
					</div>
					<div id="btnArea" class = "text-right">
						<input type="button" onclick="Previous();" class="btn btn-info btn-md" value="이전으로"/> 
						<input type="submit" onclick="submitContent();" class="btn btn-info btn-md" value="답글달기"/>
					</div>
				
			</div>
			
	</div>

	<script>
	function Previous(){
		var check = confirm("이전으로 돌아가면 작성된 내용이 사라집니다. 진행하시겠습니까?");
			if(check == true){
				location.href = '<%=request.getContextPath()%>/adminQBoard.bo';
			}
	}
	
	function submitContent(){
		var check = confirm("작성하시겠습니까?");
		var recontent = $("#recontent").val();
		var qbn = <%=qb.getBoardNo()%>;
			if(check == true){
				location.href = "<%=request.getContextPath()%>/insert.reqbo?recontent="+recontent+"&qbn="+qbn;
				alert("작성되었습니다.");
			}
		}

	
	$("#FAQ").click(function(){
		location.href = '<%=request.getContextPath()%>/FAQList.bo';
	});
	
	$("#question").click(function(){
		location.href = '<%=request.getContextPath()%>/views/serviceCenter/question.jsp';
	});
	
	$("#report").click(function(){
		location.href = '<%=request.getContextPath()%>/views/serviceCenter/report.jsp';
	});
	</script>

	<br><br><br><br><br><br><br><br><br><br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>