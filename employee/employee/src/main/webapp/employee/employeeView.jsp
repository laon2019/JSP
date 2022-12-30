<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원 정보 상세보기 </title>
<link rel="stylesheet" type="text/css" href="css/shopping2.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>
<div id="wrap" align="center">
	<h1>사원 정보 상세보기</h1>
		<table>
			<tr>
				<th>아이디</th>
				<td>${employee.id}</td>

			</tr>
			<tr>
				<th>이름</th>
				<td>${employee.name}</td>	
					
			
			<tr>
				<th>성별</th>
				<td>${employee.gender}</td>
			</tr>
			<tr>
				<th>직급</th>
				<td>${employee.lev}</td>
			</tr>	
				
			<tr>
				<th>핸드폰번호</th>
				<td>${employee.phone}</td>
			</tr>	
			<tr>
				<th>입사일</th>
				<td>${employee.enter}</td>
			</tr>	
			
		</table>
		<br></br>
		
		<input type="button" value="회원 수정" onclick="open_win('employeeServlet?command=employee_check_pass_form&num=${employee.num}', 'update')">	
		<input type="button" value="회원 삭제" onclick="open_win('employeeServlet?command=employee_check_pass_form&num=${employee.num}', 'delete')">	
		<input type="button" value="회원 리스트" onclick="location.href='employeeServlet?command=employee_list'">	
		<input type="button" value="회원 등록" onclick="location.href='employeeServlet?command=employee_write_form'">	
		


</div>

</body>
</html>