<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
</head>
<body>

	<div>
		<table id="table root">
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
				<tr>Amount Of INR
				</tr>
				<tr>Mode Of Payment
				</tr>
			</thead>
			<tbody>
				<c:forEach var="SharesPurchases" items="${allstock}">
					<tr>
						
						<td>${SharesPurchases.purchaseId}</td>
						<td>${SharesPurchases.adhaarNumber}</td>
						<td>${SharesPurchases.dateOfTxn}</td>
						<td>${SharesPurchases.stockId}</td>
						<td>${SharesPurchases.buyPrice}</td>
						<td>${SharesPurchases.quantity}</td>
						<td>${SharesPurchases.amountOfInr}</td>
						<td>${SharesPurchases.modeOfPayment}</td>
					</tr>

				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>