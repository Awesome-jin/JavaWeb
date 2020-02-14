<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 출력 페이지</title>
</head>
<body>
	<h3>EL 출력 페이지</h3>
	<%
		//request나 session에 저장된 attribute를 출력하기 위해선
		// 먼저 읽어와서 출력해야 한다.
		Object msg = request.getAttribute("msg");
		out.println("<p>" + msg + "</p>");
	%>
	
	<p>${msg}</p> <!-- 이거면 똑같이 출력함 -->
	<p>초기화 파라미터: ${initParam.db}</p>
	
	<p> 리스트 출력 :${list[0]} </p>
	<p> 맵 출력 : ${map.Encapsulation} </p>
	<p> DTO 출력: ${nation.nation}</p>
</body>
</html>