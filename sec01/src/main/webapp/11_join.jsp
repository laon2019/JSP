<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="Join.js"></script>
</head>
<body>
	<form name="frm" method="get" action="JoinServlet">
		이름 : <input type="text" name="name" id="name"><br>
		주민번호 : <input type="text" name="rrnum1" id="rrnum">-<input type="password" name="rrnum2" id="rrnum2"><br>
		아이디 : <input type="text" name="id" id="uid"><br>
		비밀번호 : <input type="password" name="pwd" id="pwd"><br>
		비밀번호 : <input type="password" name="repwd" id="repwd"><br>
		이메일 : <input type="text" name="email1"id="email1">@<input type="text" name="email2" id="email2"><br>
		우편번호 : <input type="text" name="post" id="post"><br>
		주소 : <input type="text" name="addr" id="addr"><br>
		핸드폰번호 : <input type="text" name="phone" id="phone"><br>
		<input type="submit" value="전송" onclick="return joinform_check()">
	</form>
</body>
</html>