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
					<label for="first_name">First Name</label>
					<div>
						<form:input path="first_name"   />
					</div>
				</div>
				<div>
					<label for="last_name">Last Name</label>
					<div>
						<form:input path="last_name" />
					</div>
				</div>
				<div>
					<label for="user_name">User Name</label>
					<div>
						<form:input path="user_name" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="adhaar_number">Adhaar Number</label>
					<div>
						<form:input path="adhaar_number" />
					</div>
				</div>
				<div>
					<label for="pan_number">Pan Number</label>
					<div>
						<form:input path="pan_number" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" />
					</div>
				</div>
				<div>
					<label for="phone_number">Phone Number</label>
					<div>
						<form:input path="phone_number" />
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