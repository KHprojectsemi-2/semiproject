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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
						<form id="login-form" class="form" action="<%=request.getContextPath()%>/login.me" method="post">
							<h3 class="text-center text-info">로그인</h3>
							<div class="form-group">
								<label for="username" class="text-info">ID:</label><br>
								<input type="text" name="userId" id="userId"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="password" class="text-info">PASSWORD:</label><br>
								<input type="password" name="userPwd" id="userPwd"
									class="form-control" required>
									
							</div>
							<div class="form-group">
								<label for="remember-me" class="text-info"><span>아이디 기억
								</span> <span><input id="remember-me" name="remember-me"
										type="checkbox"></span></label><br><input type="submit"
									name="submit" class="btn btn-info btn-md" value="로그인">
							<div style="display:inline-block;width:82%;text-align:right">
							<a href="<%=root %>/views/user/JoinFormPage.jsp" class="text-info" >회원가입</a>
							</div>
							</div>

							<div id="register-link" class="text-right">
								<a href="<%=root %>/views/user/FindIdPage.jsp" class="text-info" >아이디를 잊으셨나요?</a>
							</div>
							<div class="form-group" style="margin-top:60px">
							<a id="kakao-login-btn"></a>
							<a href="http://developers.kakao.com/logout"></a>
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
			$('html,body').animate({scrollTop : offset.top-300},400);
		});
		 
		// 계속 자동 로그인될 시 https://accounts.kakao.com/weblogin/account/info에서 로그아웃 하고 하자
		
	    // 사용할 앱의 JavaScript 키를 설정해 주세요.
	    Kakao.init('f01271f22ed5c9e5cab931b076daa5ce');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
	    // 카카오 로그인 버튼을 생성합니다.
	    Kakao.Auth.createLoginButton({
	     container: '#kakao-login-btn',
	     success: function(authObj) {
	      
	      // 로그인 성공시, API를 호출합니다.
	      Kakao.API.request({
	       url: '/v1/user/me',
	       success: function(res) {
	        console.log(res);

	        var userID = res.id;      //유저의 카카오톡 고유 id
	        var userEmail = res.kaccount_email;   //유저의 이메일
	        var userName = res.properties.nickname; //유저가 등록한 별명
	        
	        console.log(userID);
	        console.log(userEmail);
	        console.log(userName);
	 

	       // User user= new User(userID,userName,userEmail);
	       // request.setAttribute("kakaoUser",user);
	       location.replace("JoinFormPage.jsp?&kakao_email="+userEmail+"&kakao_name="+userName);

	       },
	       fail: function(error) {
	        alert(JSON.stringify(error));
	       }
	      });
	     },
	     fail: function(err) {
	      alert(JSON.stringify(err));
	     }
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