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
	<div id="root">
		<div id="preloader"></div>
		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">OpenSea.io</a>

					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/index"
							class="navbar__links">Home</a></li>
						<li class="navbar__item"><a href="/trade/about"
							class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact</a></li>
					</ul>
				</div>
			</nav>
		</div>
		<div></div>
		<table class="content-table">
			<caption></caption>
			<thead>
				<tr>
					<th>CustomerId</th>
					<th>Adhaar Number</th>
					<th>Deposited Amount</th>
					<th>SharesPurchased</th>
					<th>SharesSold</th>
					<th>AmountUnderSettlement</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customerdetails" items="${customerlist}">
					<tr>
						<td>${customerdetails.customerId}</td>
						<td>${customerdetails.adhaarNumber}</td>
						<td>${customerdetails.depositedAmount}</td>
						<td>${customerdetails.sharesPurchased}</td>
						<td>${customerdetails.sharesSold}</td>
						<td>${customerdetails.amountUnderSettlement}</td>
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

