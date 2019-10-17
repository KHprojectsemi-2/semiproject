<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시 입력 화면</title>

<!-- include libraries(jQuery, bootstrap) -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>


</head>
<body>

      <form>
        <h2 align="center">게시글 작성</h2>
		<div align="center" class="tableArea">
			<form action=/insertBbs.bo" method="post">
		 		<table>
					<div>
					<button type="submit">게시</button>
					</div>
					<tr>
						<td>제목</td>
						<td colsapn="4"><input type="text" size="60" name="title" placeholder="제목을 입력해 주세요"></td>&nbsp;&nbsp;
						<td>게시자</td>
						<td colsapn="4"><input type="text" size="24" name="poster_name"></td>
					</tr>
					<div></div>
					<tr>
						<td>게시일</td>
						<td colsapn="4"><input type="text" size="30" name="poster_date"></td>&nbsp;
						<td>구분</td>
						<td>
							<input type="radio" name="notice1" value="notice1">일반</input>&nbsp;&nbsp;
							<input type="radio" name="notice2" value="notice2">공지</input>
						</td>
					</tr>
		 			<tr>
					<td>내용</td>
					<td colspan="4">
        				<textarea name="content" id="summernote" value="content" ></textarea>
 					</td>
				</tr>
        	<script>
   	      	  $(document).ready(function() {
   	   		  $('#summernote').summernote({
   	             height: 300,                 // set editor height
   	             minHeight: null,             // set minimum height of editor
   	             maxHeight: null,             // set maximum height of editor
   	             focus: true                  // set focus to editable area after initializing summernote
   	  		   });
   			});
        	</script>
        	</table>
        </form>
 
        	<!--  InsertBbsServlet 만들러 ㄱㄱ씽 -->
</body>
</html>