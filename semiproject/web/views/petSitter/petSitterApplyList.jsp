<%@page import="java.util.ArrayList"%>
<%@page import="petSitter.model.vo.PetSitter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<PetSitter> list = (ArrayList<PetSitter>)request.getAttribute("arr");
	/* PetSitter p = new PetSitter(); */
 %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* table{
		border:1px solid black;
	}
	 */
table.type09 {
    border-collapse: collapse;
    text-align: left;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</head>
<!-- 관리자가 펫시터 지원서 관리하는 페이지 -->
<body>
<%@include file = "../common/header.jsp" %>
<div class="outer">	
 		<table class="type09" align="center" id="listArea" >
 		<thead>
		<tr>
			<th width="200px">번호</th>
			<th width="200px">아이디</th>
			<th width="200px">신청 날짜</th>
			<th width="200px">승인 유무</th>
		</tr>
		</thead>
 		<tbody>
 		<%for(PetSitter p : list){ %>
		<tr>
			<%-- <input type="hidden" name="<%=p.getPetSitterNo() %>" value="<%=p.getPetSitterNo() %>"> --%>
			<th><%=p.getPetSitterNo() %></th>
			<td><%=p.getUserId() %></td>
			<td><%=p.getApplyDate() %></td>
			<td><%=p.getChkResume() %></td>
		</tr>
		<%} %> 
		</tbody>
		</table> 
</div>	

		<script>
		$(function(){
			$("#listArea td").mouseenter(function(){
				 $(this).parent().css({"background":"#f3f6f7", "cursor":"pointer"}); 
			}).mouseout(function(){
				$(this).parent().css({"background":"white"});				
			}).click(function(){
				var num = $(this).parent().children().eq(0).text();	// petSitter 번호
				
				location.href='<%=request.getContextPath()%>/detail.ps?num='+num;
			});
		});
		</script>


<br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>
</body>
</html>