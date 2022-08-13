<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
<style type="text/css">
a {
   font-style: none;
}
.content-table {
  border-collapse: collapse;
  margin: 25px 80px;
  font-size: 0.9em;
  min-width: 400px;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 2px rgba(0,0,0,0.15);
}
.content-table thead tr{
	 background-color: #141414;
	 color: gold;
	 text-align: left;
	 font-weight: bold;
}
.content-table th,
.content-table td {
  padding: 20px 15px;
}

.content-table tbody tr {
border-bottom: 1px solid #dddddd;
}
.content-table tbody tr:nth-of-type(even) {
background-color: #f3f3f3;
}
.content-table tbody tr:nth-of-type {
border-bottom: 2px solid #009879;
}
</style>
</head>
<body>
	<div>
		<table class="content-table">
			<thead>
				<tr>
					<th>Adhaar Number</th>
					<th>Stock Id</th>
					<th>Stock Name</th>
					<th>Company</th>
					<th>No Of Shares In Hand</th>
					<th>Face Value</th>
					<th>Last Tansactioned Date</th>
					<th>Last Tansactioned Value</th>
					<th>Delete</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="StockProduct" items="${allstockproduct}">
						<td>${StockProduct.adhaarNumber}</td>
						<td>${StockProduct.stockId}</td>
						<td>${StockProduct.stockName}</td>
						<td>${StockProduct.company}</td>
						<td>${StockProduct.noOfSharesInHand}</td>
						<td>${StockProduct.faceValue}</td>
						<td>${StockProduct.lastTansactionedDate}</td>
						<td>${StockProduct.lastTansactionedValue}</td>
		                <td><a id="red" href="/admin/deletestock?id=${StockProduct.stockId}">Delete</a><td>
		                <td><a id ="blue" href="/admin/updateform?id=${StockProduct.stockId}">update</a></td>
					</tr>

				</c:forEach>


			</tbody>
		</table>

	</div>

</body>
</html>