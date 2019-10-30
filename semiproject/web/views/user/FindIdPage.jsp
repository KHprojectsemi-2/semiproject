<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leopet || FindId</title>
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
						<form id="login-form" class="form" method="post" target="iframe1">
							<h3 class="text-center text-info">아이디 찾기</h3>

							<div class="form-group">
								<label for="userName" class="text-info">NAME:</label><br>
								<input type="text" name="userName" id="userName"
									class="form-control" required>
							</div>
							<div class="form-group">
								<label for="userEmail" class="text-info">BIRTH:</label><br>
							<div id="d_join">
								<select name="birth_year"  style="min-height:40px;min-width:100px">
									<% for(int i=2019;i>1920;i--) {%>
									<option value="<%=i %>"><%=i %></option>
									<%} %>
								</select>
								<select name="birth_month"  style="min-height:40px;min-width:60px">
									<% for(int i=12;i>0;i--) {%>
									<option value="<%=i %>"><%=i %></option>
									<%} %>
								</select>
								<select name="birth_day"  style="min-height:40px;min-width:60px">
									<% for(int i=31;i>0;i--) {%>
									<option value="<%=i %>"><%=i %></option>
									<%} %>
								</select>
							</div>
							</div>
							<div class="form-group">
								<label for="userEmail" class="text-info">EMAIL:</label><br>
								<input type="text" name="userEmail" id="userEmail"
									class="form-control" required>
							</div>
							<div class="form-group" style="display:block; margin-top:40px">
								<input type="submit" name="submit" class="btn btn-info btn-md" value="아이디 찾기">
								<div style="display:block; text-align:right; margin-top:10px" >
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
<iframe name="iframe1" style="display:none;"></iframe>
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
	<script>
	var flag = false;
	$(function(){
		var offset = $("#userEmail").offset();
		$("#userName").focus();
		$('html,body').animate({scrollTop : offset.top-300},400);
	});
	
	jQuery('#login-form').submit(
		    function(){
		    	var userName = $("input[name=userName]").val();
				var userEmail = $("input[name=userEmail]").val();
				var year = $("select[name=birth_year]").val();
				var month =  $("select[name=birth_month]").val();
				var day = $("select[name=birth_day]").val();
				alert(year +" "+month+" "+day+" ");
				$.ajax({
					url:"<%=request.getContextPath()%>/findId.me",
					type:"post",
					data:{userName:userName,userEmail:userEmail,year:year,month:month,day:day},
					success:function(data){
						if(data != null){
							if(!flag){
									var rdiv = $("<div>").attr({"class":"result"});
									rdiv.append($("h3").attr({"align":"center"}).css({"margin-top":"10px"}).text(userName + "님의 아이디는 "+data+"입니다."))
									$("#login-form").append(rdiv);
									flag= true;
							}else{
								$("h3").text(userName + "님의 아이디는 "+data+"입니다.");
							}
						}else{
							alert("해당되는 아이디가 없습니다.");
						}
					},
					error:function(data){
						alert("해당되는 아이디가 없습니다.");
					}
				});
				
		    });
	
/* 	$("input[name=submit]").click(function(){
	
	}); */
	</script>
</html>
