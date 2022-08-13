<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
<div id="root">
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>

				<ul class="navbar__menu">
					<li class="navbar__item"><a href="/admin"
						class="navbar__links">Home</a></li>
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
			<form:input path="email" name="email" type="email" id="emails"/>
			<label>password</label>
			<form:input path="password" id="pass" name="password" type="password"  onkeyup= "return validate()" />
		<ul>
			<li id="lower">aleast one lowercase</li>
			<li id="speacial_character">atleast one special symbol</li>
			<li id= "number">atleast one number</li>
			<li id="length">atleast 6 characters</li>
			<li id="upper">atleast one uppercase</li>
		</ul>
		     <button >Submit</button>
		</form:form>
	</div>
	<script>
     function validate() {
    	 var pass = document.getElementById('pass');
    	 var upper = document.getElementById('upper');
    	 var lower = document.getElementById('lower');
    	 var num = document.getElementById('number');
    	 var len = document.getElementById('length');
    	 var sp_char = document.getElementById('special_character');
    	 
    	 if(pass.value.match(/[0-9]/)) {
    		 num.style.color = 'green'
    	 }
    	 else {
    		 num.style.color = 'red'
    	 }
    	 if(pass.value.match(/[A-Z]/)) {
    		 upper.style.color = 'green'
    	 }
    	 else{
    		 upper.style.color = 'red'
    	 }
    	 if(pass.value.match(/[a-z]/)) {
    		 
    		 lower.style.color = 'green'
    	 }
    	 else{
    		 lower.style.color = 'red';
    	 }
         if(pass.value.match(/[!\@\#\$\%\^\&\*\(\)\_\-\+\=\?\>\<\.\,]/)) {
    		 
        	 sp_char.style.color = 'green'
    	 }
    	 else{
    		 sp_char.style.color = 'red';
    	 }
 		if(pass.value.length<6) {
    		 
 			len.style.color = 'green'
    	 }
    	 else{
    		 len.style.color = 'red';
    	 }
     }
     function confirm() {
    	 var pass = document.getElementById('pass');
    	 var email = document.getElementById('email');
    	 if(pass.value != email.value) {
    		 document.getElementById('number').style.display = 'none'
    	 }
     }
     </script>
</body>
</html>