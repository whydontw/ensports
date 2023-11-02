<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String contextPath = request.getContextPath();
%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1 align="center">자유게시판</h1>
	
	<table border="1" align="center">
		<thead>
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>내용</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${empty list }">
					<tr>
						<td colspan='5'>게시글이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="b">
						<td>${b.boardNo }</td>
						<td>${b.userNo }</td>
						<td>${b.boardTitle }</td>
						<td>${b.createDate }</td>
						<td>${b.boardCount }</td>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<br> <br>
	<div align="center">
		<a href="${contextPath }/boardEnroll.bo">글작성</a>
	</div>


</body>
</html>