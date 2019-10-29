<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    	footer{
    		width:cover;
    		height:500px;
    		!important;
    	}
    	.footerDiv{
    		color: white; 
			font-weight: bold; 
    	}
</style>
   	<!-- jquery plugins here-->
    <!-- jquery -->
    <script src="<%=request.getContextPath() %>/js/jquery-1.12.1.min.js"></script>
    <!-- popper js -->
   
    <!-- bootstrap js -->
    <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
    <!-- counterup js -->
    <script src="<%=request.getContextPath() %>/js/jquery.counterup.min.js"></script>
    <!-- waypoints js -->
    <script src="<%=request.getContextPath() %>/js/waypoints.min.js"></script>
    <!-- easing js -->
    <script src="<%=request.getContextPath() %>/js/jquery.magnific-popup.js"></script>
    <!-- particles js -->
    <script src="<%=request.getContextPath() %>/js/owl.carousel.min.js"></script>
    <!-- custom js -->
    <script src="<%=request.getContextPath() %>/js/custom.js"></script>

</head>
<body>
	<%@include file = "../../css/animate.jsp" %>
	<%@include file = "../../css/aos.jsp" %>
	<%@include file = "../../css/bootstrap.jsp" %>
	<%@include file = "../../css/datetime.jsp" %>
	<%@include file = "../../css/flaticon.jsp" %>
	<%@include file = "../../css/font_awesome.jsp" %>
	<%@include file = "../../css/magnific_popup.jsp" %>
	<%@include file = "../../css/nice_select.jsp" %>
	<%@include file = "../../css/owl_carousel.jsp" %>
	<%@include file = "../../css/style.jsp" %>
	<%@include file = "../../css/swiper.jsp" %>
	<%@include file = "../../css/themify_icons.jsp" %>
    <!-- footer part start-->
    <footer class="footer_area padding_top">  
    <div class="footerDiv" style="display:block">
    <br><br><br><br><br>
    	<div class="wrapper" style="text-align:center">
    		<a href="<%=request.getContextPath()%>/views/common/terms.jsp">
    			<span style="text-align:center;">이용약관
				</span>
			</a>
		<span>&nbsp; | &nbsp;</span>
			<a href="<%=request.getContextPath()%>/views/common/policy.jsp">
    			<span style="text-align:center;">개인정보취급방침
				</span>
			</a>
		<span>&nbsp; | &nbsp;</span>
			<a href="<%=request.getContextPath()%>/FAQList.bo">
    			<span style="text-align:center;">FAQ
				</span>
			</a>
		</div>
		<br><br><br>
    	<span style="display:grid;text-align:center;width:100%">주식회사 펫트라슈 | 대표 : 레오펫 | 개인정보책임관리자 : 레오펫 | 사업자등록번호: 157-88-00212 | 통신판매업신고번호: 제 2019-서울서초-2349 호
    	</span>
				<br>
		<span style="display:grid;text-align:center;width:100%">서울특별시 강남구 테헤란로14길 6 남도빌딩 4F | 고객센터 1544-9970
		</span>		
				<br>
		<span style="display:grid;text-align:center;width:100%">© 2019 Leopet. All Rights Reserved.
		</span>
    			
    </div>
    </footer>
    <!-- footer part end-->
</body>
</html>