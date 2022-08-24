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
<style>
<%@include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>
		<div id="preloader"></div>
		<div id="root">
			<nav class="navbar">
				<div class="navbar__container">
					<a href="#" id="navbar__logo">OpenSea.io-Admin Page</a>

					<ul class="navbar__menu">
					<li class="navbar__item"><a href="/admin/adminhome"
						class="navbar__links">Home</a></li>	
					</ul>
				</div>
			</nav>
		</div>
		<div>${message}</div>
		<div class="login-form">
			<form:form action="add" method="post" modelAttribute="stock" name="myForm">

				<div>
					<label for="adminId">AdminId</label>
					<div>
						<form:input path="adminId" value="12" readonly="true"/>
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
						<form:input path="noOfSharesInHand"/>
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
					<label for="lastTansactionedValue">Last Transactioned Value</label>
					<div>
						<form:input path="lastTansactionedValue"/>
					</div>
				</div>
				<div>
					<div>
						<form:button>Add stock</form:button>
					</div>
				</div>
			</form:form>
		</div>
	<script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		}, 1000)
	</script>
	<script type="text/javascript">

</script>

	
</body>
</html>