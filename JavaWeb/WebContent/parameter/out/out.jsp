<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>html 출력을 위한 객체 out</title>
</head>
<body>
	<!-- index에서 링크 제대로 됐는지 확인<h3> out.jsp page</h3> -->
	
	<%
	out.println("<h2> out을 위한 출력작업 </h2>");
	out.println("<p>나이 <select name='age'>");
	%>
	
	<!-- iput.jsp의 select option이 많은 경우 반복문 처리가 경제적이다. -->
	<% 
	for(int i = 1; i<100; i=i+1){
		out.println("<option value =" + i +">" + i + "</option>");
	}
	out.println("</select></p>");
	%>
	
	<div id="disp"></div>
	<script>
	var disp = document.getElementById("disp");
	var html = "<select name='year'>";
	for (var i =1900; i<2021; i=i+1){
		html = html+"<option value =" +i + ">" + i + "</option>";
	}
	html = html + "</select>";
	disp.innerHTML = html;
	</script>
	
</body>
</html>