<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//초기화 파라미터 읽기
		String url = application.getInitParameter("dburl");
		out.println("<h2>초기화 파라미터 url :" + url + "</h2>");
		
		//프로젝트 내의 경로의 절대 경로를 확인해보기
		String path = application.getRealPath("/app");
		out.println("<h2>app의 절대경로 확인 :" + path + "</h2>");
	%>
</body>
</html>