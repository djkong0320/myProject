<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세보기</title>
</head>
<body>
	<h3>회원정보 상세보기</h3>
	<table border="1" width="500">
		<tr>
			<td>번호</td>
			<td>${detail.rno}</td>
			<td>아이디</td>
			<td>${detail.rid}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${detail.rname}</td>
			<td>연락처</td>
			<td>${detail.rtel}</td>
		</tr>
		<tr>
			<td>성별</td>
			<td>${detail.rgender}</td>
			<td>취미</td>
			<td>${detail.rhobby}</td>
		</tr>
		<tr>
			<td colspan="4">${detail.rprofile}</td>
		</tr>
		<tr>
			<td colspan="4"><a href="passwordCheckForm?rno=${detail.rno}&mode=update">회원정보수정</a> | 
			<a href="passwordCheckForm?rno=${detail.rno}&mode=delete">회원탈퇴</a></td>
		</tr>
	</table>
</body>
</html>