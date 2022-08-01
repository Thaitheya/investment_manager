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
				<c:forEach var="Stock_Product" items="${allstockproduct}">
					<tr>
						<td>${Stock_Product.adhaarNumber}</td>
						<td>${Stock_Product.stockId}</td>
						<td>${Stock_Product.stockName}</td>
						<td>${Stock_Product.company}</td>
						<td>${Stock_Product.noOfSharesInHand}</td>
						<td>${Stock_Product.faceValue}</td>
						<td>${Stock_Product.lastTansactionedDate}</td>
						<td>${Stock_Product.lastTansactionedValue}</td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>