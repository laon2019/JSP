<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 목록 </title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
</head>
<body>
<div id="wrap">
	<h1>회원 목록</h1>
	<table class=list>
		<tr>
			<td colspan="5" style="border:white; text-align:right">
				<a href="BoardServlet?command=board_write_form" >회원 등록</a>
			</td>
		</tr>
		
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>성별</th>
			<th>직급</th>
			<th>핸드폰번호</th>
		</tr>
		
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.id}</td>
				<td>${board.name}</td>
				<td>${board.gender}</td>
				<td>${board.lev}</td>
				<td>${board.phone}</td>
			</tr>
		</c:forEach>
		
	</table>


</div>
</body>
</html>