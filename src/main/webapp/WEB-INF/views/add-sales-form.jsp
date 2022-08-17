<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
	<div id="root">
		<div id="preloader"></div>
		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">OpenSea.io</a>

					<ul class="navbar__menu">
					<li class="navbar__item"><a href="/trade/index"
						class="navbar__links">Home</a></li>
						<li class="navbar__item"><a href="/trade/about"
							class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact</a></li>
					</ul>
				</div>
			</nav>
			<button style="margin-bottom: auto;">Back</button>
		</div>
		<div class="login-form">
			<form:form action="adds" method="post" modelAttribute="addsales">

				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber" />
					</div>
				</div>
				<div>
					<label for="salesId">Sales Id</label>
					<div>
						<form:input path="salesId" id="salesid" />
					</div>
				</div>
				<div>
					<label for="dateOfTxn">Date Of TXN</label>
					<div>
						<form:input path="dateOfTxn" id="date" name="date"
							onkeyup="showdate();" />
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
						<form:input path="soldPrice" id="num1" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity </label>
					<div>
						<form:input path="quantity" id="num2" />
					</div>
				</div>
				<div>
					<label for="amountOfInr">Amount Of INR </label>
					<div>
						<form:input path="amountOfInr" id="result"
							onmouseover="sub_number()" readonly="true" />
					</div>
				</div>
				<div>
					<div>
						<button id="add_stock" onclick="con();">Add sold stock</button>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<script type="text/javascript">
		function sub_number() {

			var first_number = parseInt(document.getElementById("num1").value);
			var second_number = parseInt(document.getElementById("num2").value);
			var result = first_number * second_number;

			document.getElementById("result").value = result;
		}
	</script>
	<script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		}, 1000)
	</script>

	<script type="text/javascript">
		document.getElementById('date').value = new Date().toISOString();
	</script>
	<script type="text/javascript">
		function con() {
			return confirm("Are you sure you wnat to sell");

		}
	</script>
	<script type="text/javascript">
		document.getElementById('salesid').value =Math.floor(Math.random() * 10000);
	</script>
</body>
</html>