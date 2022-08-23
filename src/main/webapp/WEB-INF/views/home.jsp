<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
<%@ include file="/WEB-INF/views/asserts/style.css"%>
</style>
<style type="text/css">
.navbar {
	background: #141414;
	width: 100%;
	height: 80px;
	justify-content: space-between;
	align-items: center;
	padding: 0 30px;
}
.navbar .logo a {
	text-decoration: none;
	color: #fff;
	font-weight: 700;
	letter-spacing: 2px;
	font-size: 25px;
	text-transform: uppercase;
	list-style:none;
}
.navbar .nav_right < ul {
	display: flex;
	align-items: center;
	list-style:none;
}
.navbar .nav_right ul li.nr_li {
	margin-left: 900px;
	cursor: pointer;
	color: #fff;
	font-size: 20px;
	position: relative;
	top: -80px;
	list-style:none;
	right:-40px;
}
.navbar .nav_right ul li.nr_li:hover {
	color: gold;
	list-style:none;
}
.navbar .nav_right ul li img {
	width: 35px;
	vertical-align: middle;
	list-style:none;
}
.navbar .dd_menu {
	position: absolute;
	right: -25px;
	top: 47px;
	display: flex;
	background: #fff;
	border-radius: 15px;
	box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.25);
	display: none;
	list-style:none;
}
.navbar .dd_menu .dd_left {
	background: #141414;
	padding: 15px 15px;
	border-top-left-radius: 15px;
	border-bottom-left-radius: 15px;
	list-style:none;
}
.navbar .dd_menu .dd_left li {
	color: #fff;
	list-style:none;
}
.navbar .dd_menu .dd_right {
	padding: 15px 10px;
	list-style:none;
}
.navbar .dd_menu li {
	margin-bottom: 10px;
	color: gold;
	list-style:none;
}
.navbar .dd_menu:before {
	content: "";
	position: absolute;
	top: -20px;
	right: 30px;
	border: 10px solid;
	border-color: transparent transparent #fff transparent;
	list-style:none;
}
.navbar .dd_main.active .dd_menu {
	display: flex;
	list-style:none;
}
.image {
border-radius:30px;
}
#name {
	text-align: center;
}
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">

<script>
window.onload = function () {
var dps = [];
var chart = new CanvasJS.Chart("chartContainer", {
	title :{
		text: "Dynamic Data"
	},
	data: [{
		theme: "dark1",
		lineColor: "gold",
		lineThickness: 5,
		type: "line",
		markerSize: 3,
		dataPoints: dps
	}]
});
var xVal = 0;
var yVal = 100; 
var updateInterval = 1000;
var dataLength = 20;
var updateChart = function (count) {
	count = count || 1;
	for (var j = 0; j < count; j++) {
		yVal = yVal +  Math.round(5 + Math.random() *(-5-5));
		dps.push({
			x: xVal,
			y: yVal
		});
		xVal++;
	}
	if (dps.length > dataLength) {
		dps.shift();
	}
	chart.render();
};
updateChart(dataLength);
setInterval(function(){updateChart()}, updateInterval);
}
</script>
</head>
<body>
	<div id="preloader"></div>
	<div class=actiom>
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>
				<div>
					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/addpurchases"
							class="navbar__links">Buy</a></li>
						<li class="navbar__item"><a href="/trade/addSale"
							class="navbar__links">Sell</a></li>
						<li class="navbar__item"><a href="/trade/about"
							class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div>
			<div class="wrapper">
				<div class="navbar">
					<div class="nav_right">
						<ul>
							<li class="nr_li dd_main"><img
								src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg"
								alt="profile_img" class="image">

								<div class="dd_menu">
									<div class="dd_left">
										<ul>
											<li class="navbar__item"><a class="navbar__links"><i class="fas fa-solid fa-user"></i></a></li>
											<li class="navbar__item"><a class="navbar__links"><img src="https://img.icons8.com/emoji/48/000000/chart-increasing-with-yen-emoji.png"/></a></li>
											<li class="navbar__item"><a class="navbar__links"><img src="https://img.icons8.com/emoji/48/000000/chart-increasing-emoji.png"/></a></li>
											<li class="navbar__item"><a  class="navbar__links"><i class="fas fa-sign-out-alt"></i></a></li>
											
										</ul>
									</div>
									<div class="dd_right">
										<ul>
											<li class="navbar__item"><a  href="/customer/getCustomerlist"class="navbar__links">Profile</a></li>
											<li class="navbar__item"><a  href="/trade/tradepurchaselist"class="navbar__links">Recent Buy</a></li>
											<li class="navbar__item"><a  href="/trade/tradesaleslist"class="navbar__links">Recent Sell</a></li>
											<li class="navbar__item"><a  href="/trade/home" class="navbar__links">Logout</a></li>
										</ul>
									</div>
								</div>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<section>
		<div class="images" id="coll">
			<h1>Explore</h1>
			<div class="images__container">
				<div class="images__card">
					<h2>TATA</h2>
					<p>TATA Motors</p>

				</div>
				<div class="images__card">
					<h2>Adani</h2>
					<p>Adani</p>
				</div>
				<div class="images__card">
					<h2>HDFC</h2>
					<p>HDFC Bank</p>
				</div>
				<div class="images__card">
					<h2>ICICI</h2>
					<p>ICICI Bank</p>
				</div>
				<div class="images__card">
					<h2>Reliance</h2>
					<p>Reliance Digital</p>
				</div>
			</div>
		</div>
	</section>
	 <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
	<script type="text/javascript">
		var loader = document.getElementById("preloader");
		window.addEventListener("load", function() {
			loader.style.display = "none";
		}, 1000)
	</script>
	<script>
		var dd_main = document.querySelector(".dd_main");
		dd_main.addEventListener("click", function() {
			this.classList.toggle("active");
		})
	</script>
	<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
</body>
</html>