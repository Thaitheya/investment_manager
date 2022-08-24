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
<style type="text/css">
#back {
text-decoration: none;
color: #fff;
}
</style>
</head>
<body style="background-color: #141414">
<div id= "preloader"></div>
	<div id="root">
		<nav class="navbar">
		  <button><a href="/trade/index" id="back">Back</a></button>
			<div class="navbar__container">
			
				<a href="#" id="navbar__logo">OpenSea.io</a>

				<ul class="navbar__menu">
					<li class="navbar__item"><a href="/trade/index"
						class="navbar__links">Home</a></li>
					<li class="navbar__item"><a href="/about"
						class="navbar__links">About</a></li>
					<li class="navbar__item"><a href="/Help"
						class="navbar__links">Help</a></li>
				</ul>
			</div>
		</nav>
		 
	</div>
	<div class="login-form">
		<form:form action="transact" method="post" modelAttribute="trans">

			<div>
				<label for="transactionId">TransactionId</label>
				<div>
					<form:input path="transactionId"  placeholder="Transaction Id" id="transid"/>
				</div>
			</div>
			<div>
				<label for=" transactionDate"> TransactionDate</label>
				<div>
					<form:input path="transactionDate" id="date" name="date" onkeyup="showdate();"/>
				</div>
			</div>
			<div>
				<label for="customerId">CustomerId</label>
				<div>
					<form:input path="customerId" />
				</div>
			</div>
			<div>
				<label for="adhaarNumber">AdhaarNumber</label>
				<div>
					<form:input path="adhaarNumber" />
				</div>
			</div>
			<div>
				<label for="description">Description</label>
				<div>
					<form:input path="description" value="personal"/>
				</div>
			</div>
			<div>
				<label for="amountReceived">AmountReceived</label>
				<div>
					<form:input path="amountReceived"/>
				</div>
			</div>
			
			<div>
				<label for="amountPaid">Amount Paid</label>
				<div>
					<form:input path="amountPaid" />
				</div>
			</div>
			<div>
				<div>
					<button style="color: #fff;">Transaction</button>
				</div>
			</div>
		</form:form>
	</div>
</body>

<script type="text/javascript">
		var loader = document.getElementById("preloader");
       window.addEventListener("load",function() {
           loader.style.display ="none";
       },1000)
</script>
<script type="text/javascript">
		document.getElementById('transid').value = Math.floor(Math.random() * 10000);
	
	</script>
	<script type="text/javascript">
  document.getElementById('date').value = new Date().toISOString(); 
</script>
</html>