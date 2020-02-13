<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page errorPage = "errordisp.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error process page</title>
</head>
<body>
	<%
		//1. 입력한 파라미터 읽어오기
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int result = Integer.parseInt(num1) + Integer.parseInt(num2);
		out.println("<div>결과는?" + "\t" + result + "</div>");
	%>
</body>
</html>