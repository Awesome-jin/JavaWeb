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
		Cookie cookie = new Cookie(java.net.URLEncoder.encode("도시", "utf-8"), "서울");
		// 이런식으로 한글이 팅기거나 깨져버리면 인코딩을 강제로 utf-8로 해주면 된다
		// 읽어올 때도 디코딩이 필요해진다.
		// value의 경우 크롬에선 문제가 없지만 다른 브라우저에선 문제가 생길 수 있다.
		
		//1-1. 쿠키의 수명을 설정
		cookie.setMaxAge(10);
	
		//2. 쿠키를 저장하기
		response.addCookie(cookie);
	%>
	
	<a href="./cookieread.jsp"> 쿠키를 읽는 페이지로 이동 </a><br/>
</body>
</html>