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
		<h1>Login Form</h1>
		<form:form action="getlogin" method="post" modelAttribute="loginhere" name="myForm">
			<label>Email</label>
			<form:input path="email" name="email"/>
			<label>password</label>
			<form:input path="password" name="password" type="password" />
			<button >Submit</button>
		</form:form>
	</div>
	<script>
    function validate() {
     var uname = document.myForm.email.value;
     if(uname == "") {
       alert("Please enter the email");
       document.myForm.email.focus();
       return false;
     var passw = document.myForm.password.value;
       if((passw.length<5)|| (passw.length>15)){
    	   alert("Password should be min5 and max 15");
    	   document.myForm.email.focus();
           return false;
       }
       }
    }
     </script>
</body>
</html>