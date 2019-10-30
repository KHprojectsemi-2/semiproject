<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*"%>
<%
	Board b = (Board)request.getAttribute("b");
%>
<!DOCTYPE html>
<html lang="ko">
<head>

<title>FAQ수정하기</title>

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

#modify_Area{
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
#content{
	padding : 20px;
}

</style>

</head>
<body>
	<%@include file="../common/header.jsp"%>
	<br><br>

	<div id="outer">
		<div id = "modify_Area" style="padding: 30px;">
			<div class="form-group">
			<input id = "hiddenbno" type = "hidden" value = "<%=b.getBoardNo()%>">
				<label>제목</label> <input id = "title" value = "<%=b.getTitle() %>" type="text" name="title" class="form-control" style = "height : 40px;">
			</div>
			<div class="form-group">
				<label>내용</label>
				<textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="20" placeholder="내용을 입력하세요"><%=b.getContent() %></textarea>
			</div>
			<div id="btnArea" class = "text-right">
				<input type="button" onclick="Previous();" class="btn btn-info btn-md" value="이전으로"/> 
				<input type="submit" onclick="submitContent();" class="btn btn-info btn-md" value="수정하기"/>
			</div>	
		</div>	
	</div>

	<script>
	function Previous(){
		var check = confirm("이전으로 돌아가면 작성된 내용이 사라집니다. 진행하시겠습니까?");
		
			if(check == true){
				location.href = '<%=request.getContextPath()%>/AdminFAQList.bo';
			}
	}
	
	function submitContent(){
		var check = confirm("수정하시겠습니까?");

		var title = $("#title").val();
		var content = $("#content").val();
		var bNo = $("#hiddenbno").val();
		
			if(check == true){
				if(title.trim().length == 0){
					alert("제목을 입력하세요");
					$("#title").focus();
				}else if(content.trim().length == 0){
					alert("내용을 작성해주세요");
					$("#content").focus();
				}else{
					location.href = "<%=request.getContextPath()%>/modifyFAQ.bo?bNo="+bNo+"&title="+title+"&content="+content;
					alert("수정되었습니다.");
				}
			}
		
	}
	</script>

	<br><br><br><br><br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>