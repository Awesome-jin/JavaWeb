<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post 방식 파라미터 처리하기</title>
</head>
<body>
	<%
	
	// 파라미터의 인코딩을 직접 설정하기
	
	request.setCharacterEncoding("utf-8");
	
	String pw = request.getParameter("pw");
	String etc = request.getParameter("etc");
	
	%>
	
	<p> pw = <%=pw%> </p>
	<p> etc = <%=etc%> </p>

</body>
</html>