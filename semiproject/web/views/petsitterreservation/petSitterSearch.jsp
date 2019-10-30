<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="matching.model.vo.*, java.util.ArrayList, petSitter.model.vo.*, user.model.vo.*"%>
    
<%
	ArrayList<PetSitterMatchingJoin> psmList = (ArrayList<PetSitterMatchingJoin>)request.getAttribute("psmList");
	Matching mt = (Matching)request.getAttribute("mt");
	ArrayList<Pet> pt = (ArrayList<Pet>)request.getAttribute("pt");
	out.print(pt);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src ="https://kit.fontawesome.com/702f2f895a.js"></script>
    <style>
    ul{
    	float:right;
    	padding-right:0px;
    	!important;
    		
    }
    .disabled{
    	pointer-events:none;
    	!important;
    }
    
    
	body {
  		font-family: Arial;
		}

	* {
  	box-sizing: border-box;
	}

div.example input[type=text] {
  	padding: 10px;
  	font-size: 17px;
  	border: 1px solid grey;
  	float: left;
  	width: 80%;
  	background: #f1f1f1;
	}

div.example button {
  float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none;
  cursor: pointer;
}

div.example button:hover {
  background: #0b7dda;
}

div.example::after {
  content: "";
  clear: both;
  display: table;
}
.leftalign{
	align:left;
	!important;
}
hr.new5 {
  border: 10px solid green;
  border-radius: 5px;
}
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}

#myBtn:hover {
  background-color: #555;
}

.sitterName{
	font-size:16px;
	!important;
}
.matchingBGroup{
	margin-right:275px;
	padiing-top:100px;
	margin-top:50px;
}

.imgdivg{
	border:1px double black;
}


</style>
</head>

<body>
	<%@include file = "../common/header.jsp" %>
	
	<br><br>

	<h2 style="text-align:center">펫시터를 검색해보세요</h2>

	<p style="text-align:center">본인 조건에 맞게 검색해보세요</p>
	<div class="example" style="margin:auto;max-width:500px">
  		<input type="text" placeholder="펫시터의 이름으로 검색해보세요" name="search2" id="searchtext" style="height:38.96px;">
  		<button id="namesearchb"><i class="fa fa-search"></i></button>
	</div>
	<div class="button-group-area mt-10" align="center">
		<button id = "bigdog" class="genric-btn primary-border small searchb">대형견</button>
		<button id = "medic" class="genric-btn primary-border small searchb">투약가능</button>
		<button id = "olddog" class="genric-btn primary-border small searchb">노령견</button>
		<button id = "patientdog" class="genric-btn primary-border small searchb">환자견</button>
		<button id = "resume" class="genric-btn primary-border small searchb">자격증</button>
	</div>	
		<%if(!(loginUser.getUserId().equals("admin"))) {%>
			<%if(mt.getSitter_Id()==null) {%>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger apply" align="right" onclick="matchingApply();">작성하기</button>
		</div>
			<%}else{ %>
		<div class="matchingBGroup" align="right">
			<input type="hidden" value="<%=mt.getSitter_Id() %>">
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="myApply();">내 글 확인하기</button>
		</div>
			<%} %>
		<%}else{ %>
		<div class="matchingBGroup" align="right">	
			<button type="button" class="btn btn-danger apply" align="right" onclick="adminDeleteInvite();">삭제(방문)페이지</button>
		</div>	
		<%} %>	
	

	<br>
	<hr class="new5">
	<div id="superContainer">
	<%for(int i=0; i<psmList.size(); i++){ %>
	<div class="bs-example" align="center" style="padding-bottom:50px">
    	<div class="card" style="max-width: 1000px">
        	<div class="row no-gutters">
            	<div class="col-md-3 imgdivg" style="background: #868e96;">
                	<img src="<%=request.getContextPath()%>/join_uploadFiles/<%=psmList.get(i).getThumbnail()%>" class="card-img-top h-100" width="300px">
            	</div>
            <div class="col-md-7" align="center">
                <div class="card-body leftalign" style="width:700px">
                   <h3 class="card-title"><i class="fas fa-map-marker-alt"></i>  <%=psmList.get(i).getUserAddress() %></h3>
                   <p class="card-text sitterName" align="right"><%=psmList.get(i).getUserName() %> 펫시터 님</p>
                   <br>
                   <div class="button-group-area mt-10" style="display:inline">
                   <%if(psmList.get(i).getCanLarge().equals("Y")) { %>
						<button class="genric-btn primary small disabled">대형견</button>
					<%}%>
					<%if(psmList.get(i).getCanMedic().equals("Y")) { %> 
						<button class="genric-btn primary small disabled">투약가능</button>
					<%} %>	
					<%if(psmList.get(i).getCanOld().equals("Y")) { %> 
						<button class="genric-btn primary small disabled">노령견</button>
					<%} %>	
					<%if(psmList.get(i).getCanSick().equals("Y")) { %> 
						<button class="genric-btn primary small disabled">환자견</button>
					<%} %>
					<%if(psmList.get(i).getIsLicense().equals("Y")) { %> 
						<button class="genric-btn primary small disabled">자격증</button>
					<%} %>	
					</div>
					<br>
					<br>
					<p class="card-text"><i class="fas fa-bullhorn"></i>  <%=psmList.get(i).getWantToSay() %></p>
					<input type="hidden" value=<%=psmList.get(i).getMatch_No() %>>
                   	<ul class="blog-info-link">
                   	<%if(loginUser.getUserId().equals("admin")) {%>
                   		<li>
                			<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                			<a><i class="fas fa-dollar-sign"></i><%=psmList.get(i).getPrice() %>원</a>
                		</li>
                		<li>
                			<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                			<%if(psmList.get(i).getGrade()==0) {%>
                			<a><i class="fas fa-star checked" style="color:#f1c40f"></i>초보 펫시터입니다.</a></li>
                			<%}else{ %>
                			<a><i class="fas fa-star checked" style="color:#f1c40f"></i><%=psmList.get(i).getGrade() %>점</a></li>
                			<%} %>
                        <li>
                        	<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                        	<a><i class="fas fa-search"></i>상세보기</a>
                        </li>
                   	<%}else{ %>
                   		<%if(!pt.isEmpty()) {%>
                		<li>
                			<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                			<a><i class="fas fa-dollar-sign"></i><%=psmList.get(i).getPrice() %>원</a>
                		</li>
                		<li>
                			<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                			<a><i class="fas fa-star checked" style="color:#f1c40f"></i><%=psmList.get(i).getGrade() %>점</a></li>
                        <li>
                        	<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                        	<a><i class="fas fa-search"></i>상세보기</a>
                        </li>
                        <%}else{ %>
                        	<li><i class="fas fa-star checked" style="color:#f1c40f"></i>펫을 먼저 등록해주세요</li>
                        <%} %>
                        <%} %>
                    </ul>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
<%} %>
</div>


	

<input type ="hidden" id = "hiddenbigdog" value="0">
<input type ="hidden" id = "hiddenmedic" value="0">
<input type ="hidden" id = "hiddenolddog" value="0">
<input type ="hidden" id = "hiddenpatientdog" value="0">
<input type ="hidden" id = "hiddenresume" value="0">


<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


<script>
	function matchingApply(){
		var sitterid = "<%=loginUser.getUserId()%>";
		
		$.ajax({
			url:"<%=request.getContextPath()%>/isPetSitter.pe",
			type:"post",
			data:{sitterid:sitterid},
			success:function(data){
				console.log(data);
			
				if(data != null){
					<%if(mt.getSitter_Id() != null){%>	
						alert("이미 글을 작성하셨습니다.");
					<%}else{%>
						location.href="<%=request.getContextPath()%>/views/petsitterreservation/matchingApply.jsp";
					<%}%>
				}else{
					alert("펫시터만 작성가능합니다.");
				}
			}

	});
}
	
	function myApply(){
		var sitterid = $(".mycheck").parent().children("input").val();
		location.href="<%=request.getContextPath()%>/myApply.ma?sitterid="+sitterid;
	}
	
	function adminDeleteInvite(){
		location.href="<%=request.getContextPath()%>/adminDeleteInvite.ma";
	}
</script>
<script>

		$("#bigdog").click(function(){
			if($("#hiddenbigdog").val() == '0' ) {
			      $("#hiddenbigdog").val('1');
			    }
			    else {
			      $("#hiddenbigdog").val('0');
			    }
		});
		$("#medic").click(function(){
			if($("#hiddenmedic").val() == '0' ) {
			      $("#hiddenmedic").val('1');
			    }
			    else {
			      $("#hiddenmedic").val('0');
			    }
		});
		$("#olddog").click(function(){
			if($("#hiddenolddog").val() == '0' ) {
			      $("#hiddenolddog").val('1');
			    }
			    else {
			      $("#hiddenolddog").val('0');
			    }
		});
		$("#patientdog").click(function(){
			if($("#hiddenpatientdog").val() == '0' ) {
			      $("#hiddenpatientdog").val('1');
			    }
			    else {
			      $("#hiddenpatientdog").val('0');
			    }
		});
		$("#resume").click(function(){
			if($("#hiddenresume").val() == '0' ) {
			      $("#hiddenresume").val('1');
			    }
			    else {
			      $("#hiddenresume").val('0');
			    }
		});

</script>
<script>
	$("#bigdog").click(function(){
		if($("#hiddenbigdog").val()=='1'){
		$(this).css({"color":"#fff",
			 		 "border": "1px solid transparent",
		  			  "background": "#53C9BB"});
		}else{
			$(this).css({"color": "#53C9BB",
			  "border": "1px solid #53C9BB",
			  "background": "#fff"});
		}
	});
	$("#medic").click(function(){
		if($("#hiddenmedic").val()=='1'){
		$(this).css({"color":"#fff",
			 		 "border": "1px solid transparent",
		  			  "background": "#53C9BB"});
		}else{
			$(this).css({"color": "#53C9BB",
			  "border": "1px solid #53C9BB",
			  "background": "#fff"});
		}
	});
	$("#olddog").click(function(){
		if($("#hiddenolddog").val()=='1'){
		$(this).css({"color":"#fff",
			 		 "border": "1px solid transparent",
		  			  "background": "#53C9BB"});
		}else{
			$(this).css({"color": "#53C9BB",
			  "border": "1px solid #53C9BB",
			  "background": "#fff"});
		}
	});
	$("#patientdog").click(function(){
		if($("#hiddenpatientdog").val()=='1'){
		$(this).css({"color":"#fff",
			 		 "border": "1px solid transparent",
		  			  "background": "#53C9BB"});
		}else{
			$(this).css({"color": "#53C9BB",
			  "border": "1px solid #53C9BB",
			  "background": "#fff"});
		}
	});
	$("#resume").click(function(){
		if($("#hiddenresume").val()=='1'){
		$(this).css({"color":"#fff",
			 		 "border": "1px solid transparent",
		  			  "background": "#53C9BB"});
		}else{
			$(this).css({"color": "#53C9BB",
			  "border": "1px solid #53C9BB",
			  "background": "#fff"});
		}
	});

</script>
<script>

	var mybutton = document.getElementById("myBtn");


	window.onscroll = function() {scrollFunction()};

	function scrollFunction() {
  	if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    	mybutton.style.display = "block";
  	} else {
    	mybutton.style.display = "none";
  	}
	}


	function topFunction() {
  	document.body.scrollTop = 0;
  	document.documentElement.scrollTop = 0;
	}
</script>
<script>
	$(".searchb").click(function(){
		
		var bigdog = $("#hiddenbigdog");
		var medic = $("#hiddenmedic");
		var olddog = $("#hiddenolddog");
		var patientdog = $("#hiddenpatientdog");
		var resume = $("#hiddenresume");
		var request = '<%=request.getContextPath()%>';
		
		alert(request);
		
		$.ajax({
			url:"<%=request.getContextPath()%>/petsittersearch.pe",
			type:"post",
			data:{bigdog:bigdog.val(),
					medic:medic.val(),
					olddog:olddog.val(),
					patientdog:patientdog.val(),
					resume:resume.val()
				},
			success:function(data){
				$divcontainer = $("#superContainer");
				$divcontainer.html("");
				
				var strDOM="";
				for(var key in data){
					strDOM += "<div class='bs-example' align='center' style='padding-bottom:50px'>";
					strDOM += "<div class='card' style='max-width:1000px'>";
					strDOM += "<div class='row no-gutters'>";
					strDOM += "<div class='col-md-3' style='background:#868e96;'>";
					strDOM += "<img src='"+request+"/join_uploadFiles/"+data[key].thumbnail+"' class='card-img-top h-100' width='300px'>";
					strDOM += '</div>';
					strDOM += "<div class='col-md-7' align='center'>";
					strDOM += "<div class='card-body leftalign' style='width:700px'>";
					strDOM += "<h3 class='card-title'><i class='fas fa-map-marker-alt'></i>"  +data[key].userAddress+"</h3>";
					strDOM += "<p class='card-text sitterName' align='right'>"+data[key].userName+" 펫시터 님</p>";
					strDOM += "<br>";
					strDOM += "<div class='button-group-area mt-10' style='display:inline'>";
					if(data[key].canLarge == 'Y'){
						strDOM += "<button class='genric-btn primary small disabled'>대형견</button>";
					}
					if(data[key].canMedic=='Y'){
						strDOM += "<button class='genric-btn primary small disabled'>투약가능</button>";
					}
					if(data[key].canOld=='Y'){
						strDOM += "<button class='genric-btn primary small disabled'>노령견</button>";
					}
					if(data[key].canSick=='Y'){
						strDOM += "<button class='genric-btn primary small disabled'>환자견</button>";
					}
					if(data[key].isLicense=='Y'){
						strDOM += "<button class='genric-btn primary small disabled'>자격증</button>";
					}
					strDOM += '</div>';
					strDOM += "<br><br>"
					strDOM += "<p class='card-title'><i class='fas fa-bullhorn'></i>"   +data[key].wantToSay+"</p>";
					strDOM += "<input type='hidden' value="+data[key].match_No+">";
					strDOM += "<ul class = 'blog-info-link'>";
                   	<%if(loginUser.getUserId().equals("admin")) {%>
                   	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-dollar-sign'></i>"+data[key].price+"원</a></li>";
                   	if(data[key].grade==0) {
        			strDOM += "<a><i class='fas fa-star checked' style='color:#f1c40f'></i>초보 펫시터입니다.</a></li>"
        			}else{
                   	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-star checked' style='color:#f1c40f'></i>"+data[key].grade+"점</a></li>";
                   	}
                   	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-search'></i>상세보기</a></li>";
               		<%}else{ %>
					<%if(!pt.isEmpty()) {%>
					strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-dollar-sign'></i>"+data[key].price+"원</a></li>";
					strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-star checked' style='color:#f1c40f'></i>"+data[key].grade+"점</a></li>";
					strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-search'></i>상세보기</a></li>";
					<%}else{ %>
                 	strDOM += "<li><i class='fas fa-star checked' style='color:#f1c40f'></i>펫을 먼저 등록해주세요</li>";
                 	<%} %>	
                 	<%}%>
					strDOM += "</ul>";
					strDOM += "<br>";
					strDOM += '</div>';
	                strDOM += '</div>';
	                strDOM += '</div>';
	                strDOM += '</div>';
	                strDOM += "<br>";
	                strDOM += "<br>";
					
				}
				
					$divcontainer.append(strDOM);
				
			}

		}); 
	});
</script>
<script>
$("#namesearchb").click(function(){
	
	var bigdog = $("#hiddenbigdog");
	var medic = $("#hiddenmedic");
	var olddog = $("#hiddenolddog");
	var patientdog = $("#hiddenpatientdog");
	var resume = $("#hiddenresume");
	var searchname = $("#searchtext");
	var request = '<%=request.getContextPath()%>';
	
	$.ajax({
		url:"<%=request.getContextPath()%>/petsitternamesearch.pe",
		type:"post",
		data:{bigdog:bigdog.val(),
				medic:medic.val(),
				olddog:olddog.val(),
				patientdog:patientdog.val(),
				resume:resume.val(),
				searchname:searchname.val()
			},
		success:function(data){
			
			
			$divcontainer = $("#superContainer");
			$divcontainer.html("");
			
			var strDOM="";
			for(var key in data){
				strDOM += "<div class='bs-example' align='center' style='padding-bottom:50px'>";
				strDOM += "<div class='card' style='max-width:1000px'>";
				strDOM += "<div class='row no-gutters'>";
				strDOM += "<div class='col-md-3' style='background:#868e96;'>";
				strDOM += "<img src='"+request+"/join_uploadFiles/"+data[key].thumbnail+"' class='card-img-top h-100' width='300px'>";
				strDOM += '</div>';
				strDOM += "<div class='col-md-7' align='center'>";
				strDOM += "<div class='card-body leftalign' style='width:700px'>";
				strDOM += "<h3 class='card-title'><i class='fas fa-map-marker-alt'></i>"+  data[key].userAddress+"</h3>";
				strDOM += "<p class='card-text sitterName' align='right'>"+data[key].userName+" 펫시터 님</p>";
				strDOM += "<br>";
				strDOM += "<div class='button-group-area mt-10' style='display:inline'>";
				if(data[key].canLarge == 'Y'){
					strDOM += "<button class='genric-btn primary small disabled'>대형견</button>";
				}
				if(data[key].canMedic=='Y'){
					strDOM += "<button class='genric-btn primary small disabled'>투약가능</button>";
				}
				if(data[key].canOld=='Y'){
					strDOM += "<button class='genric-btn primary small disabled'>노령견</button>";
				}
				if(data[key].canSick=='Y'){
					strDOM += "<button class='genric-btn primary small disabled'>환자견</button>";
				}
				if(data[key].isLicense=='Y'){
					strDOM += "<button class='genric-btn primary small disabled'>자격증</button>";
				}
				strDOM += '</div>';
				strDOM += "<br><br>"
				strDOM += "<p class='card-title'><i class='fas fa-bullhorn'></i>"+data[key].wantToSay+"</p>";
				strDOM += "<input type='hidden' value="+data[key].match_No+">";
				strDOM += "<ul class = 'blog-info-link'>";
				<%if(loginUser.getUserId().equals("admin")) {%>
               	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-dollar-sign'></i>"+data[key].price+"원</a></li>";
               	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-star checked' style='color:#f1c40f'></i>"+data[key].grade+"점</a></li>";
               	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-search'></i>상세보기</a></li>";
           		<%}else{ %>
				<%if(!pt.isEmpty()) {%>
				strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a>"+data[key].price+"원</a></li>";
				if(data[key].grade==0) {
    			strDOM += "<a><i class='fas fa-star checked' style='color:#f1c40f'></i>초보 펫시터입니다.</a></li>"
    			}else{ 
               	strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-star checked' style='color:#f1c40f'></i>"+data[key].grade+"점</a></li>";
               	}
				strDOM += "<li><input type='hidden' class='hsitterid' value="+data[key].sitter_Id+"><a><i class='fas fa-search'></i>상세보기</a></li>";
				<%}else{ %>
             	strDOM += "<li><i class='fas fa-star checked' style='color:#f1c40f'></i>펫을 먼저 등록해주세요</li>";
             	<%} %>	
             	<%} %>
				strDOM += "</ul>";
				strDOM += "<br>";
				strDOM += '</div>';
                strDOM += '</div>';
                strDOM += '</div>';
                strDOM += '</div>';
                strDOM += "<br>";
                strDOM += "<br>";
				
			}
			
				$divcontainer.append(strDOM);
			
		}

	});
});
	
	
</script>
<script>
$(function(){
	$(document).on("mouseenter",".blog-info-link a",function(){
		$(this).css({"cursor":"pointer"});
	});
	
	
	$(document).on("click",".blog-info-link a",function(){
			
			var matchno = $(this).parent().parent().parent().children("input").val();
			var userid = "<%=loginUser.getUserId()%>";
			var sitterid =$(this).parent().children("input").val();
		
			location.href = "<%=request.getContextPath()%>/matchingdetail.pe?matchno="+matchno+"&userid="+userid+"&sitterid="+sitterid;
	

	});
});
</script>

	
	
	
	<%@include file = "../common/footer.jsp" %>
	
</body>

</html>
                         