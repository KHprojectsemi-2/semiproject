<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>LoginPage</title>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	height: 320px;
	border: 1px solid #9C9C9C;
	background-color: #EAEAEA;
}

#login .container #login-row #login-column #login-box #login-form {
	padding: 20px;
}

#login .container #login-row #login-column #login-box #login-form #register-link
	{
	margin-top: -85px;
}
</style>
<body>
	<%@include file="../common/header.jsp"%>

	<br>
	<br>
	<br>
	<div id="login">
		<h3 class="text-center text-white pt-5">Login form</h3>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" action="" method="post">
							<h3 class="text-center text-info">로그인</h3>
							<div class="form-group">
								<label for="username" class="text-info">ID:</label><br>
								<input type="text" name="userId" id="userId"
									class="form-control">
							</div>
							<div class="form-group">
								<label for="password" class="text-info">PASSWORD:</label><br>
								<input type="text" name="password" id="password"
									class="form-control">
									
							</div>
							<div class="form-group">
								<label for="remember-me" class="text-info"><span>아이디 기억
								</span> <span><input id="remember-me" name="remember-me"
										type="checkbox"></span></label><br><input type="submit"
									name="submit" class="btn btn-info btn-md" value="로그인">
							</div>

							<div id="register-link" class="text-right">
								<a href="<%=root %>/views/user/JoinFormPage.jsp" class="text-info">회원가입 하기</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$(function(){
			var offset = $("#userId").offset();
			$("#userId").focus();
			$('html,body').animate({scrollTop : offset.top-400},100);
		});
	</script>

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