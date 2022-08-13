<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">

<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body style="background-color: #141414;">
	<div id="preloader"></div>
	<div id="root">
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>

				<ul class="navbar__menu">
					<li class="navbar__item"><a href="/admin"
						class="navbar__links">Home</a></li>
					<li class="navbar__item"><a href="/form/login"
						class="navbar__links">Signin</a></li>
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
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber" min="12"  pattern="^\d{4}\s\d{4}\s\d{4}$" title=" Adhaar must be number" 
					placeholder="Enter AdhaarNumber"  />
				</div>
				<form:errors path="adhaarNumber" cssClass="text-danger" />
			</div>
			
			<div>
				<label for="firstName">First Name</label>
				<div>
					<form:input path="firstName" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
				</div>
			</div>
			<form:errors path="firstName" cssClass="text-danger"/>
			<div>
				<label for="lastName">Last Name</label>
				<div>
					<form:input path="lastName" title="Name can't be empty"
						pattern="^[A-Za-z]\\w{3,20}$" required="true"/>
				</div>
			</div>
			<form:errors path="lastName" cssClass="text-danger" />
			<div>
				<label for="email">Email</label>
				<div>
					<form:input path="email"  title="Email can't be empty"
					pattern="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$" required="true"/>
				</div>
			</div>
			<form:errors path="email" cssClass="text-danger" />
			<div>
				<label for="password">Password</label>
				<div>
					<form:input path="password" type="password"
					title='password must begin with letter and contain atleast one number and must have atleast 8 characters'
						pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
						required="true"/>
				</div>
			</div>
			<form:errors path="password" cssClass="text-danger" />
			<div>
				<label for="panNumber">Pan Number</label>
				<div>
					<form:input path="panNumber" 
					title="panNumber must begin with character and mid should be number and end should be character"
					pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}"
					required="true"/>
				</div>
			</div>
			<form:errors path="panNumber" cssClass="text-danger" />
			<div>
				<label for="address">Address</label>
				<div>
					<form:input path="address" title="Address should atleast contain 10 characters" required="true"/>
				</div>
			</div>
			<form:errors path="address" cssClass="text-danger" />
			<div>
				<label for="phoneNumber">Phone Number</label>
				<div>
					<form:input path="phoneNumber"  max="10" title="PhoneNumber should have atleast 10 digits"
					pattern="^\\+?[1-9][0-9]{7,14}$" required="true"/>
				</div>
			</div>
			<form:errors path="phoneNumber" cssClass="text-danger" />
			<div>
				<div>
					<form:button>Register</form:button>
				</div>
			</div><br>
			${Register}
	
		</form:form>
	</div>
	
</body>
</html>