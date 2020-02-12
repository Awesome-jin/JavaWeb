<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터를 처리하는 페이지</title>
</head>
<body>

<% 
// 로그분석을 위해 사용하는 로직
String query = request.getParameter("query");
String name = request.getParameter("name");
%>

<p>query: <%=query%></p>
<p>name: <%=name%></p>

</body>
</html>