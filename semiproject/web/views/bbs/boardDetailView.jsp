<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "bbs.model.vo.*, java.util.ArrayList"%>
    
<%
	Board b = (Board)request.getAttribute("board");
	/* Ajax이후 */
	ArrayList<Reply> rlist = (ArrayList<Reply>)request.getAttribute("rlist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   .outer{
      width:800px;
      height:500px;
      background:black;
      color:white;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
   }
   td {
      border:1px solid white;
   }

   .tableArea {
      border:1px solid white;
      width:800px;
      height:350px;
      margin-left:auto;
      margin-right:auto;
   }
   #content {
      height:230px;
   }
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	
	<div class="outer">
		<br>
		<h2 align="center">게시판 상세보기</h2>
		<div class="tableArea">
			<table align="center" width="800px">
				<tr>
					<td>분야</td>
					<td><span><%=b.getcId() %></span></td>
					<td>제목</td>
					<td colspan="3"><span><%=b.getbTitle() %></span></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><span><%=b.getbWriter() %></span></td>
					<td>조회수</td>
					<td><span><%=b.getbCount() %></span></td>
					<td>작성일</td>
					<td><span><%=b.getModifyDate() %></span></td>
				</tr>
				<tr>
					<td colspan="6">내용</td>
				</tr>
				<tr>
					<td colspan="6"><p id="content"><%=b.getbContent() %></p></td>
				</tr>
			</table>
		</div>
		
		<div align="center">
			<button onclick="location.href='<%=request.getContextPath() %>/list.bo'">메뉴로 돌아가기</button>
			<button>수정하기</button>
			<!-- 수정하기는 공지사항 때 해봤으니까 알아서 센스껏 완성 하시고 -->
			<!-- 이제 사진게시판 하러 가자! menubar.jsp로 ㄱㄱ씽 -->
			
		</div>
	</div>
	
	<!-- 여기는 Ajax관련 코드  -->
	<div class="replyArea">
	<!-- 댓글 작성하는 부분 -->
		<div class="replyWriterArea">
			<table align="center">
				<tr>
					<td>댓글작성</td>
					<td><textArea rows="3" cols="80" id="replyContent"></textArea></td>
					<td>
						<button id=id="addReply">댓글등록</button>
					</td>
				</tr>
			
			</table>
		
		</div>
		<!-- 불러온 댓글 리스트 보여주기  -->
		<div id="replySelectArea">
			<table id="replySelectTable" border="1" align="center">
			<%if(rlist.isEmpty()) {%>
				<tr><td colspan="3">댓글이 없습니다.</td></tr>
			<%}else{ %>
				<%for(int i=0; i<rlist.size();i++) {%>
					<tr>
						<td width="100px"><%=rlist.get(i).getWriter() %></td>
						<td width="400px"><%=rlist.get(i).getContent() %></td>
						<td width="200px"><%=rlist.get(i).getCreateDate() %></td>
				<%} %>
			<%} %>
			
			</table>
		
		</div>
	</div>
	
	<!--  Ajax로 댓글 입력부분을 완성해 보자 -->
	<script>
		$(function(){
			//addReply 버튼을 클릭시 댓글 기능을 실행했을 때 비동기적으로 새로 갱신된 리스트들을 테이블에  적용시키자
			$("#.addReply").click(function({
				var writer = <%=loginUser.getUserNo()%>;
				var bid = <%=b.getbId()%>
				var content = $("#replyContent").var();
				
				$.ajax({
					url:"/jspProject/insertReply.bo",
					data:{writer:writer, content:content, bid:bid}, // insertReplyServlet 만들러 고고씽
					success:function(date){
							$replyTable = $("#replySelectTable");
							$replyTable.html("");	// 기존 테이블 초기화 (기존에는 댓글이 없습니다. 적힌 태그가 있었는데 지워지게 )
							
							// 새로 받아온 갱신된 댓글 리스트들을 for문을 통해 다시 table에 추가
							for (var key in data){
								var $tr = $("<tr>");
								var $writerTd = $("<td>").text(data[key].rWriter).css("width", "100px");
								var $contentTd = $("<td>").text(data[key].rContent.css("width","400px");
								var $dateTd = $("<td>").text(data[key].createDate).css("width", "200px");
								
								$tr.append($writerTd);
								$tr.append($contendTd);
								$tr.append($dateTd);
								$replyTable.append($tr);
								
							}
							// 댓글 작성부분 리셋
							$("#replyContent").val("");
					}
				})
				
			}))
		})
	
	</script>	
	
	
	
</body>
</html>