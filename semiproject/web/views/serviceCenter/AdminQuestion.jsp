<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList, user.model.vo.*"%>

<%
	ArrayList<QuestionBoard> list = (ArrayList<QuestionBoard>)request.getAttribute("list");
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
<title>문의목록 관리</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
	#FAQ_Outer{
		width : 1200px;
		height : 600px;
		margin-right : auto;
		margin-left : auto;
	}
	
	#Menu_List {
		width: 1200px;
		text-align: center;
		
	}
	
	.sc_Menu{
    	display : inline-block;
    	border: 1px solid #9C9C9C;
        width: 120px;
		height: 30px;
       	text-align : center;
       	margin-right : 40px;
		margin-left : 40px;
		padding : 0 !important;
    }
   
    .sc_Menu:hover{
    	cursor : pointer;
    }
    
    #sc_List{
		margin-right : auto;
		margin-left : auto;
		text-align : center;
		width : 1200px;
		border : 1px solid black;
		
	}
	#sc_List th, td{
		border : 1px solid black;	
	}
	
	#content{
		height : 50px;
		align : center;
	}
	
	tr#content:hover{
		cursor : pointer;
	}

/* 
    #content_Answer {
   		width : 1000px;
		height : 250px;
   	}   */
   	
</style>
</head>
<body>
	<%@include file = "../common/header.jsp" %>
	<br><br>

	<div id = "FAQ_Outer">
		<div id="Menu_List" class = "text-center">
			<div id="FAQ" class="sc_Menu btn btn-info btn-md">FAQ관리</div>
			<div id="question" class="sc_Menu btn btn-info btn-md">문의목록관리</div>
			<div id="report" class="sc_Menu btn btn-info btn-md">신고목록관리</div>
		</div>
		<br>
		
		<div id = "tableArea">
			<table id = "sc_List">
			 	<tr align = "center">
			 		<th width = "100px">답글상태</th>
			 		<th width = "550px">내용</th>
			 		<th width = "250px">등록날짜</th>
			 		<th width = "200px">작성자</th>			 		
				</tr>
				<%for(QuestionBoard b : list){ %>
					<tr id= "content">
						<td>
							<input type = "hidden" value = "<%=b.getBoardNo()%>">
							<%=b.getReBoardStatus() %>
						</td>
						<td><%=b.getTitle() %></td>
						<td><%=b.getCreate_date() %></td>
						<td><%=b.getUserId() %></td>
					</tr>
				<%} %>
			 </table>
		 </div>
	</div>

	<input type="hidden" id="login" value=<%=loginUser %>>
	<br><br><br>
	
		<div class = "pagingArea" align = "center">
			<%if(currentPage <= 1){ %>
				<button onclick = "firstPage();"> << </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminQBoard.bo?currentPage=1'"> << </button>
			<%} %>	
		
			<%if(currentPage <= 1){ %>
				<button disabled> < </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminQBoard.bo?currentPage=<%=currentPage-1%>'"> < </button>
			<%} %>
	
			<%for(int p = startPage ; p <= endPage ; p++){ %>
				<%if(p == currentPage){ %>
					<button disabled><%=p %></button>
				<%}else{ %>
					<button onclick = "location.href = '<%=request.getContextPath()%>/adminQBoard.bo?currentPage=<%=p%>'"><%=p %></button>
				<%} %>
			<%} %>
	
			<%if(currentPage >= maxPage){ %>
				<button disabled> > </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminQBoard.bo?currentPage=<%=currentPage+1 %>'"> > </button>
			<%} %>
			
			<%if(currentPage >= maxPage){ %>
				<button onclick = "lastPage();"> >> </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminQBoard.bo?currentPage=<%=maxPage%>'"> >> </button>
			<%} %>
			
		</div>

	<br><br><br><br><br>
	<%@include file = "../common/footer.jsp" %>
	
	<script>
	
		$("#FAQ").click(function(){
			location.href = '<%=request.getContextPath()%>/AdminFAQList.bo';
		});
		
		$("#question").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/AdminQuestion.jsp';
		});
		
		$("#report").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/AdminReport.jsp';
		});
		
		$("#modifyBoard").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/modifyFAQ.jsp';
		});
		
		$(function() {
			var show = ("#sc_List");
			$("#content td").click(function() {		
				<%-- location.href = '<%=request.getContextPath()%>/views/serviceCenter/modifyFAQ.jsp'; --%>
			});
		});
		
		function lastPage(){
			alert("마지막 페이지입니다.");
		}
		
		function firstPage(){
			alert("첫 페이지입니다.");
		}
		
	</script>
	
</body>
</html>