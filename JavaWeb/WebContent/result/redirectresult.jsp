<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirect result.jsp</title>
</head>
<body>
	<%
		out.println("<h3>redirect 결과를 보여주는 페이지</h3>");	
		Object result = session.getAttribute("result");
		out.println("<p>연산결과:" + result + "</p>");
	%>
	
</body>
</html>