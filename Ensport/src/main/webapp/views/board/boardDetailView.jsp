<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<style>
#boardTitle {
	width: 300px;
}

.table-stripped {
	font-size: 35px;
}

#imageDisplay {
	width: 100px;
	height: 100px;
}

.ck-editor__editable {
	height: 400px;
}

.ck-content {
	font-size: 12px;
}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

	<br>
	<br>
	<br>

	<div class="container">

			<br><br>
			<table class="table table-stripped"
				style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">게시글
							상세보기</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td><input type="text" class="form-control"
							name="title" name="bbsTitle" readonly="readonly">${b.boardTitle }</td>
					</tr>
					<tr>
						<td><textarea id="editor" class="form-control"
								name="content"
								style="height: 350px" readonly="readonly">${b.boardContent }</textarea></td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td colspan="3">
							<c:choose>
								<c:when test="${empty a }">
									첨부파일이 없습니다.
								</c:when>
								<c:otherwise>
									<a download="${a.originName }" href="${contextPath }${a.filePath }${a.changeName}">${a.originName }</a>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</tbody>
			</table>
			<div>
			
				<a href="${contextPath }/boardList.bo?currentPage=1" class="btn btn-secondary">목록으로</a>
				<!--현재 로그인된 유저의 아이디가 글 작성자와 동일하다면  -->
				<c:if test="${loginUser.userNickname eq b.userNo}">
			    	<button class="btn btn-secondary" onclick="location.href='${contextPath}/update.bo?bno=${b.boardNo }'">수정하기</button>
			    	<button class="btn btn-secondary" onclick="location.href='${contextPath}/delete.bo?bno=${b.boardNo }'">삭제하기</button>
			    </c:if>	
			    	
			</div>
	</div>
	



</body>
</html>