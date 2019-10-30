<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.model.vo.*"%>
<%
	QuestionBoard b = (QuestionBoard)request.getAttribute("b");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#outer{
	width:700px;
	height:800px;
	margin-right:auto;
	margin-left:auto;
	align:center;
}
#question_Area{
   border: 1px solid #9C9C9C;
}

button {
   width: 70px;
   height: 30px;
   margin-right: 0;
}

#btnArea {
   align: right;
}

#btnArea input{
   margin-left : 15px;
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp" %>
	<br><br>
	<div id="outer">
      
         <div id = "question_Area" style="padding: 30px;">
            <div class="form-group" style = "display : inline-block">
               작성자<input type = "text" class="form-control" value = "<%=b.getUserId()%>" readonly>
               카테고리<input type = "text" class="form-control" value = "<%=b.getCategory()%>" readonly>
            </div>
               <div class="form-group">
                  <label>제목</label> <input id = "title" type="text" name="title" class="form-control" value = "<%=b.getTitle() %>" readonly>
               </div>
               <div class="form-group">
                  <label>내용</label>
                  <textarea id = "content" style = "resize: none;" name="content" class="form-control" rows="10" readonly><%=b.getContent()%></textarea>
               </div>
               
               <div class="form-group">
                  <label>답글</label>
               <%if (b.getReBoardStatus().equals("N")) {%>
                  <textarea id = "recontent" style = "resize: none;" name="content" class="form-control" rows="10" placeholder="등록된 답변이 없습니다" readonly></textarea>
				               
              <%} else{ %>
              	<textarea id = "recontent" style = "resize: none;" name="content" class="form-control" rows="10" readonly><%=b.getReContent() %></textarea>
              <%} %>
               </div>
               <div id="btnArea" class = "text-right">
                  <input type="button" onclick="goBack();" class="btn btn-info btn-md" value="이전으로"> 
               </div>
            
         </div>
         
   </div>
   <script>
   function goBack(){
	            location.href = '<%=request.getContextPath()%>/report.my?userId=<%=loginUser.getUserId()%>';
	   }
   </script>
	
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br>
	<%@include file="../common/footer.jsp" %>

</body>
</html>