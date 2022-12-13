<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>악세사리</h2>
	관심 항목을 선택하세요.
	<hr>
	<form method="get" action="CheckboxServlet">
	<input type="checkbox" name="item" value="신발">신발
	<input type="checkbox" name="item" value="가방">가방
	<input type="checkbox" name="item" value="벨트">벨트 <br>
	<input type="checkbox" name="item" value="모자">모자
	<input type="checkbox" name="item" value="시계">시계
	<input type="checkbox" name="item" value="쥬얼리">쥬얼리<br>
	
	<span style="float:left; margin-right:20px">
		<label for="job">직업</label>
		<select id="job" name="job" size="1">
			<option value="">선택하세요</option>
			<option value="학생">학생</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="해적">해적</option>
			<option value="지구방위대">지구방위대</option>
			<option value="포켓몬트레이너">포켓몬트레이너</option>
			
		</select>
		<label for="interest">관심분야</label>
		<select id="interest" name="interest" size="5" multiple="multiple">
			<option value="에스프레소">에스프레소</option>
			<option value="로스팅">로스팅</option>
			<option value="생두">생두</option>
			<option value="원두">원두</option>
			<option value="핸드드립">핸드드립</option>
		</select>
		<br>
			<input type="submit" value="전송" style="float:clear:both;margin-right:50px">
	</span>
	
	
	
	</form>
</body>
</html>