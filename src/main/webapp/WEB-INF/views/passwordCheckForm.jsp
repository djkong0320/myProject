<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인폼</title>
</head>
<body>
	<h3>비밀번호 확인</h3>
	* 회원정보 수정과 회원 탈퇴를 위해 비밀번호를 입력하세요. <br>
	<form name="passwordCheckForm" method="post" action="passwordCheck">
		<input type="hidden" name="rno" value="${rno}">
		<input type="hidden" name="mode" value="${mode}">
		비밀번호 : <input type="password" name="rpasswd"> <br>
		<input type="submit" value="전송">
	</form>
	<c:if test="${not empty msg}"> <!-- 비밀번호가 일치하지 않았을시 메시지 출력 -->
		<p style="color:red;font-weight:bold">${msg}<p>
	</c:if>
</body>
</html>