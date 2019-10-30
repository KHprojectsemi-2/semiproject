<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leopet || FindPwd</title>

<script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.3.2/email.min.js"></script>
<script type="text/javascript">
   (function(){
      emailjs.init("user_ZRwz4I6lOX6VqMRLja9yl");
   })();
</script>

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
	height: 500px;
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
.result{
	margin-top:80px;
	width:100%;
	height:50px;
	border:1px solid #9C9C9C;
	background-color : lightgray;
}

</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>
	<div id="login">
		<br><br><br><br><br>
		<div class="container">
			<div id="login-row"
				class="row justify-content-center align-items-center">
				<div id="login-column" class="col-md-6">
					<div id="login-box" class="col-md-12">
						<form id="login-form" class="form" method="post">
							<h3 class="text-center text-info">비밀번호 찾기</h3>

							<div class="form-group">
								<label for="userName" class="text-info">NAME:</label><br>
								<input type="text" name="userName" id="userName"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="userId" class="text-info">ID:</label><br>
								<input type="text" name="userId" id="userId"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="userEmail" class="text-info">EMAIL:</label><br>
								<input type="text" name="userEmail" id="userEmail"
									class="form-control" required>
							</div>

							<div class="form-group" style="display:block; margin-top:40px">
								<input type="button" id="submit" name="submit" class="btn btn-info btn-md" value="비밀번호 찾기">
							</div>	
							<div class="form-group" style="display:block;text-align:right;">
								<a href="<%=root %>/views/user/LoginPage.jsp" class="text-info" >로그인 화면으로</a>
							</div>	
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
	
	$(function(){
		var offset = $("#userEmail").offset();
		$("#userName").focus();
		$('html,body').animate({scrollTop : offset.top-400},400);
	});
	

	$("#submit").click(function(){
		var userId = $("input[name=userId]").val();
		var userEmail = $("input[name=userEmail]").val();
		var userName = $("input[name=userName]").val();
			$.ajax({
				url:"<%=request.getContextPath()%>/findPwd.me",
				type:"post",
				data:{userId:userId,userEmail:userEmail,userName:userName},
				success:function(data){
					if(data!="fail"){
					var template_params = {
							   "userEmail": userEmail,
							   "reply_to": "reply_to_value",
							   "pettrase": "펫트라슈",
							   "userName": userName,
							   "code": data
							}

							var service_id = "Patrasche";
							var template_id = "semipet";
							emailjs.send(service_id, template_id, template_params); 

							alert(userId + "님에게 이메일로 임시비밀번호를 발송하였습니다.");
					location.href='LoginPage.jsp';
					}
					else{
						alert("해당하는 정보가 없습니다!");
					}
				},
				error:function(data){
					console.log("서버 통신 안됨");
				}
			});
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
	<br>
	<br>
	<br>
	<%@include file="../common/footer.jsp"%>
</body>
</html>