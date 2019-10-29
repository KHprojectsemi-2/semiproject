<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList, user.model.vo.*"%>
<%
	ArrayList<ReportBoard> rb = (ArrayList<ReportBoard>)request.getAttribute("list");
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
<title>신고하기 목록</title>
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
	
	.rlist{
		height : 50px;
		align : center;
	}
	
	tr.rlist:hover{
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
			 		<th width = "100px">신고자</th>
			 		<th width = "500px">제목</th>
			 		<th width = "250px">등록날짜</th>
			 		<th width = "100px">신고대상</th>
			 		<th width = "100px">타입</th>
			 		<th width = "100px">처리상태</th>	  		
				</tr>
				<%for(ReportBoard b : rb){ %>
					<tr class= "rlist">
						<td>
							<input id = "hideNo" type = "hidden" value = "<%=b.getBoardNo()%>">
							<%=b.getUserId()%>
						</td>
						<td><%=b.getTitle() %></td>
						<td><%=b.getCreateDate() %></td>
						<td>
							<input id = "hideRepUser" type = "hidden" value = "<%=b.getRepUser()%>">
							<%=b.getRepUser() %>
						</td>
						
						<td><%=b.getRepType()%></td>
						<td>
							<input id = "hideRepStatus" type = "hidden" value = "<%=b.getRepStatus()%>">
							<%=b.getRepStatus()%>
						</td>
					</tr>
				<%} %>
			 </table>
		 </div>
	</div>
	<br><br><br>
	
		<div class = "pagingArea" align = "center">
			<%if(currentPage <= 1){ %>
				<button onclick = "firstPage();"> << </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminRBoard.bo?currentPage=1'"> << </button>
			<%} %>	
		
			<%if(currentPage <= 1){ %>
				<button disabled> < </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminRBoard.bo?currentPage=<%=currentPage-1%>'"> < </button>
			<%} %>
	
			<%for(int p = startPage ; p <= endPage ; p++){ %>
				<%if(p == currentPage){ %>
					<button disabled><%=p %></button>
				<%}else{ %>
					<button onclick = "location.href = '<%=request.getContextPath()%>/adminRBoard.bo?currentPage=<%=p%>'"><%=p %></button>
				<%} %>
			<%} %>
	
			<%if(currentPage >= maxPage){ %>
				<button disabled> > </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminRBoard.bo?currentPage=<%=currentPage+1 %>'"> > </button>
			<%} %>
			
			<%if(currentPage >= maxPage){ %>
				<button onclick = "lastPage();"> >> </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/adminRBoard.bo?currentPage=<%=maxPage%>'"> >> </button>
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
			$(".rlist td").click(function() {	
				var rbn = $(this).parent().find('input[id="hideNo"]').val();
				var repUser = $(this).parent().find('input[id="hideRepUser"]').val();
				var repCheck = $(this).parent().find('input[id="hideRepStatus"]').val();
				if(repCheck == 'Y'){
					alert("이미 신고처리된 항목입니다.");
				}else{
					location.href = '<%=request.getContextPath()%>/selectrb.bo?rbn='+rbn+'&repUser='+repUser;				
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