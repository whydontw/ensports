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

.td1{
	text-align: left;
	font-size: 15px;
}
#tr1>th{
	padding: 30px 0px;
	
}
th{
	background-color: #eeeeee; 
	text-align: center; 
	
}
</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>

	<section class="banner-area organic-breadcrumb">
        <div class="container">
            <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                <div class="col-first">
                    <h1>회원가입</h1>
                    <nav class="d-flex align-items-center">
                        <a href="${contextPath }">Home<span class="lnr lnr-arrow-right"></span></a>
                        <a href="${contextPath }/memberInsert.me">회원가입</a>
                    </nav>
                </div>
            </div>
        </div>
    </section>
	
	<div class="container">
			<br><br>
			<table class="table table-stripped"
				style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr id="tr1">
						<th colspan="4" class="pt-30 pb-30">게시글 상세보기</th>
					</tr>
					
					<tr>
						<td class="td1">글번호: ${b.boardNo }</td>
						<td class="td1">작성자: ${b.userNo }</td>
						<td class="td1">작성일: ${b.createDate }</td>
						<td class="td1">조회수: ${b.boardCount }</td>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td colspan="1" style="font-size: 15px;">제목</td>
						<td colspan="3"><input type="text" class="form-control"
							name="title" placeholder="글 제목" name="bbsTitle" maxlength="100" value="${b.boardTitle }" readonly="readonly"></td>
					</tr>
					<tr class="tr1">
						<td colspan="1" style="font-size: 15px;">내용</td>
						<td colspan="3"><textarea id="editor" class="form-control"
								name="content" placeholder="글 내용" name="bbsContent" maxlength="8192"
								style="height: 350px" readonly="readonly">${b.boardContent }</textarea></td>
					</tr>
					<tr>
						<th colspan="4" style="font-size: 15px; text-align: right; padding-left: 0px;">
							<c:choose>
								<c:when test="${empty a }">
									첨부파일이 없습니다.
								</c:when>
								<c:otherwise>
									<a download="${a.originName }" href="${contextPath }${a.filePath }${a.changeName}">${a.originName }</a>
								</c:otherwise>
							</c:choose>
						</th>	
					</tr>		
				</tbody>
			</table>
			<c:if test="${b.userNo eq loginUser.userNickname }">
				<a class="primary-btn pull-right" href="#" style="border-radius: 0">삭제하기</a>
				<a class="primary-btn pull-right" href="boardUpdate.bo?bno=${b.boardNo }" style="border-radius: 0">수정하기</a>
			</c:if>
				<a href="${contextPath }/boardList.bo?currentPage=1" class="primary-btn pull-right" style="border-radius: 0">돌아가기</a>
	</div>
	<br><br><br><br><br><br><br><br><br><br>
	<%@ include file="../common/footer.jsp"%>

</body>
</html>