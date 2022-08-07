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
				<tr>adhaar_number
				</tr>
				<tr>stock_id
				</tr>
				<tr>stock_name
				</tr>
				<tr>company
				</tr>
				<tr>no_of_shares_in_hand
				</tr>
				<tr>face_value
				</tr>
				<tr>last_tansactioned_date
				</tr>
				<tr>last_tansactioned_value
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StockProduct" items="${allstock}">
					<tr>
						<td>${StockProduct.adhaarNumber}</td>
						<td>${StockProduct.stockId}</td>
						<td>${StockProduct.stockName}</td>
						<td>${StockProduct.company}</td>
						<td>${StockProduct.noOfSharesInHand}</td>
						<td>${StockProduct.faceValue}</td>
						<td>${StockProduct.lastTansactionedDate}</td>
						<td>${StockProduct.lastTansactionedValue}</td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>