<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
<div id="root">

		<div id="form">
			<form:form action="register" method="post" modelAttribute="user">

				<div>
					<label for="firstName">First Name</label>
					<div>
						<form:input path="firstName"   />
					</div>
				</div>
				<div>
					<label for="lastName">Last Name</label>
					<div>
						<form:input path="lastName" />
					</div>
				</div>
				<div>
					<label for="userName">User Name</label>
					<div>
						<form:input path="userName" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber" />
					</div>
				</div>
				<div>
					<label for="panNumber">Pan Number</label>
					<div>
						<form:input path="panNumber" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<div>
						<form:button>Register</form:button>
					</div>
				</div>
			</form:form>

		</div>
	</div>
	
</body>
</html>