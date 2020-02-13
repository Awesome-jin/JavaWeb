<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션을 이용한 상태에서 로그아웃 처리하기</title>
</head>
<body>
	<% 
		//1. 세션을 삭제하자
		session.invalidate();
		/* 보통은 로그아웃 하면 메인페이지로 리다이렉트를 시켜버림
		response.sendRedirect("./");
		*/
	%>
	
	<!-- 5초 후에 로그아웃 되는 방식으로 적용 -->
	<h3>로그아웃 하였습니다. 5초 후 메인페이지로 이동합니다.</h3>
	<script>
		setTimeout(function(){
			location.href = "./indexfor0213.jsp";
		},5000)
	</script>
</body>
</html>