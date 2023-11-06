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

		<form method="post" action="boardEnroll.bo">
			<br>
			<br>
			<table class="table table-stripped"
				style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"
							style="background-color: #eeeeee; text-align: center;">게시글
							작성</th>
					</tr>
				</thead>

				<tbody>
					<tr>
						<td><input type="text" class="form-control"
							placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea id="editor" class="form-control"
								placeholder="글 내용" name="bbsContent" maxlength="8192"
								style="height: 350px"></textarea></td>
					</tr>
				</tbody>
			</table>

			<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
			<input type="file">
		</form>


	</div>




</body>
</html>