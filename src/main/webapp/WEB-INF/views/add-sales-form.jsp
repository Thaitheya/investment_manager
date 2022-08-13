<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
<div id="root">
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
		<div id="form">
			<form:form action="adds" method="post" modelAttribute="addsales">

				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber"/>
					</div>
				</div>
				<div>
					<label for="salesId">Sales Id</label>
					<div>
						<form:input path="salesId" />
					</div>
				</div>
				<div>
					<label for="dateOfTxn">Date Of TXN</label>
					<div>
						<form:input path="dateOfTxn" />
					</div>
				</div>
				<div>
					<label for="stockId">stock Id</label>
					<div>
						<form:input path="stockId" />
					</div>
				</div>
				<div>
					<label for="soldPrice">Buy Price</label>
					<div>
						<form:input path="soldPrice" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity </label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="amountOfInr">Amount Of INR </label>
					<div>
						<form:input path="amountOfInr" />
					</div>
				</div>
				<div>
					<div>
						<button  id="add_stock"> Add sold stock</button>
					</div>
				</div>
			</form:form>


		</div>
	</div>
</body>
</html>