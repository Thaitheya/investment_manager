<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
	<div id="root">

		<div id="form">
			<form:form action="" method="post" modelAttribute="customer">

				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber" />
					</div>
				</div>
				<div>
					<label for="despositedAmount">DespositedAmount</label>
					<div>
						<form:input path="depositedAmount" />
					</div>
				</div>
				<div>
					<label for="sharesPurchased">SharesPurchased</label>
					<div>
						<form:input path="sharesPurchased" />
					</div>
				</div>
				<div>
					<label for="sharesSold">Shares Sold</label>
					<div>
						<form:input path="sharesSold" />
					</div>
				</div>
				<div>
					<label for="amountUnderSettlement">Amount Under Settlement</label>
					<div>
						<form:input path="amountUnderSettlement" />
					</div>
				</div>
		</div>
		</form:form>


	</div>
	<div>
		<table>
			<thead>
				<tr>Adhaar Number
				</tr>
				<tr>Purchase Id
				</tr>
				<tr>Date Of Txn
				</tr>
				<tr>Stock Id
				</tr>
				<tr>Buy Price
				</tr>
				<tr>Quantity
				</tr>
				<tr>AmountOfInr
				</tr>
				<tr>ModeOfPayment
				</tr>
			</thead>
			<tbody>
				<c:forEach var="transactions" items="${listoftransaction}">
					<tr>
						<td>${transactions.transactionId}</td>
						<td>${transactions.transactionDate}</td>
						<td>${transactions.adhaarNumber}</td>
						<td>${transactions.description}</td>
						<td>${transactions.amountReceived}</td>
						<td>${transactions.amountPaid}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>