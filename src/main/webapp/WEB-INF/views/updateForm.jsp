<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정</title>
</head>
<body>
	<h3>회원정보 수정</h3>
	<form name="register" method="post" action="update">
		<input type="hidden" name="rno" value="${edit.rno}">
		<p>아이디 : ${edit.rid}
		<p>비밀번호 : <input type="password" name="rpasswd" value="${edit.rpasswd}">
		<p>이름 : <input type="text" name="rname" value="${edit.rname}">
		<p>연락처 : <select name="rtel1">
					<option value="010"<c:if test="${fn:startsWith(edit.rtel,'010')}">selected</c:if>>010</option>
					<option value="011"<c:if test="${fn:startsWith(edit.rtel,'011')}">selected</c:if>>011</option>
					<option value="016"<c:if test="${fn:startsWith(edit.rtel,'016')}">selected</c:if>>016</option>
					<option value="017"<c:if test="${fn:startsWith(edit.rtel,'017')}">selected</c:if>>017</option>
					<option value="018"<c:if test="${fn:startsWith(edit.rtel,'018')}">selected</c:if>>018</option>
					<option value="019"<c:if test="${fn:startsWith(edit.rtel,'019')}">selected</c:if>>019</option>
				</select>
					-<input type="text" name="rtel2" size="4" value="${edit.rtel.substring(4,8)}">
					-<input type="text" name="rtel3" size="4" value="${edit.rtel.substring(9,13)}">
		<p>성별 : <input type="radio" name="rgender" value="남성" <c:if test="${edit.rgender=='남성'}">checked</c:if> disabled>남성
				<input type="radio" name="rgender" value="여성" <c:if test="${edit.rgender=='여성'}">checked</c:if> disabled>여성
		<p>취미 : 독서<input type="checkbox" name="rhobby" value="독서"<c:if test="${fn:contains(edit.rhobby,'독서')}">checked</c:if>>
			운동<input type="checkbox" name="rhobby" value="운동"<c:if test="${fn:contains(edit.rhobby,'운동')}">checked</c:if>>
			영화<input type="checkbox" name="rhobby" value="영화"<c:if test="${fn:contains(edit.rhobby,'영화')}">checked</c:if>>

		<p><textarea name="rprofile" rows="3" cols="50" placeholder="가입인사를 입력해 주세요">${edit.rprofile}</textarea>
		<p><input type="submit" value="회원정보수정"> <input type="button" value="회원정보수정취소" onclick="history.back();">
	</form>
</body>
</html>