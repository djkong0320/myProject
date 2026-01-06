<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h3>회원가입</h3>
	<form name="register" method="post" action="write">
		<p>아이디 : <input type="text" name="rid"> <input type="button" value="아이디 중복검사">
		<p>비밀번호 : <input type="password" name="rpasswd">
		<p>이름 : <input type="text" name="rname">
		<p>연락처 : <select name="rtel1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
		-<input type="text" name="rtel2" size="4">
		-<input type="text" name="rtel3" size="4">
		<p>성별 : <input type="radio" name="rgender" value="남성" checked>남성
				<input type="radio" name="rgender" value="여성">여성
		<p>취미 : 독서<input type="checkbox" name="rhobby" value="독서" checked>
			운동<input type="checkbox" name="rhobby" value="운동">
			영화<input type="checkbox" name="rhobby" value="영화">
		<p><textarea name="rprofile" rows="3" cols="50" placeholder="가입인사를 입력해 주세요"></textarea>
		<p><input type="submit" value="가입하기"> <input type="reset" value="다시쓰기">
	</form>
</body>
</html>