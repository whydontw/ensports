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
                 <input type="text" class="form-control" id="subject" name="subject" placeholder="Subject" onfocus="this.placeholder = ''"
                     onblur="this.placeholder = 'Subject'">
             </div>
             <div class="form-group">
                 <textarea class="form-control mb-10" rows="5" name="message" placeholder="Messege"
                     onfocus="this.placeholder = ''" onblur="this.placeholder = 'Messege'" required></textarea>
             </div>
             <button type="submit" class="primary-btn submit_btn">Post Comment</button>
         </form>
     </div>
     
     

</body>
</html>
