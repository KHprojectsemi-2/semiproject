<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>

<title>문의하기</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
		<div id="Menu_List">
			<div id="FAQ" class="sc_Menu btn btn-info btn-md">FAQ</div>
			<div id="question" class="sc_Menu btn btn-info btn-md">문의하기</div>
			<div id="report" class="sc_Menu btn btn-info btn-md">신고하기</div>
		</div>
		<br>
		
			<div id = "question_Area" style="padding: 30px;">
				
					<div class="form-group">
						<label>카테고리</label> <select id = "category" name = "category" class="form-control" style = "height : 40px;">
							<option value="카테고리1" selected>카테고리1</option>
							<option value="카테고리2">카테고리2</option>
							<option value="카테고리3">카테고리3</option>
							<option value="카테고리4">카테고리4</option>
							<option value="기타">기타</option>
						</select>
	
					</div>
					<div class="form-group">
						<label>제목</label> <input id = "title" type="text" name="title" class="form-control" style = "height : 40px;">
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="20" placeholder="내용을 입력하세요"></textarea>
					</div>
					<div id="btnArea" class = "text-right">
						<input type="button" onclick="Previous();" class="btn btn-info btn-md" value="이전으로"/> 
						<input type="submit" onclick="submitContent();" class="btn btn-info btn-md" value="문의하기"/>
					</div>
				
			</div>
			
	</div>

	<script>
	function Previous(){
		var check = confirm("이전으로 돌아가면 작성된 내용이 사라집니다. 진행하시겠습니까?");
		
			if(check == true){
				location.href = '<%=request.getContextPath()%>/FAQList.bo';
			}
	}
	
	function submitContent(){
		var check = confirm("작성하시겠습니까?");
		var category = $("#category").val();
		var title = $("#title").val();
		var content = $("#content").val();
		
			if(check == true){
				if(title.trim().length == 0){
					alert("제목을 입력하세요");
					$("#title").focus();
				}else if(content.trim().length == 0){
					alert("내용을 작성해주세요");
					$("#content").focus();
				}else{
					location.href = "<%=request.getContextPath()%>/insert.qbo?category="+category+"&title="+title+"&content="+content;
					alert("작성되었습니다. 메인화면으로 이동합니다.");
				}
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

	<br><br><br><br><br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>
