<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
<%@include file="/WEB-INF/views/assert/style.css"%>
</style>
</head>
<body>
<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Admin</h3>
				<button>
					<div class="navbar_category">

						<a href="/admin/adminhome"><b>Admin</b></a>
					</div>
				</button>
			</div>
			<div class="item item2">
				<h3>Stock List</h3>
				<button>
					<div class="navbar_product">
						<a href="/admin/list"><b>Stock List</b></a>
					</div>
				</button>
			</div>
		</div>
	</nav>
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Add Stock Form</h3>
				<button>
					<div class="navbar_category">

						<a href="/admin/addstockform"><b>Addform</b></a>
					</div>
				</button>
			</div>
			<div class="item item2">
				<h3>Delete Stock</h3>
				<button>
					<div class="navbar_product">
						<a href="/admin/deletestock"><b>SELL</b></a>
					</div>
				</button>
			</div>
		</div>
	</nav>
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Update Stock Form</h3>
				<button>
					<div class="navbar_category">

						<a href="/admin/updateform"><b>Update stock</b></a>
					</div>
				</button>
			</div>
			<div class="item item2">
				<h3>Purchase List</h3>
				<button>
					<div class="navbar_product">
						<a href="/trade/tradepurchaselist"><b>Purchase List</b></a>
					</div>
				</button>
			</div>
		</div>
	</nav>
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Purchase Stock</h3>
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
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Sales List</h3>
				<button>
					<div class="navbar_category">

						<a href="/trade/tradesaleslist"><b>Sales List</b></a>
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
	<nav class="navbar_manage" style="background-color: #141414;">
		<div class="container">
			<div class="item item1">
				<h3>Get Stock Of SharesPurchase</h3>
				<button>
					<div class="navbar_category">

						<a href="/trade/getstockofsharespurchase{id})"><b>BUY</b></a>
					</div>
				</button>
			</div>
			<div class="item item2">
				<h3>Get Stock Of Shares Sales</h3>
				<button>
					<div class="navbar_product">
						<a href="/trade/getstockofsharessales{id}"><b>SELL</b></a>
					</div>
				</button>
			</div>
		</div>
	</nav>
	
</body>
</html>