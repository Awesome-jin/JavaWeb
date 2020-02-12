<!-- charset은 출력을 UTF-8로 pageEncoding은 현재 문서를 UTF-8로 저장하게 해주는 것 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- 소스 보기를 했을 때, 공백을 제거하도록 해주는 설정 -->

<%@ page trimDirectiveWhitespaces = "true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>This is SECOND</title>
</head>
	<h2>See? It's a second</h2>
	<p> it's a jsp </p>
<body>
	<!-- %안에 자바코드 작성 가능 % -->
	<%
		int a = 10;
		int b = 20;
		int result = a+b;
	%>
	
	<p> result : <%=result %></p> <!-- 여기서 가장 먼저 수행되는 부분은 자바코드 -->
</body>
</html>