<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style><%@include file="/WEB-INF/views/assert/style.css"%></style>
</head>
<body>
	<div id="preloader"></div>
	<div id="root">
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>

				<ul class="navbar__menu">
					<li class="navbar__item"><a href="/admin"
						class="navbar__links">Admin-Home</a></li>
					<li class="navbar__item"><a href="/Signup"
						class="navbar__links">Signup</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="login-form">
		<h1>Register Form</h1>
		<form:form action="register" method="post" modelAttribute="user">

			<div>
				<label for="firstName">First Name</label>
				<div>
					<form:input path="firstName" />
				</div>
			</div>
			<form:errors path="firstName" cssClass="txt-error"/>
			<div>
				<label for="lastName">Last Name</label>
				<div>
					<form:input path="lastName" />
				</div>
			</div>
			<form:errors path="lastName" cssClass="txt-error"/>
			<div>
				<label for="userName">User Name</label>
				<div>
					<form:input path="userName" />
				</div>
			</div>
			<form:errors path="userName" cssClass="txt-error"/>
			<div>
				<label for="password">Password</label>
				<div>
					<form:input path="password" type="password" />
				</div>
			</div>
			<form:errors path="password" cssClass="txt-error"/>
			<div>
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber" />
				</div>
			</div>
			<form:errors path="adhaarNumber" cssClass="txt-error"/>
			<div>
				<label for="panNumber">Pan Number</label>
				<div>
					<form:input path="panNumber" />
				</div>
			</div>
			<form:errors path="panNumber" cssClass="txt-error"/>
			<div>
				<label for="address">Address</label>
				<div>
					<form:input path="address" />
				</div>
			</div>
			<form:errors path="address" cssClass="txt-error"/>
			<div>
				<label for="phoneNumber">Phone Number</label>
				<div>
					<form:input path="phoneNumber" />
				</div>
			</div>
			<form:errors path="phoneNumber" cssClass="txt-error"/>
			<div>
				<div>
					<form:button>Register</form:button>
				</div>
			</div>
		</form:form>

	</div>
	<script>
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		})}
	</script>
</body>
</html>