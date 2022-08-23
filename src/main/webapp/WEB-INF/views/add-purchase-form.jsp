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
background-color: gold;
height: 25px;
border-radius: 10px;
}
#error {
 color:#253453;
 text-align: center;
 font-size: 35px;
}
</style>
</head>
<body style="background-color: #141414">
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
		 <a href="/trade/index" id="back">Back</a>
	</div>
	<div id="error">${message}</div>
	<div class="login-form">
	
		<form:form action="addp" method="post" modelAttribute="addpurchases">
				
			<div>
				<label for="adhaarNumber">Adhaar Number</label>
				<div>
					<form:input path="adhaarNumber"  title=" Adhaar must be number"  placeholder="xxxx xxxx xxxx"/>
				</div>
			</div>
			<div>
				<label for="purchaseId">Purchase Id</label>
				<div id="auto">
					<form:input path="purchaseId" id="purchaseid" readonly="true"/>
				</div>
			</div>
			<div>
				<label for="dateOfTxn">Date Of TXN</label>
				<div>
					<form:input path="dateOfTxn" id="date" name="date" onkeyup="showdate();" readonly="true"/>
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
					<form:input path="buyPrice" id="num1"/>
				</div>
			</div>
			<div>
				<label for="quantity">Quantity </label>
				<div>
					<form:input path="quantity" id="num2"/>
				</div>
			</div>
			
			<div>
				<label for="amountOfInr">Amount Of INR </label>
				<div>
					<form:input path="amountOfInr" id="result" onmouseover="add_number()" readonly="true"/>
				</div>
			</div>
			<div class="drop">
				<label for="modeOfPayment">Mode Of Payment</label>
				<div>
			    <select name="modeOfPayment" id="modeOfPayment">
				  <option value="GooglePay">GooglePay</option>
				  <option value="Paytm">PAYTM</option>
				  <option value="Phonepe">Phonepe</option>
				  <option value="NetBanking">NetBanking</option>
				</select>
				</div>
			</div>
			<div>
				<div>
					<button id="add_stock" style="color: #fff" onclick="con();">Add stock</button>
				</div>
			</div>
		</form:form>
	</div>
	<script type="text/javascript">
	function add_number() {

        var first_number = parseInt(document.getElementById("num1").value);
        var second_number = parseInt(document.getElementById("num2").value);
        var result = first_number * second_number;

        document.getElementById("result").value = result;
      }
	
	</script>
	
	<script type="text/javascript">
			var loader = document.getElementById("preloader");
            window.addEventListener("load",function() {
                loader.style.display ="none";
            },1000)
     </script>

<script type="text/javascript">
  document.getElementById('date').value = new Date().toISOString(); 
</script>
	<script type="text/javascript">
	function con() {
			  return confirm("Are you sure you wnat to Buy?");
	}
	</script>
	<script type="text/javascript">
		document.getElementById('purchaseid').value = Math.floor(Math.random() * 10000);
	
	</script>
</body>
</html>