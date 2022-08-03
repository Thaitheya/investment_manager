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
						<td>${SharesPurchases.adhaarNumber}</td>
						<td>${SharesPurchases.purchaseId}</td>
						<td>${SharesPurchases.dateOfTxn}</td>
						<td>${SharesPurchases.stockId}</td>
						<td>${SharesPurchases.buyPrice}</td>
						<td>${SharesPurchases.quantity}</td>
						<td>${SharesPurchases.amountOfInr}</td>
						<td>${SharesPurchases.modeOfPayment}</td>
					</tr>

				</c:forEach>
<script type="text/javascript">
       function add_stock() {
		 document.getElementById("demo").innerHTML = "Sucessfully added stock"
	  }
	
</script>

			</tbody>
		</table>

	</div>

</body>
</html>