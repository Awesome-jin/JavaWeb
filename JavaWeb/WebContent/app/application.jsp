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
		// 상대경로가 중요하다며? 파일 업로드나 특정 디렉토리에 파일을 생성해야 하는 경우는 절대경로를 확인해야 한다.
		String path = application.getRealPath("/app");
		out.println("<h2>app의 절대경로 확인 :" + path + "</h2>");
	%>
</body>
</html>