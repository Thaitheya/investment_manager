<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
<%@ include file="/WEB-INF/views/asserts/style.css"%>
</style>
</head>
<body>


	<div id="preloader">
		<img src="">
	</div>
	<div id="root">
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>
				<div>
					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/addpurchases"
							class="navbar__links">Buy</a></li>
						<li class="navbar__item"><a href="/trade/addSale"
							class="navbar__links">Sell</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
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