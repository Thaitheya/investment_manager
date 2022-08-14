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
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 50px;
}

.navbar .logo a {
	display: block;
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
	margin-left: 1200px;
	cursor: pointer;
	color: #fff;
	font-size: 20px;
	position: relative;
	margin-bottom: 150px;
	list-style:none;
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
	padding: 15px 20px;
	border-top-left-radius: 15px;
	border-bottom-left-radius: 15px;
	list-style:none;
}

.navbar .dd_menu .dd_left li {
	color: #fff;
	list-style:none;
}

.navbar .dd_menu .dd_right {
	padding: 15px 20px;
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
</style>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
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
						<li class="navbar__item"><a href="" class="navbar__links">Contact
								Us</a></li>
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
											<li><i class="fas fa-map-marker-alt"></i></li>
											<li><i class="far fa-star"></i></li>
											<li><i class="far fa-plus-square"></i></li>
											<li><i class="fas fa-cog"></i></li>
											<li><i class="fas fa-download"></i></li>
											<li><i class="fas fa-sign-out-alt"></i></li>
										</ul>
									</div>
									<div class="dd_right">
										<ul>
											<li>Profile</li>
											<li>Last Transaction Date</li>
											<li>Last Transaction Value</li>
											<li>Logout</li>
										</ul>
									</div>
								</div></li>
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
				<div class="images__card">
					<h2>SBI</h2>
					<p>SBI Bank</p>
				</div>
			</div>
		</div>
	</section>
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
</body>
</html>