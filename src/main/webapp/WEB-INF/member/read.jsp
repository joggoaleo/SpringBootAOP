<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyBatis 게시판</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h2>게시글 읽기</h2>
	<form:form modelAttribute="member">
		<form:hidden path="no" />
		<table>
			<tr>
				<td>id</td>
				<td><form:input path="id" readonly="true" /></td>
			</tr>
			<tr>
				<td>pwd</td>
				<td><form:password path="pwd" readonly="true" /></td>
			</tr>
			<tr>
				<td>name</td>
				<td><form:input path="name" readonly="true" /></td>
			</tr>
			<tr>
				<td>auth - 1</td>
				<td><form:select path="authList[0].auth" disabled="true">
						<form:option value="" label="=== 권한 선택은 MODIFY에서 ===" />
						<form:option value="USER" label="사용자" />
						<form:option value="MEMBER" label="회원" />
						<form:option value="ADMIN" label="관리자" />
					</form:select></td>
			</tr>
			<tr>
				<td>email</td>
				<td><form:input path="email.email" readonly="true" /></td>
			</tr>
		</table>
	</form:form>
	<div>
		<button type="submit" id="btnModify">Modify</button>
		<button type="submit" id="btnRemove">Remove</button>
		<button type="submit" id="btnList">List</button>
	</div>
</body>
<script>
	$(document).ready(function() {
		var formObj = $("#member");
		console.log(formObj);
		$("#btnModify").on("click", function() {
			var memberNo = $("#no");
			var memberNoVal = memberNo.val();
			self.location = "/member/modify?no=" + memberNoVal;
		});
		$("#btnRemove").on("click", function() {
			formObj.attr("action", "/member/remove");
			formObj.submit();
		});
		$("#btnList").on("click", function() {
			self.location = "/member/list";
		});
	});
</script>
</html>