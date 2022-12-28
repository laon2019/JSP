<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원</title>
<link rel="stylesheet" type="text/css href="css/shopping.css">
</head>
<body>
<div id="wrap">
  <h1>사원 목록</h1>
  <table class="list">
    <tr>
      <td colspan="5" style="border: white; text-align: right">
      <a href="BoardServlet?command=board_write_form">사원 등록</a>
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
    <c:forEach var="board" items="${boardList}">
      <tr>
        <td>${board.num }</td>
        <td><a href="BoardServlet?command=board_view&num="${board.num }"></a>${board.title }</td>
        <td>${board.name }</td>
        <td><tmt:formatDate value='${board.writedate }' /></td>
        <td>${board.readcount }
      </tr>
    </c:forEach>
  </table>
</div>
</body>
</html>