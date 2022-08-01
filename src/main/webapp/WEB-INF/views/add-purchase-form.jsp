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
			<form:form action="add" method="post" modelAttribute="addpurchases">

				<div>
					<label for="adhaarNumber">Adhaar Number</label>
					<div>
						<form:input path="adhaarNumber"/>
					</div>
				</div>
				<div>
					<label for="purchaseId">Purchase Id</label>
					<div>
						<form:input path="purchaseId" />
					</div>
				</div>
				<div>
					<label for="dateOfTxn">Date Of TXN</label>
					<div>
						<form:input path="dateOfTxn" />
					</div>
				</div>
				<div>
					<label for="stockId">stock Id</label>
					<div>
						<form:input path="stockId" />
					</div>
				</div>
				<div>
					<label for="buyPrice">Buy Price</label>
					<div>
						<form:input path="buyPrice" />
					</div>
				</div>
				<div>
					<label for="quantity">Quantity </label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="amountOfInr">Amount Of INR </label>
					<div>
						<form:input path="amountOfInr" />
					</div>
				</div>
				<div>
					<label for="modeOfPayment">Mode Of Payment</label>
					<div>
						<form:input path="modeOfPayment"/>
					</div>
				</div>
				<div>
					<div>
						<form:button>Add stock</form:button>
					</div>
				</div>
			</form:form>


		</div>
	</div>
	
</body>
</html>