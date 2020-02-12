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
	
	<%@ page import = "java.io.*, java.sql.*" %>
	<% 
		//오늘 날짜를 문자열로 생성
		long d = System.currentTimeMillis();
		Date today = new Date(d);
		String filename = today.toString();
	
		//파일에 기록 할 수 있는 객체 생성
		PrintWriter pw = new PrintWriter(
				new FileOutputStream("C:\\Users\\admin\\Documents\\" + filename+ ".log", true)); //파일이 없으면 생성하고 있으면 뒤에 이어 붙이도록 생성
				
		//접속한 IP주소 가져오기
		String ip = request.getRemoteAddr();
				
		//요청한 URL 가져오기 - 전체 요청 경로
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		
		// 전체 요청 경로에서 루트 경로는 제외하고 분석에 필요한 부분만 뽑아보기
		String url = requestURI.substring(contextPath.length()+1);
		
		//파일에 기록 하기
		pw.println(ip + "-" + url + "\n");
		pw. flush();
		pw.close();
	%>
	
</body>
</html>