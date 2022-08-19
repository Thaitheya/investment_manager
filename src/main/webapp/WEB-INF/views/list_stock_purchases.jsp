<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
<style>
<%@include
 
file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
	<div>
		<div id="preloader"></div>
		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">OpenSea.io</a>

					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/index"
							class="navbar__links">Home</a></li>
						<li class="navbar__item"><a href="/about"
							class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="/Help"
							class="navbar__links">Help</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div>
			<table class="content-table">
			<caption></caption>
				<thead>
					<tr>
						<th>Adhaar Number</th>
						<th>Purchase Id</th>
						<th>Date Of TXN</th>
						<th>Stock Id</th>
						<th>Buy Price</th>
						<th>Qunatity</th>
						<th>Amount Of INR</th>
						<th>Mode Of Payment</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="StockPurchase" items="${allstockpurchase}">
						<tr>
							<td>${StockPurchase.adhaarNumber}</td>
							<td>${StockPurchase.purchaseId}</td>
							<td>${StockPurchase.dateOfTxn}</td>
							<td>${StockPurchase.stockId}</td>
							<td>${StockPurchase.buyPrice}</td>
							<td>${StockPurchase.quantity}</td>
							<td>${StockPurchase.amountOfInr}</td>
							<td>${StockPurchase.modeOfPayment}</td>
						</tr>

					</c:forEach>


				</tbody>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		}, 1000)
	</script>

</body>
</html>