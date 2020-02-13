<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="./cookie/cookiecreate.jsp"> 쿠키 생성 이동 </a><br/>
	<a href="./cookie/login.jsp"> 쿠키로 아이디를 저장하기</a><br/>
	<a href = "./webstorage/login.jsp">웹 스토리지를 이용한 아이디 저장</a><br/>
	<a href = "./error/input.jsp">에러 페이지 처리</a><br/>
	<div id="content">
	<% 
	// 로그인 안되어 있는 경우 >> 로그인이 되었으면 로그아웃으로 바꿔줘야 함
	// 기준은 무엇일까? Session의 id키에 value가 있는지 확인해보면 됨
		Object id = session.getAttribute("id");
		if(id==null){
		out.println("<a href='sessionlogin.jsp'>세션 데이터 로그인</a><br/>");
		}
		else{
			out.println("<p>" + session.getAttribute("nickname") + "님 환영합니다.</p>");
			//out.println("<p><input type = 'submit' value = 'signout'</p>");
			out.println("<p><a href='./sessionlogout.jsp'>세션 로그아웃</a></p>");
		}
	%>
	
	</div>
</body>
</html>