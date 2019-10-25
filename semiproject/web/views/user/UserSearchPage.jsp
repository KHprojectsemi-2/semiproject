<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,user.model.vo.*"%>
<%
	ArrayList<User> list = (ArrayList<User>)request.getAttribute("userList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
   .outer{
      width:900px;
      height:500px;
	  border: 1px solid #9C9C9C;

      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
   }
.head{
      color: #17a2b8;
}
</style>
<body>
	<%@include file="../common/header.jsp"%>
	<%=list %>
	<h2> 아직 미완 </h2>
	<br>
	<br>
	<br>
	<div class="outer">
		<table id="listArea">
			<tr class="head">
				<th width="80px">번호</th>
				<th width="100px">아이디</th>
				<th width="100px">이름</th>
				<th width="100px">생년월일</th>
				<th width="150px">이메일</th>
				<th width="150px">연락처</th>
				<th width="100px">가입일자</th>
				<th width="100px">신고 누적</th>
				<th width="50px">상태</th>
			</tr>
				<% if(list.isEmpty()){ %>
				<tr>
					<td colspan="6">조회된 리스트가 없습니다.</td>
				</tr>
				<%}else{ %>
					<%for(User u : list){ %>
						<tr>
							<td><%=u.getUserNo() %></td>
							<td><%=u.getUserId() %></td>							
							<td><%=u.getUserName() %></td>
							<td><%=u.getUserBirth() %></td>														
							<td><%=u.getUserEmail() %></td>							
							<td><%=u.getUserPhone() %></td>	
							<td><%=u.getJoinDate() %></td>							
							<td><%=u.getReported() %></td>							
							<td><%=u.getUserStatus() %></td>									
						</tr>
					<%} %>
				<%} %>
		</table>
	</div>
	
		<script>
		// 게시판 상세보기 기능 구현하기
		$(function(){
			$("#listArea td").mouseenter(function(){
				$(this).parent().css({"background":"darkgray","cursor":"pointer"});
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});
			}).click(function(){
				var userNo = $(this).parent().children().eq(0).text();
				console.log(userNo);
				location.href="<%=request.getContextPath()%>/userDetail.bo?userNo=" + userNo;

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

	<%@include file="../common/footer.jsp"%>
	
</body>
</html>