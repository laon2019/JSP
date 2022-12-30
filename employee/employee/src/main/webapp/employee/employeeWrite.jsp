<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 등록 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">

</head>
<body>
<div id="wrap" align="center">
	<h1>사원 등록</h1>
	<form id="frm" method="post" action="employeeServlet">
		<input type="hidden" name="command" value="employee_write">
		<table>
			<tr>
				<th>아이디</th>
				<td><input type="text" name="id" placeholder="아이디" required></td>
			</tr>
			
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass" placeholder="비밀번호" required></td>
			</tr>
				
			<tr>
				<th>이름</th>
				<td><input type="text" name="name" placeholder="이름"></td>
			</tr>
			
			<tr>
				<th>성별</th>
				<td>
					<input type="radio" name="gender" value="남자" checked>남자
					<input type="radio" name="gender" value="여자">여자
				</td>
			</tr>	
			
			<tr>
				<th>직급</th>
				<td>
					<input type="radio" name="lev" value="사원" checked>사원
					<input type="radio" name="lev" value="대리">대리
					<input type="radio" name="lev" value="부장">부장
				</td>
			</tr>
			<tr>
				<th>핸드폰번호</th>
				<td><input type="text" name="phone" placeholder="ex)010-1234-5678"></td>
			</tr>	
			<tr>
				<th>입사일</th>
				<td><input type="text" name="enter" placeholder="ex)2000-01-09"></td>
			</tr>	
		</table>
		<br></br>
		<input type="submit" value="등록" onclick="return employeeCheck()">
		<input type="reset" value="다시작성">
		<input type="button" value="목록" onclick="location.href='employeeServlet?command=employee_list'">	
	
	
	</form>


</div>

</body>
</html>