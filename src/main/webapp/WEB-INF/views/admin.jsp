<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title></title>
<style type="text/css">
<%@include file="/WEB-INF/views/asserts/style.css"%>
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
	list-style: none;
}

.navbar .nav_right < ul {
	display: flex;
	align-items: center;
	list-style: none;
}

.navbar .nav_right ul li.nr_li {
	margin-left: 900px;
	cursor: pointer;
	color: #fff;
	font-size: 20px;
	position: relative;
	top: -80px;
	list-style: none;
	right: -40px;
}

.navbar .nav_right ul li.nr_li:hover {
	color: gold;
	list-style: none;
}

.navbar .nav_right ul li img {
	width: 35px;
	vertical-align: middle;
	list-style: none;
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
	list-style: none;
}

.navbar .dd_menu .dd_left {
	background: #141414;
	padding: 15px 15px;
	border-top-left-radius: 15px;
	border-bottom-left-radius: 15px;
	list-style: none;
}

.navbar .dd_menu .dd_left li {
	color: #fff;
	list-style: none;
}

.navbar .dd_menu .dd_right {
	padding: 15px 10px;
	list-style: none;
}

.navbar .dd_menu li {
	margin-bottom: 10px;
	color: gold;
	list-style: none;
}

.navbar .dd_menu:before {
	content: "";
	position: absolute;
	top: -20px;
	right: 30px;
	border: 10px solid;
	border-color: transparent transparent #fff transparent;
	list-style: none;
}

.navbar .dd_main.active .dd_menu {
	display: flex;
	list-style: none;
}

.image {
	border-radius: 30px;
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

</head>
<body>
	<div id="preloader"></div>
	<div class=actiom>
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>
				<div>
					<ul class="navbar__menu">
						<li class="navbar__item"><a href="#"
							class="navbar__links">HOME</a></li>
					</ul>
				</div>
			</div>
		</nav>
		</div>
		<section>
			<nav class="navbar_manage" style="background-color: #141414;">
				<div></div>
				<h1 style="color: #fff; text-align: center; font-size: xx-large;">Welcome
					back, Chief</h1>
				<p style="color: #fff; margin: 50px;">
					Easily manage your data from this admin
					<mark>CMS</mark>
				</p>
				<div class="container">
					<div class="item item1">
						<h3>Manage your stocks easily</h3>
						<button>
							<div class="navbar_category">

								<a href="/admin/addstockform"><b>Add Stock</b></a>
							</div>
						</button>
					</div>
					<div class="item item2">
						<h3>List of stocks in hand</h3>
						<button>
							<div class="navbar_product">

								<a href="/admin/list"><b> Stock list</b></a>
							</div>
						</button>
					</div>
				</div>
			</nav>
		</section>
		<h1 style="text-align: center">User Details</h1>
		
		
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