<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*, java.util.ArrayList, user.model.vo.*"%>

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

<style>
	#FAQ_Outer{
		width : 1200px;
		height : 500px;
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
	}
	
	tr#content:hover{
		cursor : pointer;
	}
	
	.hide {
		display:none;
	}
	#con_answer{
		resize: none;
		text-align : center;
		padding : 20px;
		line-height: 200%;
	}
   	
</style>
</head>
<body>
	<%@include file = "../common/header.jsp" %>
	<br><br>

	<div id = "FAQ_Outer">
		<div id="Menu_List" class = "text-center">
			<div id="FAQ" class="sc_Menu btn btn-info btn-md">FAQ</div>
			<div id="question" class="sc_Menu btn btn-info btn-md">문의하기</div>
			<div id="report" class="sc_Menu btn btn-info btn-md">신고하기</div>
		</div>
		<br>
		
		<div id = "tableArea">
			<table id = "sc_List">
			 	<tr class = "list">
			 		<th width = "100px">No.</th>
			 		<th width = "550px">내용</th>
			 		<th width = "250px">등록날짜</th>
			 		<th width = "200px">작성자</th>	 		
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
					<td class = "ans" colspan="4">
						<textarea id = "con_answer"  name="content" rows="5" cols="150" readonly><%=b.getContent() %></textarea>
					</td>
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
			<button onclick = "location.href = '<%=request.getContextPath()%>/FAQList.bo?currentPage=1'"> << </button>
		<%} %>	
	
		<%if(currentPage <= 1){ %>
			<button disabled> < </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/FAQList.bo?currentPage=<%=currentPage-1%>'"> < </button>
		<%} %>

		<%for(int p = startPage ; p <= endPage ; p++){ %>
			<%if(p == currentPage){ %>
				<button disabled><%=p %></button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/FAQList.bo?currentPage=<%=p%>'"><%=p %></button>
			<%} %>
		<%} %>

		<%if(currentPage >= maxPage){ %>
			<button disabled> > </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/FAQList.bo?currentPage=<%=currentPage+1 %>'"> > </button>
		<%} %>
		
		<%if(currentPage >= maxPage){ %>
			<button onclick = "lastPage();"> >> </button>
		<%}else{ %>
			<button onclick = "location.href = '<%=request.getContextPath()%>/FAQList.bo?currentPage=<%=maxPage%>'"> >> </button>
		<%} %>	
		
		<br><br><br><br><br>
	<%@include file = "../common/footer.jsp" %>
		
	</div>	

	<script>
	
		$("#FAQ").click(function(){
			location.href = '<%=request.getContextPath()%>/FAQList.bo';
		});
		
		$("#question").click(function(){
			var loginUser = $("#login").val();
			
			if(loginUser == 'null'){			
				alert("로그인이 필요합니다.");
				location.href = '<%=request.getContextPath()%>/views/user/LoginPage.jsp';
			}else{
				location.href = '<%=request.getContextPath()%>/views/serviceCenter/question.jsp';
			}
		});
		
		$("#report").click(function(){
			var loginUser = $("#login").val();
			
			if(loginUser == 'null'){
				alert("로그인이 필요합니다.");
				location.href = '<%=request.getContextPath()%>/views/user/LoginPage.jsp';			
			}else{
				location.href = '<%=request.getContextPath()%>/views/serviceCenter/report.jsp';
			}		
		});
		
		$(function() {
			var show = ("#sc_List .show");	//#sc_List중에 클래스가 show인 객체 (현재 보여지고있는 객체)

			$("#content td").click(function() {		
				var hide = $(this).parents().next("tr");	// 숨겨져있는 객체
				//var hide = $(this).parents().find("td.ans");
				//alert(hide);
				//$(hide).slideToggle();
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