<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연령확인</title>
</head>
<body>
<%
int age = Integer.parseInt(request.getParameter("age"));
if(age<= 19){
	%><script type="text/javascript">
	alert("19세 미만은 입장이 불가해요.")
	history.go(-1)
	</script>
<%}
request.setAttribute("name","홍깅동");
RequestDispatcher dispatcher
= request.getRequestDispatcher("05_forwardResult.jsp");
dispatcher.forward(request, response); 
%>
</body>
</html>