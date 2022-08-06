<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
	integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
	integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
	crossorigin="anonymous"></script>
</head>
<body>
	<div id="root">
		<h1>Customer Purchase List</h1>
		<div id="form">
			<form:form action="" method="post" modelAttribute="getstockproduct">

				<div class="mb-3">
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber" />
					</div>
				</div>
				<div class="mb-3">
					<label for="stockId">Stock Id</label>
					<div>
						<form:input path="stockId" />
					</div>
				</div>
				<div class="mb-3">
					<label for="stockName">Stock Name</label>
					<div>
						<form:input path="stockName" />
					</div>
				</div>
				<div class="mb-3">
					<label for="company">company</label>
					<div>
						<form:input path="company" />
					</div>
				</div>
				<div class="mb-3">
					<label for="noOfSharesInHand">No Of Shares In Hand</label>
					<div>
						<form:input path="noOfSharesInHand" />
					</div>
				</div>
				<div class="mb-3">
					<label for="faceValue">Face Value</label>
					<div>
						<form:input path="faceValue" />
					</div>
				</div>
				<div class="mb-3">
					<label for="lastTansactionedDate">Last Transactioned Date</label>
					<div>
						<form:input path="lastTansactionedDate" />
					</div>
				</div>
				<div class="mb-3">
					<label for="lastTansactionedValue">Last Transactioned value</label>
					<div>
						<form:input path="lastTansactionedValue" />
					</div>
				</div>
			</form:form>


		</div>
	</div>
	<div>
		<table id="table root" class="table-primary">
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
						<th scope="row">1</th>
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