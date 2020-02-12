<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파라미터 만들어보기</title>
</head>
<body>
	<!-- 링크에 파라미터 만들기 : 직접 파라미터를 입력하는 케이스 -->
	<!-- ?앞을 URL 뒤를 parameter라고 함 -->
	<a href="./process.jsp?query=korea&name=moon">대한민국</a><br/>
	
	<!-- form을 이용한 파라미터 만들기 -->
	<h1>get 방식 전송</h1>
	<form method = "get" action = "get.jsp">
	
		이름: <input type = "text" name = "name"> <!-- name을 잘 설정해야 한다.-->
		<br/><br/> 
		
		취미 : 
		<input type = "checkbox" name = "hobby" value="game"> 게임
		<input type = "checkbox" name = "hobby" value="studying"> 공부
		<input type = "checkbox" name = "hobby" value="workout"> 운동
		<br/><br/>
		
		성별 :
		<input type = "radio" name="gender" value="male"> 남
		<input type = "radio" name="gender" value="female"> 여
		<br/><br/>
		
		나이 : <select name = "age">
		<option value = "1"> 10대 </option>
		<option value = "2"> 20대 </option>	
		<option value = "3"> 30대 </option>	
		<option value = "4"> 40대 </option>	
		<option value = "5"> 50대 이상 </option>
		</select>
		<br/><br/>
		
		<input type = "submit" value = "전송"/>
	
	</form>
	
	<h1>post 방식 전송</h1>
	<form method = "post" action = "post.jsp">
		비밀번호 : <input type = "password" name="pw"><br/><br/>
		
		기타 : <textarea name="etc" rows="5" cols="20"></textarea>
		<br/><br/>
		
		<input type="submit" value="전송"/>
	</form>
</body>
</html>