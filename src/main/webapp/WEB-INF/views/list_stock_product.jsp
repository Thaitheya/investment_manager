<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
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
				<tr>
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
	<script type="text/javascript">
	var loader = document.getElementById("preloader");
	window.addEventListener("load", function() {
		loader.style.display = "none";
	}, 1000)
</script>

</body>
