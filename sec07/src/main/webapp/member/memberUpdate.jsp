<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>

        <h2>회원수정</h2>
        <form action="memberUpdate.do" method="post" name="frm">
            <table>
              <tr>
                    <td id="title">이름</td>
                    <td>
                        <input type="text" name="name" maxlength="40" value="${mVO.name}" readonly>
                    </td>
                </tr>
                <tr>
                    <td id="title">아이디</td>
                    <td>
                        <input type="text" name="id" maxlength="20" value="${mVO.userid }">*
                        <input type="hidden" name="reid" size="20">  
                        <input type="button" value="중복체크" onclick="idCheck()">  
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">비밀번호</td>
                    <td>
                        <input type="password" name="pwd" maxlength="15">*
                    </td>
                </tr>
                
                <tr height="30">
                    <td id="title" width="80">비밀번호 확인</td>
                    <td>
                        <input type="password" name="pwd_check" maxlength="15">*
                    </td>
                </tr> 
                <tr>
                    <td id="title">이메일</td>
                    <td>
                        <input type="text" name="email" maxlength="30" value="${mVO.email }">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">휴대전화</td>
                    <td>
                        <input type="text" name="phone" value="${mVO.phone }">
                    </td>
                </tr>
                
                <tr>
                    <td id="title">등급</td>
                    <td><c:choose>
                    	<c:when test="${mVO.admin==0 }">
                        <input type="radio" name="admin" value="0" checked="checked">일반회원
                        <input type="radio" name="admin" value="1">관리자
                        </c:when>
                        <c:otherwise>
                        <input type="radio" name="admin" value="0">일반회원
                        <input type="radio" name="admin" value="1"checked="checked">관리자
                        </c:otherwise>
                    </c:choose></td>
                </tr>
                <tr>
                	<td colspan="2" align="center">
                	<input type="submit" value="확인" onclick="return joinCheck()">
                	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<input type="reset" value="취소">
                	</td>
                </tr>
                <tr>
                	<td colspan="2">${message }</td>
                </tr>
            </table>
            
              
        </form>
    
</body>
</html>