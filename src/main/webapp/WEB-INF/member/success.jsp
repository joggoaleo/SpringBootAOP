<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mybatis member 등록</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h3>${msg}</h3>
	
	<div>
		<button type="submit" id="btnList">List</button>
	</div>
</body>

<script>
	$(document).ready(function() {
		$("#btnList").on("click", function() {
			self.location = "/member/list";
		});
	});
</script>
</html>