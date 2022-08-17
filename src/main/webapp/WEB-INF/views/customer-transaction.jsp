<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
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
			<button style="margin-bottom: auto;">Back</button>
		</div>
		<div class="login-form">
			<form:form action="" method="post" modelAttribute="getCustomer">

				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="adhaarNumber">AdhaarNumber</label>
					<div>
						<form:input path="adhaarNumber" id="salesid" />
					</div>
				</div>
				<div>
					<label for="depositedAmount">DepositedAmount</label>
					<div>
						<form:input path="depositedAmount" id="date" name="date"
							onkeyup="showdate();" />
					</div>
				</div>
				<div>
					<label for="sharesPurchased">SharesPurchased</label>
					<div>
						<form:input path="sharesPurchased" />
					</div>
				</div>
				<div>
					<label for="sharesSold">SharesSold</label>
					<div>
						<form:input path="sharesSold" id="num1" />
					</div>
				</div>
				<div>
					<label for="amountUnderSettlement">AmountUnderSettlement</label>
					<div>
						<form:input path="amountUnderSettlement" id="num2" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
    <div>
		<table class="content-table">
			<tr>
				<th>transactionId</th>
				<th>transactionDate</th>
				<th>customerId</th>
				<th>adhaarNumber</th>
				<th>description</th>
				<th>amountReceived</th>
				<th>amountPaid</th>
			</tr>
			<tbody>
				<c:forEach var="Transaction" items="${getTrans}">
					<tr>
						<td>${Transaction.transactionId}</td>
						<td>${Transaction.transactionDate}</td>
						<td>${Transaction.customerId}</td>
						<td>${Transaction.adhaarNumber}</td>
						<td>${Transaction.description}</td>
						<td>${Transaction.amountReceived}</td>
						<td>${Transaction.amountPaid}</td>
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
</html>