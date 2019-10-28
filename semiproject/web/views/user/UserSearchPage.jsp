<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,user.model.vo.*"%>
<%
	ArrayList<User> list = (ArrayList<User>)request.getAttribute("userList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leopet || UserList</title>
</head>
<style>

table { 
	border-collapse: collapse; 
	border : 1px solid black	;
	margin:50px auto;
	}
}
tbody {
}

/* Zebra striping */
.table tbody tr:nth-child(odd) { 
    background: #eee; 
 
} 
 
.table tbody tr:nth-child(even) { 
    background: white; 
} 
.table tbody tr:hover { 
 
 	cursor: pointer;
    background: grey; 
}
th { 
	background: #17a2b8; 
	color: white; 
	font-weight: bold; 
	}

td, th { 
	padding: 10px; 
	border: 1px solid #ccc; 
	text-align: left; 
	font-size: 14px;
	}

/* 
Max width before this PARTICULAR table gets nasty
This query will take effect for any screen smaller than 760px
and also iPads specifically.
*/
@media 
only screen and (max-width: 760px),
(min-device-width: 768px) and (max-device-width: 1024px)  {

	/* Force table to not be like tables anymore */
	table, thead, tbody, th, td, tr { 
		display: block; 
	}
	
	/* Hide table headers (but not display: none;, for accessibility) */
	thead tr { 
		position: absolute;
		top: -9999px;
		left: -9999px;
	}
	
	tr { border: 1px solid #ccc; }
	
	td { 
		/* Behave  like a "row" */
		border: none;
		border-bottom: 1px solid #eee; 
		position: relative;
		padding-left: 50%; 
	}

	td:before { 
		/* Now like a table header */
		position: absolute;
		/* Top/left values mimic padding */
		top: 6px;
		left: 6px;
		width: 45%; 
		padding-right: 10px; 
		white-space: nowrap;
		/* Label the data */
		content: attr(data-column);

		color: #000;
		font-weight: bold;
	}
}
</style>
<body>
	<%@include file="../common/header.jsp"%>
	<h2> 아직 미완 </h2>
	<br>
	<br>
	<br>
		<table id="listArea" class="table" style="width:80%">
			<tbody>
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
				</tbody>
		</table>
		<script>
		// 게시판 상세보기 기능 구현하기
		$(function(){
			$("#listArea td").click(function(){
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