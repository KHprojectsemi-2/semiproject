<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #17a2b8;
	height: 100vh;
}

#login .container #login-row #login-column #login-box {
	margin-top: 120px;
	max-width: 600px;
	height: 400px;
	border: 1px solid #9C9C9C;
	background-color: white;
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}

#login .container #login-row #login-column #login-box #login-form #register-link
	{
	margin-top: -85px;
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<div id="login">
		<h3 class="text-center text-white pt-5">Login form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="<%=request.getContextPath()%>/findId.me" method="post">
							<h3 class="text-center text-info">비밀번호 찾기</h3>
							<div class="form-group">
								<label for="username" class="text-info">ID:</label><br>
								<input type="text" name="userId" id="userId"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">PASSWORD:</label><br>
								<input type="text" name="userPwd" id="userPwd"
									class="form-control">
									
							</div>
							<div class="form-group">
							<input type="submit" name="submit" class="btn btn-info btn-md" value="아이디 찾기">
							<div style="display:inline-block;width:82%;text-align:right">
							<a href="<%=root %>/views/user/LoginPage.jsp" class="text-info" >로그인 화면으로</a>
							</div>
							</div>

							<div id="register-link" class="text-right">
								<a href="<%=root %>/views/user/FindPwdPage.jsp" class="text-info" >비밀번호를 잊으셨나요?</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>