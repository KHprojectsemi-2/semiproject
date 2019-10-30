<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="matching.model.vo.*, java.util.ArrayList, user.model.vo.*"%>
<%
	ArrayList<MatchingUserJoin> mList = (ArrayList<MatchingUserJoin>)request.getAttribute("mList");
	ArrayList<Pet> pList = (ArrayList<Pet>)request.getAttribute("pList");
	Matching mt = (Matching)request.getAttribute("mt");
	out.print("mt:"+mt);
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
	<%if(!(loginUser.getUserId().equals("admin"))){ %>
		<%if(pList.isEmpty()) {%>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger apply" align="right" onclick="matchingApply();">펫을 먼저 등록해주세요</button>
		</div>
		<%}else if(pList.size()==1 && mt.getUser_Id()!=null) {%>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="houseMatchingApply();">작성하기</button>
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="houseMatchingcheck();">내 글 확인하기</button>
		</div>
		<%}else{ %>
			<%if(mt.getUser_Id()==null) {%>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="houseMatchingApply();">작성하기</button>
		</div>
			<%}else{ %>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="houseMatchingcheck();">내 글 확인하기</button>
		</div>
			<%} %>
		<%} %>
	<%}else{ %>
		<div class="matchingBGroup" align="right">
			<button type="button" class="btn btn-danger mycheck" align="right" onclick="adminDeletedHome();">삭제(가정집)페이지</button>
		</div>
	<%} %>
	</div>
	
	<br>
	<hr class="new5">
	<div id="superContainer">
	<%for(int i=0; i<mList.size(); i++) {%>
	<div class="bs-example" align="center" style="padding-bottom:50px">
    	<div class="card" style="max-width: 1000px">
        	<div class="row no-gutters">
            	<div class="col-md-3 imgdivg" style="background: #868e96">
                	<img src="<%=request.getContextPath()%>/join_uploadFiles/<%=mList.get(i).getThumbnail()%>" class="card-img-top h-100" width="300px">
            	</div>
            <div class="col-md-7" align="center">
                <div class="card-body leftalign" style="width:700px">
                    <h3 class="card-title"><i class="fas fa-map-marker-alt"></i>  <%=mList.get(i).getUserAddress() %></h3>
                    <p class="card-text sitterName" align="right"><%=mList.get(i).getUserName() %>견주 님</p>
                   	<br>
                   	<p class="card-text" align="center"><i class="far fa-calendar-alt"></i>  <%=mList.get(i).getCareDate() %></p>                   
					<br>
					<br>
					<p class="card-text"><i class="fas fa-bullhorn"></i>  <%=mList.get(i).getWantToSay() %></p>
					<input type="hidden" value="<%=mList.get(i).getUser_Id()%>">
                   	<ul class="blog-info-link">
                		<li><a><i class="fas fa-dollar-sign"></i><%=mList.get(i).getPrice() %> 원</a></li>
                		<li><a><i class="fas fa-dog"></i><%=mList.get(i).getCountPet()%> 마리</a></li>
                        <li><a><i class="fas fa-search"></i>상세보기</a></li>
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
	function houseMatchingApply(){
		location.href="<%=request.getContextPath()%>/applypet.hm?userId=<%=loginUser.getUserId()%>";
	}
	
	function houseMatchingcheck(){
		var userid = "<%=loginUser.getUserId()%>";
		location.href="<%=request.getContextPath()%>/MyHouseApply.ma?userid="+userid;
	}
	
	function adminDeletedHome(){
		location.href="<%=request.getContextPath()%>/admindeletedhome.ma";
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


<%-- <script>
	function matchingApply(){
		location.href="<%=request.getContextPath()%>/views/petsitterreservation/matchingApply.jsp";
	}--%>
</script>
<script>
$("#namesearchb").click(function(){

	var searchname = $("#searchtext");
	var request = '<%=request.getContextPath()%>';
	
	$.ajax({
		url:"<%=request.getContextPath()%>/hNameSearch.ma",
		type:"post",
		data:{searchname:searchname.val()},
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
									strDOM += "<h3 class='card-title'><i class='fas fa-map-marker-alt'></i>"+  data[key].userAddress+"</h3>"
									strDOM += "<p class='card-text sitterName' align='right'>"+data[key].userName+" 견주 님</p>";
									strDOM += "<br>";
									strDOM += "<p class='card-text' align='center'><i class='far fa-calendar-alt'></i>"  +data[key].careDate+"</p>"
									strDOM += "<br><br>"
									strDOM += "<p class='card-title'><i class='fas fa-bullhorn'></i>"+  data[key].wantToSay+"</p>";
									strDOM += "<input type='hidden' value="+data[key].user_Id+">";
									strDOM += "<ul class = 'blog-info-link'>";
										strDOM += "<li><a><i class='fas fa-dollar-sign'></i>"+data[key].price+"원</a></li>";
               							strDOM += "<li><a><i class='fas fa-dog'></i>"+data[key].countPet+"마리</a></li>";
               							strDOM += "<li><a><i class='fas fa-search'></i>상세보기</a></li>";
									strDOM += "</ul>";
									strDOM += "<br>";
								strDOM += '</div>';
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
		var userid = $(this).parent().parent().parent().children("input").val();

		<%if(loginUser.getUserId().equals("admin")){%>
			/* var userid = $(this).parent().parent().parent().children("input").val(); */
			location.href = "<%=request.getContextPath()%>/housematchingdetail.pe?userid="+userid;
		<%}else{%>
		var sitterid = "<%=loginUser.getUserId()%>";
		
		$.ajax({
			url:"<%=request.getContextPath()%>/isPetSitter.pe",
			type:"post",
			data:{sitterid:sitterid},
			success:function(data){
				console.log(data);
			
				if(data != null){
					
					alert(userid);
					location.href = "<%=request.getContextPath()%>/housematchingdetail.pe?userid="+userid;
				}else{
					alert("펫시터만 열람가능합니다.");
				}
			}

	});
	<%}%> 
		<%-- var userid = $(this).parent().parent().parent().children("input").val();
		location.href = "<%=request.getContextPath()%>/housematchingdetail.pe?userid="+userid; --%>
	});
});

</script>

	
	
	
	<%@include file = "../common/footer.jsp" %>
	
</body>

</html>
                         