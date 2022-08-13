<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style type="text/css"><%@include file="/WEB-INF/views/asserts/style.css"%></style>
</head>
<body>
<div id="root">

		<div class="login-form">
			<form:form action="" method="post" modelAttribute="getStockproductsales">

				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber"/>
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
						<form:input path="lastTansactionedValue"/>
					</div>
				</div>
			</form:form>


		</div>
	</div>
     <div>
	<table id="table root">
		<thead>
			<tr>Adhaar Number</tr>
			<tr>Sales Id</tr>
			<tr>Date Of Txn </tr>
			<tr>Stock Id</tr>
			<tr>Sold Price</tr>
			<tr>Quantity</tr>
			<tr>AmountOfInr</tr>
		</thead>
		<tbody>
			<c:forEach var="Sales" items="${listofstockssales}">
				<tr>
					<td>${Sales.adhaarNumber}</td>
					<td>${Sales.salesId}</td>
					<td>${Sales.dateOfTxn}</td>
					<td>${Sales.stockId}</td>
					<td>${Sales.soldPrice}</td>
					<td>${Sales.quantity}</td>
					<td>${Sales.amountOfInr}</td>
				</tr>
	        </c:forEach>
		</tbody>
	</table>
</div>
	
</body>
</html>