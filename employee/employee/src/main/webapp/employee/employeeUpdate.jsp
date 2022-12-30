<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 수정</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div>
	<div id="wrap" align="center">
	<h1>사원 정보 수정</h1>
	<form name="frm" method="POST" action="employeeServlet">
		<input type="hidden" name="command" value="employee_update">
		<input type="hidden" name="num" value="${employee.num}">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" size="12" name="id" value="${employee.id}"></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" size="20" name="pass" value="${employee.pass}"></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" size="12" name="name" value="${employee.name}"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="text" size="12" name="gender" value="${employee.gender}"></td>
			</tr>
			<tr>
				<th>직급</th>
				<td><input type="text" size="12" name="lev" value="${employee.lev}"></td>
				
			</tr>
			<tr>
				<th>핸드폰번호</th>
					<td><input type="text" size="12" name="phone" value="${employee.phone}"></td>
			</tr>
			<tr>
				<th>입사일</th>
					<td><input type="text" size="12" name="enter" value="${employee.enter}"></td>
			</tr>
		</table>
		<br><br>
		<input type="submit" value="등록" onclick="return employeeCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록" onclick="location.href='employeeServlet?command=employee_list'">
	</form>
	</div>
</div>
</body>
</html>