<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style>
	#FAQ_Outer{
		width : 900px;
		height : 500px;
		/* border : 1px solid black; */	
		margin-right : auto;
		margin-left : auto;
	}
	
	#Menu_List{
		width : 900px;
		margin-top : 5px;
		text-align : center;		
	}
	
	.sc_Menu{
    	display : inline-block;
        border : 1px solid black;
        width : 150px;
        height : 35px;
       	text-align : center;
       	margin-right : 40px;
		margin-left : 40px;
		padding-top : 5px;
       
    }
    .sc_Menu:hover{
    	cursor : pointer;
    }
    
    #sc_List{
		margin-right : auto;
		margin-left : auto;
		text-align : center;
		width : 900px;
		border : 1px solid black;
		
	}
	#sc_List th, td{
		border : 1px solid black;		
	}
	
	/* #content{
		height : 35px;
	} */
	
	tr#content:hover{
		cursor : pointer;
	}
	
	.hide {
		display:none;
	}  

    .show {
   		width : 900px;
		height : 150px;		 
   	}  
</style>

</head>
<body>
	<%@include file = "../common/header.jsp" %>
	<br><br>

	<div id = "FAQ_Outer">
		<div id = "Menu_List">
			<div id = "FAQ" class = "sc_Menu">FAQ</div>
			<div id = "inquiry" class = "sc_Menu">문의하기</div>
			<div id = "report" class = "sc_Menu">신고하기</div>
		</div>
	
		<br>
		
		 <table id = "sc_List">
		 	<tr class = "list">
		 		<th width = "100px">글번호</th>
		 		<th width = "550px">내용</th>
		 		<th width = "250px">등록날짜</th>
			</tr>
			<%for(int i=5; i>0; i--){ %>
				<tr id= "content">
					<td>
						<input type = "hidden" value = "<%=i%>">
						<%=i %>
					</td>
					<td>내용부분</td>
					<td>2019/10/15</td>
				</tr>
				<tr id = "content_Answer" class = "hide">
					<td colspan="3">
						<div>					
							<p>내용 들어가는부분<%=i %></p>
						</div>
					</td>								
				</tr>
			<%} %>
	
		 </table>	
	</div>	

	<br><br><br><br><br>
	<%@include file = "../common/footer.jsp" %>
	
	<script>
		$("#FAQ").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/FAQ.jsp';
		});
		
		$("#inquiry").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/inquiry.jsp';
		});
		
		$("#report").click(function(){
			location.href = '<%=request.getContextPath()%>/views/serviceCenter/report.jsp';
		});
		
		$(function() {
			var article = ("#sc_List .show");	//#sc_List중에 클래스가 show인 객체

			$("#content td").click(function() {
				
				var myArticle = $(this).parents().next("tr");

				if ($(myArticle).hasClass('hide')) {
					$(article).removeClass('show').addClass('hide');
					$(myArticle).removeClass('hide').addClass('show');
				} else {
					$(myArticle).addClass('hide').removeClass('show');
				}
			});
		});
	</script>
	
</body>
</html>