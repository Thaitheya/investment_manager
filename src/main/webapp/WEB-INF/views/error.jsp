<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<style>
<%@include file="/WEB-INF/views/asserts/error.css"%>
</style>
</head>
<body>
	<div id=container>
		<div class="content">
		   <h2>:( Error occured</h2>
		   <h4>Oops! Page not found</h4>
		   <p>Sorry!!! for the inconvenience</p>
		   <a href="/trade/home">Home page</a>
		</div>
	</div>
	<script>
var container  = document.getElementById('container');
window.onmousemove =  function(e) {
	var x = - e.clientX/5;
	    y = - e.clienty/5;
	container.style.backgroundPositionX = x + 'px';
	container.style.backgroundPositionY = y + 'py';

}
</script>
</body>

</html>