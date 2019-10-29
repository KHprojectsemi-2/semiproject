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
<title>관리자FAQ</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 -->
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
			<div id="FAQ" class="sc_Menu btn btn-info btn-md">FAQ관리</div>
			<div id="question" class="sc_Menu btn btn-info btn-md">문의목록관리</div>
			<div id="report" class="sc_Menu btn btn-info btn-md">신고목록관리</div>
		</div>
		<br>
		
		<div id = "tableArea">
			<table id = "sc_List">
			 	<tr class = "list">
			 		<th width = "100px">No.</th>
			 		<th width = "500px">제목</th>
			 		<th width = "250px">등록날짜</th>
			 		<th width = "200px">작성자</th>			 		
				</tr>
				<%
				int num1 =0;
				for(Board b : list){ 
					num1=num1+1;%>
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
						<td colspan="3">
							<div>
								<textarea id = "con_answer" name="content" rows="5" cols="150" readonly><%=b.getContent() %></textarea>
							</div>
						</td>
						<td>
							<input id= "btn_hidden" type = "hidden" value = "<%=b.getBoardNo()%>">
							<button id = "modifyBoard<%=num1%>" class = "modify_Btn btn btn-info btn-md" style = "width : width: 120px; height : 25px; padding : 0;">수정하기</button>
							<br>
							<button id = "deleteBoard<%=num1%>" class = "del_Btn btn btn-info btn-md" style = "margin-top : 10px; width : width: 120px; height : 25px; padding : 0">삭제하기</button>
						</td>
					</tr>
				<%
				
				} %>	
			 </table>
		 </div>
	</div>

	<input type="hidden" id="login" value=<%=loginUser %>>
	<br><br><br>
	
		
		<div class = "pagingArea" align = "center">
			<button class = "btn btn-info btn-md" onclick = "location.href = '<%=request.getContextPath()%>/views/serviceCenter/writeFAQ.jsp'">글 작성</button>
			<%if(currentPage <= 1){ %>
				<button onclick = "firstPage();"> << </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/AdminFAQList.bo?currentPage=1'"> << </button>
			<%} %>	
		
			<%if(currentPage <= 1){ %>
				<button disabled> < </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/AdminFAQList.bo?currentPage=<%=currentPage-1%>'"> < </button>
			<%} %>
	
			<%for(int p = startPage ; p <= endPage ; p++){ %>
				<%if(p == currentPage){ %>
					<button disabled><%=p %></button>
				<%}else{ %>
					<button onclick = "location.href = '<%=request.getContextPath()%>/AdminFAQList.bo?currentPage=<%=p%>'"><%=p %></button>
				<%} %>
			<%} %>
	
			<%if(currentPage >= maxPage){ %>
				<button disabled> > </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/AdminFAQList.bo?currentPage=<%=currentPage+1 %>'"> > </button>
			<%} %>
			
			<%if(currentPage >= maxPage){ %>
				<button onclick = "lastPage();"> >> </button>
			<%}else{ %>
				<button onclick = "location.href = '<%=request.getContextPath()%>/AdminFAQList.bo?currentPage=<%=maxPage%>'"> >> </button>
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
			var show = ("#sc_List .show");	//#sc_List중에 클래스가 show인 객체 (현재 보여지고있는 객체)
			$("#content td").click(function() {		
				var hide = $(this).parents().next("tr");	// 숨겨져있는 객체
				//var no = $(this).parent().find("input").val();
				
				if ($(hide).hasClass('hide')) {
					$(show).removeClass('show').addClass('hide');	// 열려있는게 닫히고
					$(hide).addClass('show').removeClass('hide');	// 클릭한게 열린다
				} else {
					$(hide).removeClass('show').addClass('hide');	//열려있는객체를 다시 누르면 닫힌다
				}
				
			});
			
			$(".modify_Btn").click(function(){
				var bNo = $(this).parent().parent().find('input[id="btn_hidden"]').val();
				location.href = '<%=request.getContextPath()%>/selectFAQ.bo?bNo='+bNo;
			});
			
			$(".del_Btn").click(function(){
				var check = confirm("삭제하시겠습니까?");
				var bNo = $(this).parent().parent().find('input[id="btn_hidden"]').val();
				if(check == true){
					$.ajax({
						url:"<%=request.getContextPath()%>/deleteFAQ.bo",
						type:"post",
						data:{bNo:bNo},
						success:function(data){
							if(data == "success"){
								alert("삭제완료되었습니다.")
								location.href = '<%=request.getContextPath()%>/AdminFAQList.bo'
							}else{
								alert("삭제실패!");
							}
						},
						error:function(data){
							console.log("서버통신 안됨");
						}
					});
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