<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/views/common/menubar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Contact V1</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

	<div class="comment-form">
         <h4>${sessionScope.loginUser.userNickname }님 안녕하세요! 무엇이든지 물어보세요</h4>
         <form method="post" action="${contextPath }/qaEnroll.qa">
             <input type="hidden" name="userNo" value="${loginUser.userNo }">
             <div class="form-group">
                 <input type="text" class="form-control" id="subject" name="subject" placeholder="제목" onfocus="this.placeholder = ''"
                     onblur="this.placeholder = '제목'">
             </div>
             <div class="form-group">
                 <textarea class="form-control mb-10" rows="5" name="message" placeholder="내용"
                     onfocus="this.placeholder = ''" onblur="this.placeholder = '내용'" required></textarea>
             </div>
             <button type="submit" class="primary-btn submit_btn" style="margin-top: 30px;">Post Comment</button>
         </form>
     </div>

</body>
</html>
