<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인을 처리하는 페이지</title>
</head>
<body>

	<%
	//1. 파라미터를 읽어오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idsave = request.getParameter("idsave");
	// 1-1.체크박스를 체크하면 idsave라고 나오고 아니면 null이라고 나온다.
	
	//2. id를 저장해주는 쿠키를 생성
	Cookie cookie = new Cookie("id",id);
	
	//3. 체크박스가 null이 아니었다면? cookie를 만들어줘라.
	if(idsave!=null){
		response.addCookie(cookie);
	}else{
		cookie.setMaxAge(0); //3-1. 체크박스가 null이 었다면 쿠키는 소멸해라
	}
	
	// 4. 결과 페이지로 리다이렉트
	response.sendRedirect("./loginresult.jsp");
	
	%>
</body>
</html>