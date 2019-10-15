<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	form{
		 margin: 50px 50px 50px 500px;
	}
	
</style>
</head>
<body>
	<!-- petSitter 지원 페이지 -->
	<%@include file = "../common/header.jsp" %>
	<br><br>
	
	<form>
	<h1>펫시터 지원서</h1><br><br>
	<textarea cols="80" rows="6" style="resize:none" name="textarea">본인은 아래의 [개인정보 수집 및 이용에 관한 동의]를 잘 읽어 보았으며, 최종적으로 지원서를 작성하는 경우 위 내용에 동의하는 것으로 인정합니다. *
1. 목적 : 지원자 개인 식별, 지원의사 확인 2. 항목 : 지원자 성명, 휴대폰번호 및 해당 신청서에서 수집된 정보 3. 보유기간 : 해당 지원자 모집 종료 후 1년간 보유, 이용됩니다. 4. 동의를 거부할 권리 및 동의 거부에 따른 불이익 : 지원자는 위 내용에 대해서 동의를 하지 않을 권리가 있으며 지원자가 개인정보의 삭제를 요청하는 경우 지체없이 이를 삭제합니다.
    </textarea><br>
    <input type="checkbox" id="agree" value="a">
    <label for="small">네, 동의합니다.</label>
	<hr>
	<h4>주거 공간</h4>
    <input type="radio" id="apart" name="residence" value="A" checked>
    <label for="apart">아파트</label>&nbsp;&nbsp;
    <input type="radio" id="villa" name="residence" value="V">
    <label for="villa">빌라</label>&nbsp;&nbsp;
    <input type="radio" id="detachedHouse" name="residence" value="D">
    <label for="detachedHouse">단독 주택</label>&nbsp;&nbsp;
    <input type="radio" id="etc" name="residence" value="E">
    <label for="etc">기타</label>
    <hr>
	<h4>직업</h4>
    <input type="radio" id="jobSeekers" name="job" value="J" checked>
    <label for="jobSeekers">취업준비생</label>&nbsp;&nbsp;
    <input type="radio" id="houseWife" name="job" value="H">
    <label for="houseWife">주부</label>&nbsp;&nbsp;
    <input type="radio" id="officeWorkers" name="job" value="D">
    <label for="officeWorkers">직장인</label>&nbsp;&nbsp;
    <input type="radio" id="etc" name="job" value="E">
    <label for="etc">기타</label>
    <hr>
	<h4>가족 동거 유무</h4>
	<input type="radio" id="yFamily" name="family" value="y" checked>
    <label for="yFamily">예</label>&nbsp;&nbsp;
    <input type="radio" id="nFamily" name="family" value="n">
    <label for="nFamily">아니오</label>
    <hr>
	<h4>반려 동물 유무</h4>
	<input type="radio" id="yPet" name="pet" value="y" checked>
    <label for="yPet">예</label>&nbsp;&nbsp;
    <input type="radio" id="nPet" name="pet" value="n">
    <label for="nPet">아니오</label>
    <hr>
	<h4>대형견 가능 여부</h4>
	<input type="radio" id="yBig" name="big" value="y" checked>
    <label for="yBig">예</label>&nbsp;&nbsp;
    <input type="radio" id="nSmall" name="big" value="n">
    <label for="nSmall">아니오</label>
    <hr>
	<h4>투약 가능 여부</h4>
	<input type="radio" id="yMedicine" name="medicine" value="y" checked>
    <label for="yMedicine">예</label>&nbsp;&nbsp;
    <input type="radio" id="nMedicine" name="medicine" value="n">
    <label for="nMedicine">아니오</label>
    <hr>
	<h4>노령견 케어 가능 여부</h4>
	<input type="radio" id="yOld" name="old" value="y" checked>
    <label for="yOld">예</label>&nbsp;&nbsp;
    <input type="radio" id="nOld" name="old" value="n">
    <label for="nOld">아니오</label>
    <hr>
	<h4>환자견 케어 가능 여부</h4>
	<input type="radio" id="yPatient" name="patient" value="y" checked>
    <label for="yPatient">예</label>&nbsp;&nbsp;
    <input type="radio" id="nPatient" name="patient" value="n">
    <label for="nPatient">아니오</label>
    <hr>
	<h4>반려동물 관련 자격증 보유 여부</h4>
	<input type="radio" id="yCertificate" name="certificate" value="y" checked>
    <label for="yCertificate">예</label>&nbsp;&nbsp;
    <input type="radio" id="nCertificate" name="certificate" value="n">
    <label for="nCertificate">아니오</label>
    <hr>
    <h4>반려견을 얼마나 키워보셨나요?(최근 5년 이내)</h4>
    <input type="radio" id="one" name="term" value="o" checked>
    <label for="one">1년 미만</label>&nbsp;&nbsp;
    <input type="radio" id="three" name="term" value="t">
    <label for="three">1년 ~ 3년</label>&nbsp;&nbsp;
    <input type="radio" id="five" name="term" value="f">
    <label for="five">3년 ~ 5년</label>&nbsp;&nbsp;
    <input type="radio" id="noExp" name="term" value="n">
    <label for="noExp">경험 없음</label>
    <hr>
    <h4>어느정도 크기의 강아지까지 돌봄이 가능하신가요? </h4>
    <input type="radio" id="small" name="size" value="s" checked>
    <label for="small">소형견까지</label>&nbsp;&nbsp;
    <input type="radio" id="medium" name="size" value="m">
    <label for="medium">중형견까지</label>&nbsp;&nbsp;
    <input type="radio" id="large" name="size" value="l">
    <label for="large">대형견까지</label>
    <hr>
    <textarea cols="45" rows="3" style="resize:none" name="textarea">이제까지 본인에 의해 작성된 모든 정보는 사실임을 확인하였으며, 사실 내용과 다르게 기재하였을 경우 어떤 불이익도 감수 하겠습니다. *
    </textarea><br>
    <input type="checkbox" id="agree" value="a">
    <label for="small">네, 동의합니다.</label>
    <br><br>
	<input type="submit" value="제출하기">
	
    
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	</form>	
	<%@include file = "../common/footer.jsp" %>
	
	
	<script>
	</script>
</body>
</html>