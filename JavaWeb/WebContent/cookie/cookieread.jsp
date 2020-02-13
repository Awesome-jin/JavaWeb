<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키을 읽어와서 출력하기</title>
</head>
<body>
	<!-- 쿠키를 읽어서 출력하는 코드를 만들기 -->
	<%
	// 1. 모든 쿠키를 가져와보자
	Cookie [ ] cookies = request.getCookies();
	for(Cookie cookie : cookies){
		out.print("<p>" + cookie.getName() + ":" + cookie.getValue() +"</p>");
		// 2. 배열이니까 cookie의 name(key) + value 형태로 불러옴
		
	}
	
	%>
	
</body>
</html>