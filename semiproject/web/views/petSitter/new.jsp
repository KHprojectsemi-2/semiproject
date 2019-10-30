<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
<button onclick="abc();">가라</button>

<script>
function abc(){
	alert("넘어오니?");
	location.href = '<%=request.getContextPath()%>/applyList.ps';
}
</script>

</body>
</html>