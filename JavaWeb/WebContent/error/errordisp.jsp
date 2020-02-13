<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 처음보는 명령어 -->
<%@ page isErrorPage = "true" %>
<!-- 해석 : 이 페이지는 exception 객체를 사용 할 수 있다. -->


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error가 발생할 경우 처리할 페이지</title>
</head>
<body>
	<%
		out.println("<h2>Error page. 문제가 지속되면 연락주세욤 02-1234-1234</h2>");
	%>
</body>
</html>