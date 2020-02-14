<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록 보기</title>
</head>
<body>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>

	<h2 align='center'>Infected nation list</h2>
	<table align='center' border ='1'>
		<tr>
			<th>번호</th>
			<th>국가</th>
			<th>감염자 수</th>
			<th>사망자 수</th>
			<th>회복한 환자 수</th>
		</tr>
		
		<!-- list라고 저장된 데이터를 item이라는 변수에 하나씩 대입 -->
		<c:forEach var="corona" items="${list}">
			<tr>
				<td>${corona.num}</td>
				<!-- td안에 a태그로 상세보기 링크를 달아 줄 수 있다.-->
				<td><a href="./detail/${corona.num}">${corona.nation}</a></td>
				<td>${corona.infnum}</td>
				<td>${corona.deathnum}</td>
				<td>${corona.recoverednum}</td>
			</tr>
			
		
		</c:forEach>
		
	</table>
</body>
</html>