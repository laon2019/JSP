<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문 조사 결과</h1>
	<%
	String name = "";
	String gender ="";
	String[] season;
	name = request.getParameter("name");
	gender = request.getParameter("gender");
	season = request.getParameterValues("season");
	%>
	이름 : <%= name%> <br>
	성별 : <%= gender %> <br>
	계절 : 
	<%
	for(String s : season){
		out.print(s);
	}
	%>
	<br>
	<a href="02_researchform.jsp">취소</a><br>
</body>
</html>