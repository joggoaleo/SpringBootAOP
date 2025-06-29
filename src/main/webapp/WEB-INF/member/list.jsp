<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBatis 게시판</title>
</head>
<body>
	<h2>게시글 목록</h2>
	<a href="/member/registerForm">New</a>
	<table border="1">
		<tr>
			<th align="center" width="80">NO</th>
			<th align="center" width="320">NAME</th>
			<th align="center" width="100">ID</th>
			<th align="center" width="100">PWD</th>
			<th align="center" width="180">REGDATE</th>

		</tr>
		<c:choose>
			<c:when test="${empty list}">
				<tr>
					<td colspan="7">등록된 회원이 없습니다.</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="member">
					<tr>
						<td align="center">${member.no}</td>
						<td align="left"><a href='/member/read?no=${member.no}'>${member.name}</a></td>
						<td align="right">${member.id}</td>
						<td align="right">${member.pwd}</td>
						<td align="center"><fmt:formatDate pattern="yyyy-MM-dd"
								value="${member.regDate}" /></td>

					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>
</body>
</html>