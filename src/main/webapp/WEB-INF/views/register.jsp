<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body style="background-color: #141414;">
	<div id="root">
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>

				<ul class="navbar__menu">
					<li class="navbar__item"><a href="/trade/home"
						class="navbar__links">Home</a></li>
					<li class="navbar__item"><a href="/form/login"
						class="navbar__links">Signin</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="login-form">
	<div id="preloader"></div>
		<h1 style="margin-top: 80px">Register Form</h1>
		<form:form action="register" method="post" modelAttribute="user">

			<div>
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber" min="12"
						title=" Adhaar must be number" pattern="^\d{4}\s\d{4}\s\d{4}$"  placeholder="Enter AdhaarNumber" />
				</div>
			</div>
			<div>
				<label for="firstName">First Name</label>
				<div>
					<form:input path="firstName" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" />
				</div>
			</div>
			<div>
				<label for="lastName">Last Name</label>
				<div>
					<form:input path="lastName" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true" />
				</div>
			</div>
			<div>
				<label for="email">Email</label>
				<div>
					<form:input path="email" title="Email can't be empty"
						pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true" />
				</div>
			</div>
			<div>
				<label for="password">Password</label>
				<div>
					<form:input path="password" type="password"
						title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true" />
				</div>
			</div>
			<div>
				<label for="panNumber">Pan Number</label>
				<div>
					<form:input path="panNumber"
						title="panNumber must begin with character and mid should be number and end should be character"
						pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" required="true" />
				</div>
			</div>
			<div>
				<label for="address">Address</label>
				<div>
					<form:input path="address"
						title="Address should atleast contain 10 characters"
						required="true" />
				</div>
			</div>
			<div>
				<label for="phoneNumber">Phone Number</label>
				<div>
					<form:input path="phoneNumber" max="10"
						title="PhoneNumber should have atleast 10 digits"
						pattern="^\\+?[1-9][0-9]{7,14}$" required="true" />
				</div>
			</div>
			<div>
				<div>
					<form:button>Register</form:button>
				</div>
			</div>
			<br>
		</form:form>
	</div>
     <script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		}, 1000)
	</script>
	
</body>
</html>