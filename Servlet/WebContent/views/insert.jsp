<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터를 삽입하기</title>
</head>
<body>
	<h2>welcome to insert page</h2>
	
	<!-- 최근은 form을 만들 때, 무조건 post 방식으로  action을 설정 안한다. 
	action을 설정안하면? 기존 URL을 그대로 사용함
	작업이 1가지인데, 과정이 2가지라서 서로 다른 URL을 2개 사용하지 않도록 하는 것-->

	<form method = "post" id="nationform">
		<label for ="num">번호</label>
		<input type = "number" name="num" id="num" required="required"><br/>
		
		<label for ="nation">국가명</label>
		<input type = "text" name="nation" id="nation" required="required"><br/>
		
		<label for ="infnum">감염 환자 수</label>
		<input type = "number" name="infnum" id="infnum" required="required"><br/>
		
		<label for ="deathnum">사망 환자 수</label>
		<input type = "number" name="deathnum" id="deathnum" required="required"><br/>
		
		<label for ="recoverednum">회복한 환자 수</label>
		<input type = "number" name="recoverednum" id="recoverednum" required="required"><br/>
	
		<input type = "submit" value = "데이터삽입"/>
	</form>
</body>
</html>