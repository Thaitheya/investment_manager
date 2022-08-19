<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
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
					<li class="navbar__item"><a href="/trade/home"
						class="navbar__links">Home</a></li>
					<li class="navbar__item"><a href="/form/registerform"
						class="navbar__links">Signup</a></li>
				</ul>
			</div>
		</nav>
	</div>
	<div>
		<table class="content-table">
		<caption></caption>
			<thead>
				<tr>
					<th>Transaction Id</th>
					<th>Transaction Date</th>
					<th>Customer Id</th>
					<th>adhaar Number</th>
					<th>Description</th>
					<th>Amount Received</th>
					<th>Amount Paid</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Transactions" items="${alltransaction}">
				<tr>
						<td>${Transactions.TransactionId}</td>
						<td>${Transactions.TransactionDate}</td>
						<td>${Transactions.CustomerId}</td>
						<td>${Transactions.adhaarNumber}</td>
						<td>${Transactions.description}</td>
						<td>${Transactions.amountReceived}</td>
						<td>${Transactions.amountPaid}</td>
				</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>