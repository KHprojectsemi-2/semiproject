<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList, user.model.vo.*"%>

<%
	ArrayList<QuestionBoard> qb = (ArrayList<QuestionBoard>)request.getAttribute("list");
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
	
	.qlist{
		height : 50px;
		align : center;
	}
	
	tr.qlist:hover{
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
			 		<th width = "500px">제목</th>
			 		<th width = "150px">등록날짜</th>
			 		<th width = "150px">작성자</th>			 		
				</tr>
				<%for(QuestionBoard b : qb){ %>
					<tr class= "qlist">
						<td>
							<input id = "hideNo" type = "hidden" value = "<%=b.getBoardNo()%>">
							<input id = "qbStatus" type = "hidden" value = "<%=b.getReBoardStatus() %>">
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
			location.href = '<%=request.getContextPath()%>/adminQBoard.bo';
		});
		
		$("#report").click(function(){
			location.href = '<%=request.getContextPath()%>/adminRBoard.bo';
		});
		
		$(function() {
			$(".qlist td").click(function() {	
				var status = $(this).parent().find('input[id="qbStatus"]').val();
				if(status == 'Y'){
					alert("답글작성이 완료된 목록입니다.");
				}else{
					var qbn = $(this).parent().find('input[id="hideNo"]').val();
					location.href = '<%=request.getContextPath()%>/selectqb.bo?qbn='+qbn;
				}
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