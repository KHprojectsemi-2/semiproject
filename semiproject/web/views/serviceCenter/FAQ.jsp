<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList"%>

<%
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
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
<title>FAQ</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 -->
<style>
	#FAQ_Outer{
		width : 1000px;
		height : 500px;
		margin-right : auto;
		margin-left : auto;
	}
	
	#Menu_List {
		width: 1000px;
		text-align: center;
	}
	
	.sc_Menu{
    	display : inline-block;
    	border : 1px solid black;
        width: 120px;
		height: 30px;
       	text-align : center;
       	margin-right : 40px;
		margin-left : 40px;
    }
   
    .sc_Menu:hover{
    	cursor : pointer;
    }
    
    #sc_List{
		margin-right : auto;
		margin-left : auto;
		text-align : center;
		width : 1000px;
		border : 1px solid black;
		
	}
	#sc_List th, td{
		border : 1px solid black;	
	}
	
	#content{
		height : 30px;
	}
	
	tr#content:hover{
		cursor : pointer;
	}
	
	.hide {
		display:none;
	}  
/* 
    #content_Answer {
   		width : 1000px;
		height : 250px;
   	}   */
   	
   	#tableArea{
   		border : 1px solid red;
   	}
</style>

</head>
<body>
	<%@include file = "../common/header.jsp" %>
	<br><br>

	<div id = "FAQ_Outer">
		<div id="Menu_List" class = "text-center">
			<div id="FAQ" class="sc_Menu btn btn-default">FAQ</div>
			<div id="question" class="sc_Menu btn btn-default">문의하기</div>
			<div id="report" class="sc_Menu btn btn-default">신고하기</div>
		</div>
		<br>
		
		<div id = "tableArea">
			<table id = "sc_List">
			 	<tr class = "list">
			 		<th width = "100px">글번호</th>
			 		<th width = "550px">내용</th>
			 		<th width = "250px">등록날짜</th>
			 		<th width = "100px">작성자</th>
			 		
				</tr>
				<%for(Board b : list){ %>
					<tr id= "content">
						<td>
							<input type = "hidden" value = "<%=b.getBoardNo()%>">
							<%=b.getBoardNo() %>
						</td>
						<td><%=b.getTitle() %></td>
						<td><%=b.getCreateDate() %></td>
						<td><%=b.getUserId() %></td>
					</tr>
					<tr id = "content_Answer" class = "hide">
						<td colspan="4">
							<div>
								<br><br><br><br>					
								<p><%=b.getContent() %></p>
								<br><br><br><br>
								
							</div>
						</td>								
					</tr>
				<%} %>	
			 </table>
		 </div>
	</div>	
	
	<div class = "pagingArea" align = "center">
		<%if(currentPage <= 1){ %>
			<button onclick = "firstPage();"> << </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/blist.bo?currentPage=1'"> << </button>
		<%} %>	
	
		<%if(currentPage <= 1){ %>
			<button disabled> < </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/blist.bo?currentPage=<%=currentPage-1%>'"> < </button>
		<%} %>

		<%for(int p = startPage ; p <= endPage ; p++){ %>
			<%if(p == currentPage){ %>
				<button disabled><%=p %></button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/blist.bo?currentPage=<%=p%>'"><%=p %></button>
			<%} %>
		<%} %>

		<%if(currentPage >= maxPage){ %>
			<button disabled> > </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/blist.bo?currentPage=<%=currentPage+1 %>'"> > </button>
		<%} %>
		
		<%if(currentPage >= maxPage){ %>
			<button onclick = "lastPage();"> >> </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/blist.bo?currentPage=<%=maxPage%>'"> >> </button>
		<%} %>	
	
	</div>	

	<br><br><br><br><br>
	<%@include file = "../common/footer.jsp" %>
	
	<script>
	
		$("#FAQ").click(function(){
			location.href = '<%=request.getContextPath()%>/blist.bo';
		});
		
		$("#question").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/question.jsp';
		});
		
		$("#report").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/report.jsp';
		});
		
		$(function() {
			var show = ("#sc_List .show");	//#sc_List중에 클래스가 show인 객체 (현재 보여지고있는 객체)

			$("#content td").click(function() {		
				var hide = $(this).parents().next("tr");	// 숨겨져있는 객체

				if ($(hide).hasClass('hide')) {
					
					$(show).removeClass('show').addClass('hide');	// 열려있는게 닫히고
					$(hide).addClass('show').removeClass('hide');	// 클릭한게 열린다
					 
				} else {
					$(hide).removeClass('show').addClass('hide');	//열려있는객체를 다시 누르면 닫힌다
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