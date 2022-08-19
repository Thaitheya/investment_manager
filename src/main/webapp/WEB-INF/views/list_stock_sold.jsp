<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Stock product</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
<div id= "preloader"></div>
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
				<th>Sales Id</th>
				<th>Date Of Txn</th>
				<th>Stock Id</th>
				<th>Sold Price</th>
				<th>Quantity</th>
				<th>Amount Of INR</th>
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
	<script type="text/javascript">
			var loader = document.getElementById("preloader");
            window.addEventListener("load",function() {
                loader.style.display ="none";
            },1000)
</script>
	
</body>
</html>