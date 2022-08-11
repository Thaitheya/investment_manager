<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
<%@include file="/WEB-INF/views/assert/style.css"%>
</style>
</head>
<body>
<script type="text/javascript">
alert("Hello");

</script>
	<div class="login-form">
		<h1>Login Form</h1>
		<form:form action="login" method="post" modelAttribute="userlog">
			<label>Email</label>
			<form:input path="email"/>
			<label>password</label>
			<form:input path="password" type="password" />
			<form:button href="/trade/index">Submit</form:button>


		</form:form>
	</div>

</body>
</html>