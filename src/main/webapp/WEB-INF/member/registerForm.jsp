<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis Member 등록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
	<h3>회원 등록</h3>
	<form:form modelAttribute="member" action="/member/register">
		<table>
			<tr>
				<td>id</td>
				<td><form:input path="id" /></td>
				<td><font color="red"><form:errors path="id" /></font></td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><form:input path="pwd" /></td>
				<td><font color="red"><form:errors path="pwd" /></font></td>
			</tr>
			<tr>
				<td>name</td>
				<td><form:input path="name" /></td>
				<td><font color="red"><form:errors path="name" /></font></td>
			</tr>
			<tr>
				<td>email</td>
				<td><form:input path="email.email" /></td>
				<td><font color="red"><form:errors path="email.email" /></font></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnRegister">등록</button>
		<button type="submit" id="btnList">List</button>
	</div>
</body>

<script>
	$(document).ready(function() {
		var formObj = $("#member");
		$("#btnRegister").on("click", function() {
			formObj.attr("action", "/member/register");
			formObj.attr("method", "post");
			formObj.submit();
		});
		$("#btnList").on("click", function() {
			self.location = "/member/list";
		});
	});
</script>
</html>