<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
		request.setCharacterEncoding("UTF-8");
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
	%>
	<sql:setDataSource var="dataSource" 
		url="jdbc:mysql://localhost:3306/board_db?serverTimezone=Asia/Seoul&allowPublicKeyRetrieval=true&useSSL=false"
		driver="com.mysql.cj.jdbc.Driver"
		user="root"
		password="1234"
	/>
	
	<!-- 게시글 등록 JSTL 태그 -->
	<sql:update dataSource="${dataSource}" var="resultSet">
		INSERT INTO board (title, writer, content)
		VALUES( ?, ?, ? )
		<sql:param value="${param.title}" />
		<sql:param value="${param.writer}" />
		<sql:param value="${param.content}" />
	</sql:update>
	
	<!-- JSTL 이용한 외부 페이지 포함하기 -->
	<c:import url="sql01.jsp" var="list"/>
	${list}
</body>
</html>