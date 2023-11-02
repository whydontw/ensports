<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        #boardTitle{
            width: 300px;
        }
        #textarea{
            width: 100%;
            height: 300px;
            resize: none;
        }

    </style>
</head>
<body>
    <div class="outer">
        <form action="boardEnroll.bo" method="post">
            <h1 align="center">게시글 작성</h1>
           <table align="center">
                <tr>
                    <td>제목 :</td>
                    <td>
                        <input type="text" name="title" id="boardTitle" required> 
                    </td>
                </tr>
                <tr>
                    <td>내용 : </td>
                    <td> </td>
                </tr>
                <tr>
                	<td colspan="2"><textarea name="content" id="textarea" required></textarea></td>
                </tr>
                
           </table>
           <br><br>
           <div align="center">
                <button type="submit">작성하기</button>
                <button type="button" onclick="history.back();">뒤로가기</button>
           </div>
        </form>
    </div>

</body>
</html>