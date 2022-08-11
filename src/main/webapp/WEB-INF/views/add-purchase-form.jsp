<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style>
<%@
include file="/WEB-INF/views/assert/style.css"%>
</style>
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
		<form:form action="addp" method="post" modelAttribute="addpurchases">

			<div>
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber" />
				</div>
			</div>
			<div>
				<label for="purchaseId">Purchase Id</label>
				<div id="auto">
					<form:input path="purchaseId" />
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
				<label for="buyPrice">Buy Price</label>
				<div>
					<form:input path="buyPrice" />
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
				<label for="modeOfPayment">Mode Of Payment</label>
				<div>
					<form:input path="modeOfPayment" />
				</div>
			</div>
			<div>
				<div>
					<button id="add_stock">Add stock</button>
					<p id="demo">Please add stock</p>
				</div>
			</div>
		</form:form>
	</div>
	<script type="text/javascript">
			var load = function auto() {
				Math.floor(Math.random()*100 + 1)
			}
	</script>

</body>
</html>