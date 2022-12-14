<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
<style>
<%@include file="/WEB-INF/views/asserts/stockaddsell.css"%>
</style>
</head>
<body>
<div class= actiom>
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>
				<div>
					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/addpurchases"
							class="navbar__links">Buy</a></li>
						<li class="navbar__item"><a href="/trade/addSale"
							class="navbar__links">Sell</a></li>
						<li class="navbar__item"><a href="/trade/about" class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact Us</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Profile</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div>
    <h1 style="text-align: center;">Customer Purchase List</h1>
	<div class="login-form">
		<div>
			<form:form action="" method="post" modelAttribute="getstockproduct">
				<div>
					<label for="adminId">Admin Id</label>
					<div>
						<form:input path="adminId" />
					</div>
				</div>
				<div>
					<label for="stockId">Stock Id</label>
					<div>
						<form:input path="stockId" />
					</div>
				</div>
				<div>
					<label for="stockName">Stock Name</label>
					<div>
						<form:input path="stockName" />
					</div>
				</div>
				<div>
					<label for="company">company</label>
					<div>
						<form:input path="company" />
					</div>
				</div>
				<div>
					<label for="noOfSharesInHand">No Of Shares In Hand</label>
					<div>
						<form:input path="noOfSharesInHand" />
					</div>
				</div>
				<div>
					<label for="faceValue">Face Value</label>
					<div>
						<form:input path="faceValue" />
					</div>
				</div>
				<div>
					<label for="lastTansactionedDate">Last Transactioned Date</label>
					<div>
						<form:input path="lastTansactionedDate" />
					</div>
				</div>
				<div>
					<label for="lastTansactionedValue">Last Transactioned value</label>
					<div>
						<form:input path="lastTansactionedValue" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
	</div>
	<div>
		<table class="content-table">
		<caption></caption>
			<thead>
				<tr>
					<th scope="col">Adhaar Number</th>
					<th scope="col">Purchase Id</th>
					<th scope="col">dateOfTxn</th>
					<th scope="col">Stock Id</th>
					<th scope="col">Buy Price</th>
					<th scope="col">Quantity</th>
					<th scope="col">Amount Of INR</th>
					<th scope="col">Mode Of Payment</th>
				<tr>
			</thead>
			<tbody>
				<c:forEach var="SharesPurchases" items="${listofstocks}">
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
			</tbody>
		</table>
	</div>
</body>
</html>