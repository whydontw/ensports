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
<style>

	#h1{
		/*
		text-align:center;
		font-size: 35px;
		color: #343a40;
		*/
		background-color: #eeeeee;
		text-align: center;
		font-size: 40px;
		font-weight: bold;
	}
	
	.table{
		background-color: #b7e5b1;	
	}
	
	thead>tr{
		font-size: 18px;
		font-weight: bold;
		text-align: center;
	}
	tbody tr td{
		font-size: 14px;
		font-weight: bold;
		text-align: center;
	}
	
	.pagination{
		display:flex;
		justify-content:center;
	}
	
	.pagination li a{
		font-size: 22px;
		font-weight: bold;
		color: #2ebd1b;
	}
	
	#page a{
		font-size: 18px;
	}
	
	#post{
		color: #6c757d;
	}
	
	#post:hover {
        text-decoration: underline;
        cursor: pointer;
    }
    
    
</style>
</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	
	<br><br><br><br><br><br>
	
	<div id="h1">자유게시판</div>
	
	<br><br>
	
	<div class="container">
		<table class="table table-striped table-hover" style="background-color:#b7e5b1">
			<thead>
				<tr>
					<th width="100">글번호</th>
					<th width="100">작성자</th>
					<th>제목</th>
					<th>작성일</th>
					<th width="100">조회수</th>
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
							<tr>
								<td>${b.boardNo }</td>
								<td>${b.userNo }</td>
								<td><a href="boardDetail.bo?bno="${b.boardNo } id="post">${b.boardTitle }</a></td>
								<td>${b.createDate }</td>
								<td>${b.boardCount }</td>
							</tr>	
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		
		<hr>
		
		<c:if test="${loginUser != null }">
				<a href="boardEnroll.bo" class="btn btn-primary pull-right">글작성</a>
		</c:if>
		
		<div class="text-center">
			<ul class="pagination">
				<li id="page"><a href="#">이전</a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#">6</a></li>
				<li><a href="#">7</a></li>
				<li><a href="#">8</a></li>
				<li><a href="#">9</a></li>
				<li><a href="#">10</a></li>
				<li id="page"><a href="#">다음</a></li>
			</ul>
		</div>
	</div>
	
	<script>
	
		function boardDetail(){
			
		}
		
	
	
	</script>
	
	
	


</body>
</html>