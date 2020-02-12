<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>java web 2일차</title>
</head>
<body>
	<a href = "./parameter/input.jsp">parameter</a> <!-- 같은 디렉토리 내에 있다면 ./ ../ 불필요 -->
	<br/>
	<a href = "./parameter/out/out.jsp"> out 객체 이용</a><br/>
	<a href = "./app/application.jsp"> application 객체</a><br/>
	<a href = "./result/input.jsp">포워딩과 리다이렉트의 차이</a>
	
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