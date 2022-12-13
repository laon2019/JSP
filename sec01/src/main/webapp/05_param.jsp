<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>param JSP</title>
<script type="text/javascript" src="param2.js"></script>
</head>
<body>
	<form name="frm" method="get" action="ParamServlet">
		이름 : <input type="text" name="name"><br>
		나이 : <input type="text" name="age"><br>
		<input type="submit" value="전송" onclick="return check1()">
	</form>
</body>
</html>