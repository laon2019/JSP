<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.net.URLEncoder" %>
   <%
   String id="gildong";
   String pw="1234";
   String name = "홍길동";
   request.setCharacterEncoding("UTF-8");
   if(id.equals(request.getParameter(id)) && pw.equals(request.getParameter(pw))){
	   response.sendRedirect("04_main.jsp?name="
			   +URLEncoder.encode(name, "UTF-8"));
   } else{
	   response.sendRedirect("04_loginjForm.jsp?name="
			   +URLEncoder.encode(name, "UTF-8"));
   }
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>