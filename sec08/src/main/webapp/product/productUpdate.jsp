<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 등록</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script type="text/javascript" src="script/product.js"></script>
</head>
<body>
<div id="wrap">
<h1>상품수정 - 관리자페이지</h1>
<form method="POST" action="productUpdate.do" name="frm" encType="multipart/form-data">
	<input type="hidden" name="code" value="${product.code}">
	<input type="hidden" name="nonmakeImg" value="${product.pictureurl}">
	
	<table>
		<tr>
			<td>
				<c:choose>
					<c:when test = "${empty product.pictureurl}">
						<img src="upload/noimage.png" width="100px" height="100px">
					</c:when>
				<c:otherwise>
					<img src="upload/${product.pictureurl}">
				</c:otherwise>
				</c:choose>
			
			
			</td>
			<td>
			
			<table>
		<tr>
			<th>상품명</th>
			<td>
				<input type="text" name="name" size="80" value="${product.name}">
			</td>
		</tr>
		
		<tr>
			<th>가격</th>
			<td>
				<input type="text" name="price" value="${product.price }"> 원
			</td>
		</tr>
	
		<tr>
			<th>이미지</th>
			<td>
				<input type="file" name="pictureurl" > <br>
				(주의사항 : 이미지를 변경하고자 할때만 선택하세요.)
			</td>
		</tr>
		
		<tr>
			<th>설명</th>
			<td>
				<textarea name="description" cols="80" rows="10">${product.description} </textarea><br>
				
			</td>
		</tr>
		
		
	</table>
			
			</td>
		</tr>
	</table>
	
	
	
	
	<br>
	<input type="submit" value="수정" onclick="return productCheck()">
	<input type="reset" value="다시작성">
	<input type="button" value="목록" onclick="location.href='productList.do'">



</form>
</div>
</body>
</html>