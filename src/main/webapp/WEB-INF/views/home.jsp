<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title></title>
<style>
<%@ include file="/WEB-INF/views/asserts/style.css"%>
</style>
 <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;600&display=swap" rel="stylesheet">
 <link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet">
</head>
<body>
	<div class= actiom>
		<nav class="navbar">
			<div class="navbar__container">
				<a href="#" id="navbar__logo">OpenSea.io</a>
				<div>
					<ul class="navbar__menu">
						<li class="navbar__item"><a href="/trade/addpurchases"
							class="navbar__links">Buy</a></li>
						<li class="navbar__item"><a href="/trade/addSale"
							class="navbar__links">Sell</a></li>
						<li class="navbar__item"><a href="/trade/about" class="navbar__links">About</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Contact Us</a></li>
						<li class="navbar__item"><a href="" class="navbar__links">Profile</a></li>
					</ul>
				</div>
			</div>
		</nav>
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
</body>
</html>