<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 일치시 분기</title>
</head>
<body>
	<script type="text/javascript">
		if(window.name == "update") {
			window.opener.parent.location.href="employeeServlet?command=employee_update_form&num=${param.num}";
		
		} else if (window.name == "delete"){
			alert('삭제되었습니다.');
			window.opener.parent.location.href = "employeeServlet?command=employee_delete&num=${param.num}";
		}
		window.close();
	</script>
	
</body>
</html>