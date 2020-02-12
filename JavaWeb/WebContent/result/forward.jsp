<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
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
		
		//포워딩을 하는 경우 데이터를 저장한다.
		request.setAttribute("result", result);
	
		//포워딩하기
		RequestDispatcher dispatcher = request.getRequestDispatcher("forwardresult.jsp");
		dispatcher.forward(request, response);
	%>

</body>
</html>