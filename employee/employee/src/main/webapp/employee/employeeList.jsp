<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 목록</title>
<link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
	<div id="wrap">
		<div class="list-title">사원 목록</div>
		<div class="todo-box">
			<table class=list>
				<tr>
					<td colspan="7" style="border: white; text-align: center;"><a
						href="employeeServlet?command=employee_write_form">사원 등록</a></td>
				</tr>

				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>이름</th>
					<th>성별</th>
					<th>직급</th>
					<th>핸드폰번호</th>
					<th>입사일</th>
				</tr>

				<c:forEach var="employee" items="${employeeList}">
					<tr>
						<td>${employee.num}</td>
						<td><a
							href="employeeServlet?command=employee_view&num=${employee.num}">
								${employee.id}</a></td>
						<td>${employee.name}</td>
						<td>${employee.gender}</td>
						<td>${employee.lev}</td>
						<td>${employee.phone}</td>
						<td>${employee.enter}</td>

					</tr>
				</c:forEach>

			</table>
		</div>


	</div>
</body>
</html>