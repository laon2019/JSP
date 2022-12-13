<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%-- 이페이지는 에러 페이지입니다. --%>
 <%@ page isErrorPage="true" %>
 <!-- error.jsp에 표시해야함 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러PAGE</title>
</head>
<body>
다음과 같이 에러가 발생했습니다.
<%= exception.getMessage()%>
</body>
</html>