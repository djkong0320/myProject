<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록</title>
</head>
<body>
	<h3>회원목록</h3>
	<table border="1" width="700">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>이름</td>
			<td>연락처</td>
			<td>성별</td>
			<td>취미</td>
			<td>가입일</td>
		</tr>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.rno}</td>
			<td><a href="detail?rno=${dto.rno}">${dto.rid}</a></td>
			<td>${dto.rname}</td>
			<td>${dto.rtel}</td>
			<td>${dto.rgender}</td>
			<td>${dto.rhobby}</td>
			<td><fmt:formatDate value="${dto.rdate}" pattern="yyyy-MM-dd"/></td>
		</tr>
	</c:forEach>
	</table>
	<a href="writeForm">회원가입</a>
	
</body>
</html>