<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 생성하는 jsp</title>
</head>
<body>
	<%
	
		//1. 쿠키 생성하기
		Cookie cookie = new Cookie("city", "seoul");
	
		//2. 쿠키를 저장하기
		response.addCookie(cookie);
	%>
	
	<a href="./cookieread.jsp"> 쿠키를 읽는 페이지로 이동 </a><br/>
</body>
</html>