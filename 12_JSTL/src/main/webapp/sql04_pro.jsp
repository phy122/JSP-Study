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
	%>
	<sql:setDataSource var="dataSource" 
		url="jdbc:mysql://localhost:3306/board_db?serverTimezone=Asia/Seoul&allowPublicKeyRetrieval=true&useSSL=false"
		driver="com.mysql.cj.jdbc.Driver"
		user="root"
		password="1234"
	/>
	
	<sql:update dataSource="${dataSource}" var="resultSet">
		DELETE FROM board
		WHERE no  = ? 
		<sql:param value="${param.no}" />
	</sql:update>
	
	<c:import url="sql01.jsp" var="list"/>
	${list}
</body>
</html>