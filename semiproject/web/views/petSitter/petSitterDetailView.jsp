<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="petSitter.model.vo.PetSitter"%>
    
<%
	PetSitter p = (PetSitter)request.getAttribute("petSitter");

	String userId = p.getUserId();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#outer{
	margin: 50px 50px 50px 500px;
	}
	
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
<!-- 관리자가 펫시터 지원서 승인 유무 결정하는 페이지 -->
<body>
<%@include file = "../common/header.jsp" %>
	<div class="outer"><br><br><br>
	
		<h2 align="center">펫시터 지원 승인</h2>
		<br><br>
 		<div class="tableArea">
			<table class=type09 align=center width=800px >
			    <thead>
			    <tr>
			        <th scope="cols">타이틀</th>
			        <th scope="cols">내용</th>
			    </tr>
			    </thead>	
				<tr>
					<th>번호<input type="hidden" name="userId" value="<%=p.getUserId()%>"></th>
					<td><%=p.getPetSitterNo() %></td>
				</tr>
				<tr>
					<th>아이디</th>
					<td><%=p.getUserId() %></td>
				</tr>
				<tr>
					<th>주거 공간</th>
					<td><%=p.getResidence() %></td>
				</tr>
				<tr>
					<th>직업</th>
					<td><%=p.getJob() %></td>
				</tr>
				<tr>
					<th>가족 동거 유무</th>
					<td><%=p.getWithFam() %></td>
				</tr>
				<tr>
					<th>반려 동물 유무</th>
					<td><%=p.getWithPet() %></td>
				</tr>
				<tr>
					<th>대형견 가능 여부</th>
					<td><%=p.getCanLarge() %></td>
				</tr>
				<tr>
					<th>투약 가능 여부</th>
					<td><%=p.getCanMedic() %></td>
				</tr>
				<tr>
					<th>노령견 케어 가능 여부</th>
					<td><%=p.getCanOld() %></td>
				</tr>
				<tr>
					<th>환자견 케어 가능 여부</th>
					<td><%=p.getCanSick() %></td>
				</tr>
				<tr>
					<th>자격증 보유 여부</th>
					<td><%=p.getIsLicense() %></td>
				</tr>
			</table><br><br>
			<div align="center">
				<button type="button" onclick="approve();" class="btn btn-info btn-md">승인</button>
				<!-- <button id="cancel" class="btn btn-info btn-md">승인 취소</button> -->
			</div>
			</div>
			
				
			</div>
	
	
	<script>
	function approve(){
		
		if(confirm("승인하시겠습니까???")){ 
			location.href = "<%=request.getContextPath()%>/approve.ps?userId=<%=p.getUserId()%>";
		}
	} 
	</script>
	
	
<br><br><br><br><br><br><br>
<%@include file = "../common/footer.jsp" %>
</body>
</html>