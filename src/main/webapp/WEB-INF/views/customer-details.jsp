<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add user</title>
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
<style type="text/css">
#back {
text-decoration: none;
color: #fff;
}
</style>
</head>
<body style="background-color: #141414">
<div id= "preloader"></div>
	<div id="root">
		<nav class="navbar">
		  <button><a href="/trade/index" id="back">Back</a></button>
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
	<h1 style="text-align: center;">Deposit Amount</h1>
	<div class="login-form">
		<form:form action="customeraccount" method="post" modelAttribute="addcustomerdetails">
             <div>
				<label for="customerId">Customer Id</label>
				<div>
					<form:input path="customerId" value="2206"/>
				</div>
			</div>
			<div>
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber"  title=" Adhaar must be number"  placeholder="xxxx xxxx xxxx"/>
				</div>
			</div>
			<div>
				<label for="depositedAmount">DepositedAmount</label>
				<div id="auto">
					<form:input path="depositedAmount"/>
				</div>
			</div>
			<div>
				<label for="sharesPurchased">SharesPurchased</label>
				<div>
					<form:input path="sharesPurchased"/>
				</div>
			</div>
			<div>
				<label for="sharesSold">SharesSold</label>
				<div>
					<form:input path="sharesSold" />
				</div>
			</div>
			<div>
				<label for="amountUnderSettlement">AmountUnderSettlement</label>
				<div>
					<form:input path="amountUnderSettlement"/>
				</div>
			</div>
			<div>
			<div>${message}</div>
			</div>
			<div>
					<button style="color: #fff">Add</button>
				</div>
		</form:form>
	</div>
	
	
	<script type="text/javascript">
			var loader = document.getElementById("preloader");
            window.addEventListener("load",function() {
                loader.style.display ="none";
            },1000)
     </script>

<script type="text/javascript">
  document.getElementById('date').value = new Date().toISOString(); 
</script>
</body>
</html>