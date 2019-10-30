<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="matching.model.vo.*, java.util.ArrayList, petSitter.model.vo.*, user.model.vo.*"%>
    
<%
	ArrayList<PetSitterMatchingJoin> psmList = (ArrayList<PetSitterMatchingJoin>)request.getAttribute("psmList");
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


</style>
</head>

<body>
	<%@include file = "../common/header.jsp" %>
	
	<br><br>

	<br>
	<hr class="new5">
	<div id="superContainer">
	<%for(int i=0; i<psmList.size(); i++){ %>
	<div class="bs-example" align="center" style="padding-bottom:50px">
    	<div class="card" style="max-width: 1000px">
        	<div class="row no-gutters">
            	<div class="col-md-3" style="background: #868e96;">
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
                        <li>
                        	<input type="hidden" value="<%=psmList.get(i).getSitter_Id() %>" class="hsitterid">
                        	<a><i class="fas fa-search"></i>  복원하기</a>
                        </li>
                    </ul>
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
<%} %>
</div>


<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


<script>
	function myApply(){
		var sitterid = $(".mycheck").parent().children("input").val();
		location.href="<%=request.getContextPath()%>/myApply.ma?sitterid="+sitterid;
	}
	
	function adminDeleteInvite(){
		location.href="<%=request.getContextPath()%>/adminDeleteInvite.ma";
	}
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
$(function(){
	$(document).on("mouseenter",".blog-info-link a",function(){
		$(this).css({"cursor":"pointer"});
	});
	
	
	$(document).on("click",".blog-info-link a",function(){
			var matchno = $(this).parent().parent().parent().children("input").val();
			location.href = "<%=request.getContextPath()%>/recoveryInvite.ma?matchno="+matchno;
	});
});
</script>

	
	
	
	<%@include file = "../common/footer.jsp" %>
	
</body>

</html>
                         