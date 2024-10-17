<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.SortedMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.apache.taglibs.standard.tag.common.sql.ResultImpl"%>
<%@page import="DTO.Board"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - sql</title>
</head>
<body>
	<h1>게시글 목록</h1>
	<!-- 데이터 -->
	<sql:setDataSource var="dataSource" 
		url="jdbc:mysql://localhost:3306/board_db?serverTimezone=Asia/Seoul&allowPublicKeyRetrieval=true&useSSL=false"
		driver="com.mysql.cj.jdbc.Driver"
		user="root"
		password="1234"
	/>
	<!-- sql:query 반환된 결과는 ResultSet 객체로 변환 -->
	<sql:query var="resultSet" dataSource="${dataSource}">
		SELECT * FROM board
	</sql:query>
	
	<!-- resultSet -> Board 객체로 매핑 -->
	<% 
		ResultImpl result = (ResultImpl)pageContext.getAttribute("resultSet");
		SortedMap[] rows = result.getRows();
		List<Board> boardList = new ArrayList<Board>();
		
		for(SortedMap row : rows){
			Board board = new Board();
			board.setNo((Integer) row.get("no"));
			board.setTitle((String) row.get("title"));
			board.setWriter((String) row.get("writer"));
			board.setContent((String) row.get("content"));
			board.setRegDate((Timestamp) row.get("reg_date"));
			boardList.add(board);
		}
		pageContext.setAttribute("boardList", boardList);
	%>
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>등록일자</th>
		</tr>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td><c:out value="${board.no }"/></td>
				<td><c:out value="${board.title }"/></td>
				<td><c:out value="${board.writer }"/></td>
				<td><c:out value="${board.content }"/></td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>