<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>get 방식 파라미터 읽기</title>
</head>
<body>

	<%
	
	String name = request.getParameter("name");
	//String hobby = request.getParameter("hobby");
	// 이렇게 하면 안된다! checkbox기 때문에 복수 선택 값을 배열로 받는 형태로 작성해야 한다.
	String [] hobby = request.getParameterValues("hobby"); 
	String age = request.getParameter("gender");
	String gender = request.getParameter("age");
	
	%>
	
	<p> name = <%=name%> </p>
	<!-- 배열은 바로 출력하면 안되고 반복문을 이용해서 출력함 -->
	<p> hobby:<%for(String imsi : hobby){out.write(imsi + "\t");}%></p> 
	<p> gender = <%=gender%> </p>
	<p> age = <%=age%> </p>


</body>
</html>