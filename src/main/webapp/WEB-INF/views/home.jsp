<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
<%@include file="/WEB-INF/views/assert/style.css"%>
</style>
</head>
<body>


	<div id="preloader"></div>
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Buy Stocks</h3>
				<button>
					<div class="navbar_category">

						<a href="/trade/addpurchases"><b>BUY</b></a>
					</div>
				</button>
			</div>
			<div class="item item2">
				<h3>Sell stocks</h3>
				<button>
					<div class="navbar_product">
						<a href="/trade/addSale"><b>SELL</b></a>
					</div>
				</button>
			</div>
		</div>
	</nav>

	<script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		})
	</script>
</body>
</html>