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

				<tr>Purchase Id
				</tr>
				<tr>Adhaar Number
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
			</thead>
			<tbody>
				<c:forEach var="SharesSold" items="${allstocksold}">
					<tr>

						<td>${SharesSold.adhaarNumber}</td>
						<td>${SharesSold.salesId}</td>
						<td>${SharesSold.dateOfTxn}</td>
						<td>${SharesSold.stockId}</td>
						<td>${SharesSold.soldPrice}</td>
						<td>${SharesSold.quantity}</td>
						<td>${SharesSold.amountOfInr}</td>
					</tr>

				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>