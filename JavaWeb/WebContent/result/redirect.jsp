<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Redirect process</title>
</head>
<body>
		<%
		System.out.println("redirect");
		// 요청 페이지에서 전달한 파라미터 읽기
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		
		int s1 = 0;
		int s2 = 0;
		
		try{
			s1 = Integer.parseInt(first);
			s2 = Integer.parseInt(second);
		}catch(Exception e){
			
		}
		int result = s1 +s2;
		
		//데이터를 저장한다. redirect는 session에 저장해야 한다. request로 하면 소멸함!
		session.setAttribute("result", result);
		
		//redirect하기
		response.sendRedirect("redirectresult.jsp");
	%>
	
</body>
</html>