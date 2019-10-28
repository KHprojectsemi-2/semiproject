<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>매칭 현황</h2>
	<form>
		<legend>진행중인 매칭</legend>
		<table>
		<thead>
			<tr>
				<td>유형</td>
				<td>예약날짜</td>
				<td>장소</td>
				<td>마이펫</td>
				<td>펫시터</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
		</table>
	</form>
	<form>
		<legend>지난 매칭</legend>
		<table>
		<thead>
			<tr>
				<td></td>
				<td>유형</td>
				<td>예약날짜</td>
				<td>장소</td>
				<td>마이펫</td>
				<td>펫시터</td>
			</tr>
		</thead>
		<tbody>
		</tbody>
		</table>
	</form>
	<div class="btn" align="center">
		<div id="goMain">이전으로</div>
	</div>
	<script>
	function goMain(){
		location.href="/semiproject/index.jsp";
	}
	</script>
</body>
</html>