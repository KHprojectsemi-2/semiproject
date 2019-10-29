<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.*,user.model.vo.*,board.model.vo.PageInfo"%>
<%
	ArrayList<User> list = (ArrayList<User>)request.getAttribute("userList");
	PageInfo pi = (PageInfo)request.getAttribute("pi");

	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>leopet || UserList</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
.searchArea{
	display: inline-block;
	height : 40px;
	width: 450px;
	border: 1px solid #17a2b8;
	background: #ffffff
}
#searchInput{
	font-size:16px;
	width:325px;
	padding:5px;
	border:0px;
	outline:none;
	float:left;
}
.searchBtn{
	width:50px;
	height:100%;
	border:0px;
	background: #17a2b8;
	outline: none;
	float: right;
	color: #ffffff;
}
.searchSel{
	height:100%;
	float:left;
	outline: none;
	
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
	tr >th{
			
	}
}
</style>
<body>
	<%@include file="../common/header.jsp"%>
	<br>
	<br>
	<br>
		<table id="listArea" class="table" style="width:80%">
			<tbody>
			<tr class="head" >
				<th width="80px" id="no">번호</th>
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
							<td style="padding: .5rem"><%=u.getUserNo() %></td>
							<td style="padding: .5rem"><%=u.getUserId() %></td>							
							<td style="padding: .5rem"><%=u.getUserName() %></td>
							<td style="padding: .5rem"><%=u.getUserBirth() %></td>														
							<td style="padding: .5rem"><%=u.getUserEmail() %></td>							
							<td style="padding: .5rem"><%=u.getUserPhone() %></td>	
							<td style="padding: .5rem"><%=u.getJoinDate() %></td>							
							<td style="padding: .5rem"><%=u.getReported() %></td>							
							<td style="padding: .5rem"><%=u.getUserStatus() %></td>									
						</tr>
					<%} %>
				<%} %>
				</tbody>
		</table>
		<br><br>
		<div style="width:100%;text-align:center;">
		<div class="searchArea">
		<select class="searchSel" name="category"  style="min-height=10px">
				<option>-----</option>
				<option value="userId">아이디</option>
				<option value="userName">이름</option>		
		</select>
			<input type="text" id="searchInput">
			<button class="searchBtn">검색</button>
		</div>
		</div>
			<!-- 페이징 처리 시작 -->
		<br><br>
		<div class="pagingArea" align="center">
			<ul class="pagination  justify-content-center">
			<!-- 맨 처음으로(<<) -->
				<li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/userSearch.li?currentPage=1"> << </a></li>
				
			<!--  이전 페이지로(<) -->
			<%if(currentPage<=1) {%>
				<li class="page-item disabled"><a class="page-link" href="#"> prev </a></li>
			
			<%}else{ %>
				<li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/userSearch.li?currentPage=<%=currentPage-1 %>"> prev </a></li>
			<%} %>
			
			<!-- 10개의 페이지 목록 -->
			<% for(int p = startPage; p<=endPage; p++) {%>
				<%if(p==currentPage){%>
					<li class="page-item active"><a class="page-link" href="#"><%=p %></a></li>
				<%}else{%>
					<li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/userSearch.li?currentPage=<%=p %>"><%=p %></a></li>
				<%}%>
			<%} %>
			
			<%if(currentPage>=maxPage) {%>
				<li class="page-item disabled"><a class="page-link" href="#"> next </a></li>		
			
			<%}else{ %>
				<li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/userSearch.li?currentPage=<%=currentPage+1 %>"> next </a></li>
			<%} %>
			
			<li class="page-item"><a class="page-link" href="<%=request.getContextPath() %>/userSearch.li?currentPage=<%=maxPage %>"> >> </a></li>
			</ul>
	
		</div>
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