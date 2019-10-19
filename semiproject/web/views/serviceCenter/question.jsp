

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

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
}

.sc_Menu:hover {
	cursor: pointer;
}

#question_Area{
	border: 1px solid black;
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
			<div id="FAQ" class="sc_Menu btn btn-default">FAQ</div>
			<div id="question" class="sc_Menu btn btn-default">문의하기</div>
			<div id="report" class="sc_Menu btn btn-default">신고하기</div>
		</div>
		<br>

		<div id = "question_Area" style="padding: 30px;">
			<form action="#">
				<div class="form-group">
					<label>카테고리</label> <select class="form-control">
						<option>카테고리 선택</option>
						<option value="카테고리1">카테고리1</option>
						<option value="카테고리2">카테고리2</option>
						<option value="카테고리3">카테고리3</option>
						<option value="카테고리4">카테고리4</option>
						<option value="기타">기타</option>
					</select>

				</div>
				<div class="form-group">
					<label>제목</label> <input type="text" name="subject" class="form-control">
				</div>
				<div class="form-group">
					<label>내용</label>
					<textarea name="content" class="form-control" rows="30" placeholder="내용을 입력하세요"></textarea>
				</div>
				<div id="btnArea" class = "text-right">
					<input type="button" onclick="Previous();" class="btn btn-default" value="이전으로"/> 
					<input type="button" class="btn btn-default" value="문의하기"/>
				</div>

			</form>
		</div>
	</div>

	<script>
	function Previous(){
		var check = confirm("이전으로 돌아가면 작성된 내용이 사라집니다. 진행하시겠습니까?");
		
			if(check == true){
				location.href = '<%=request.getContextPath()%>/blist.bo';
				}
			}
	
	$("#FAQ").click(function(){
		location.href = '<%=request.getContextPath()%>/blist.bo';
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
