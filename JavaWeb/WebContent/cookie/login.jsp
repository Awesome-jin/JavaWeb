<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디와 비밀번호를 입력하고 쿠키로 저장</title>
</head>
<body>
	<!-- 주의. checkbox를 선택한 채로 로그인을 했다면 id값은 입력이 된 상태여야 한다. -->
	<%
	Cookie [] cookies = request.getCookies();
	
	String id=""; //아이디로 사용할 변수
	String check="";  // 체크박스 체크 여부를 사용할 변수
	if(cookies != null){  //쿠키가 1개라도 있다면?
		for(Cookie cookie:cookies){ //배열로 다 불러와서
			if(cookie.getName().equals("id")){ // cookie의 이름이 id와 동일한게 있다면?
				id = cookie.getValue(); //id 란에는 쿠키의 id value를 넣어주어라
				check = "checked = 'checked'"; //cookie가 설정이 되면 check의 checked는 checked이다.
				break;
			}
		}
	}
	
	%>

	<h3> 로그인 </h3>
	<form action ="loginprocess.jsp" method = "post"> <!-- 누가 수행할건지 어떤 방법으로 할 건지 설정 -->
		ID : <input type = "text" name ="id" required=required value='<%=id%>'><br/> <!-- required는 필수값 여부 --> 
		비밀번호 : <input type = "password" name ="pw" required=required/><br/> 
		<input type = "checkbox" name ="idsave" value="idsave"<%=check%>> 아이디저장 <br/>
		<!-- 체크박스는 value값을 이미 명령을 한 상태니까 불러올 값이 있다면 바로 값만 옆에 넣어주면 된다. -->
		<input type = "submit" value = "signin"/> 
	</form>

</body>
</html>