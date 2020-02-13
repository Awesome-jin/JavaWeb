<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 이용 로그인</title>

<style>
	#disp {
	color:red;
	}
</style>


</head>
<body>
	
	<form action ="process.jsp" method="post">
	
		ID : <input type = "text" name ="id" required=required id="id"><br/> 
		
		비밀번호 : <input type = "password" name ="pw" required=required id="pw"/><br/> 
		
		<%
		// 세션에서 msg의 키의 값을 갖고와서 msg에 넣어주기
		Object msg = session.getAttribute("msg");
		if(msg != null){ // 만약 값이 있다면?
			out.println("<div id='disp'>" + msg + "</div>"); // div 영역을 생성해서 출력
			session.removeAttribute("msg");
		}
		%>
		
		<input type = "submit" value = "signin"/> 
	
	</form>
</body>
</html>