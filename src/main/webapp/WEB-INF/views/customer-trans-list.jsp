<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			<form:form action="" method="post" modelAttribute="getcustomeraccounttransaction">

				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="adhaarNumber">adhaar Number</label>
					<div>
						<form:input path="adhaarNumber" />
					</div>
				</div>
				<div>
					<label for="depositedAmount">Deposited Amount</label>
					<div>
						<form:input path="depositedAmount" />
					</div>
				</div>
				<div>
					<label for="sharesPurchased">Shares Purchased</label>
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
			</form:form>


		</div>
	</div>
	<div>
		<table id="table root">
			<thead>
				<tr>transactionId
				</tr>
				<tr>transactionDate
				</tr>
				<tr>customerId
				</tr>
				<tr>adhaarNumber
				</tr>
				<tr>description
				</tr>
				<tr>amountReceived
				</tr>
				<tr>amountPaid
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Transaction" items="${transactionlist}">
					<tr>
						<td>${Transaction.transactionId}</td>
						<td>${Transaction.transactionDate}</td>
						<td>${Transaction.customerId}</td>
						<td>${Transaction.adhaarNumber}</td>
						<td>${Transaction.description}</td>
						<td>${Transaction.amountReceived}</td>
						<td>${Transaction.amountPaid}</td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>