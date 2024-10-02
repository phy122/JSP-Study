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
		// request.getParameterValues()  
		// : 2 개이상의 파라미터 값을 배열로 반환하는 메소드
		String[] hobbies = request.getParameterValues("hobby");
		for(int i = 0; i < hobbies.length; i++){
			
	%>
			<h5><%= hobbies[i]%></h5>
	
	<%
		}
	%>
</body>
</html>