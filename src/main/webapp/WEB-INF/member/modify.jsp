<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis 회원</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<h3>회원 정보 수정</h3>
	<form:form modelAttribute="member" action="modify">
		<form:hidden path="no" />
		<table>
			<tr>
				<td>id</td>
				<td><form:input path="id" readonly="true" /></td>
				<td><font color="red"><form:errors path="id" /></font></td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><form:input path="pwd" /></td>
				<td><font color="red"><form:errors path="pwd" /></font></td>
			</tr>
			<tr>
				<td>username</td>
				<td><form:input path="name" /></td>
				<td><font color="red"><form:errors path="name" /></font></td>
			</tr>
			<tr>
				<td>email</td>
				<td><form:input path="email.email" /></td>
				<td><font color="red"><form:errors path="email.email" /></font></td>
			</tr>
			<tr>
				<td>auth - 1</td>
				<td><form:select path="authList[0].auth">
						<form:option value="" label="=== 선택해주세요 ===" />
						<form:option value="USER" label="사용자" />
						<form:option value="MEMBER" label="회원" />
						<form:option value="ADMIN" label="관리자" />
					</form:select></td>
				<td><font color="red"><form:errors
							path="authList[0].auth" /></font></td>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">Modify</button>
		<button type="submit" id="btnList">List</button>
	</div>
</body>
<script>
	$(document).ready(function() {
		var formObj = $("#member");
		$("#btnModify").on("click", function() {
			formObj.attr("action", "/member/modify");
			formObj.attr("method", "post");
			formObj.submit();
		});
		$("#btnList").on("click", function() {
			self.location = "/member/list";
		});
	});
</script>
</html>