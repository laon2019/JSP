<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
</head>
<body>
<div id="wrap">
	<h1>회원 목록</h1>
	<table class="list">
		<tr>
			<td colspan="5" style="border: white; text-align: right">
			 <a href="BoardServlet?command=board_write_form">게시글 등록</a>
      		</td>
		</tr>
	<tr>
      <th>아이디</th>
      <th>비밀번호</th>
      <th>이름</th>
      <th>레벨</th>
      <th>입사일</th>
      <th>성별</th>
      <th>핸드폰번호</th>
    </tr>
	</table>
</div>
</body>
</html>