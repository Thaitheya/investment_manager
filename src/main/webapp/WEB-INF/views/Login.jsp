<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="Stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link
	href="${pageContext.request.contextPath}/resources/static/style.css"
	rel="stylesheet">
</head>
<body>
	<div class="login-form">
		<h1>Login Form</h1>
		<form:form action="#">
			<label>User Name</label>
			<form:input path="userName" />
			<label>password</label>
			<form:input path="password" type="password" />
			<form:button>Submit</form:button>


		</form:form>
	</div>

</body>
</html>