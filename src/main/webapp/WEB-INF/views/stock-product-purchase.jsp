<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
</head>
<body>
<div id="root">

		<div id="form">
			<form:form action="" method="post" modelAttribute="getstockproduct">

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
			<tr>Purchase Id</tr>
			<tr>Date Of Txn </tr>
			<tr>Stock Id</tr>
			<tr>Buy Price</tr>
			<tr>Quantity</tr>
			<tr>AmountOfInr</tr>
			<tr>ModeOfPayment</tr>
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