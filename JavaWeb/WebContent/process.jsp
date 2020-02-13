<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 처리하는 페이지에서 가장 먼저 해야 하는 일은 파라미터를 읽어오는 것  -->
	
	<%
		//1. 파라미터를 읽기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
	
		//2. id와 pw가 일치하는지 확인하기
		if("root".equals(id) && "1234".equals(pw)){
			// 2-1. 로그인 성공 처리
			// 회원 정보를 세션에 저장하고 결과 페이지로 redirect
			session.setAttribute("id","root");
			session.setAttribute("nickname","관리자");
			response.sendRedirect("./indexfor0213.jsp");
		}else{
			//2-2. 로그인 실패처리
			// 메세지를 세션에 저장하고 로그인 페이지로 redirect
			session.setAttribute("msg", "없는 아이디거나 잘못된 비밀번호 입니다.");
			response.sendRedirect("./sessionlogin.jsp"); //실패한 경우 로그인 페이지로 되돌려보내기
		}
	
	%>

</body>
</html>