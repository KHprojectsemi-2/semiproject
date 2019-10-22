<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="petSitter.model.vo.PetSitter"%>
    
<%
	PetSitter p = (PetSitter)request.getAttribute("petSitter");

	String residence = p.getResidence();
	String job = p.getJob();
	String withFam = p.getWithFam();
	String withPet = p.getWithPet();
	String canLarge = p.getCanLarge();
	String canMedic = p.getCanMedic();
	String canOld = p.getCanOld();
	String canSick = p.getCanSick();
	String isLicense = p.getIsLicense();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 관리자가 펫시터 지원서 승인 유무 결정하는 페이지 -->
<body>
<%@include file = "../common/header.jsp" %>
	<%-- <%=residence %>  --%>
<br>
<%@include file = "../common/footer.jsp" %>
</body>
</html>