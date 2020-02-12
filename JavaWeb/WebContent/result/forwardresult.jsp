<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward 결과 페이지</title>
</head>
<body>

	<%
		out.println("<h3>포워딩 결과를 보여주는 페이지</h3>");
		Object result = request.getAttribute("result");
		out.print("<p>연산결과:" + result + "</p>");
	%>

</body>
</html>