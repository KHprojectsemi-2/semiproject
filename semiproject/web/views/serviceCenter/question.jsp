<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의하기</title>
</head>
<body>
<%@include file = "../common/header.jsp" %>
	<br><br>
		
	<div>
		<select id = "sel">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
		</select>
	<button onclick = "select();">???</button>
	</div>
	
	
	<script>
	function select(){
		console.log($("#sel").val());	
	}
	</script>



<br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>

</body>
</html>