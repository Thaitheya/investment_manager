<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Stock productr</title>
</head>
<body>

	<div>
		<table id="table root">
			<thead>
				<tr>Adhaar Number</tr>
				<tr>Purchase Id</tr>
				<tr>Date Of Txn </tr>
				<tr>Stock Id</tr>
				<tr>Buy Price</tr>
				<tr>Quantity</tr>
				<tr>Last Transactioned Date</tr>
				<tr>Last Transactioned Value</tr>
			</thead>
			<tbody>
				<c:forEach var="Shares_purchases" items="${allpurchasedstock}">
					<tr>
						<td>${Shares_purchases.adhaar_number}</td>
						<td>${Shares_purchases.purchase_id}</td>
						<td>${Shares_purchases.date_of_txn}</td>
						<td>${Shares_purchases.stock_id}</td>
						<td>${Shares_purchases.buy_price}</td>
						<td>${Shares_purchases.quantity}</td>
						<td>${Shares_purchases.amount_of_inr}</td>
						<td>${Shares_purchases.mode_of_payment}</td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>