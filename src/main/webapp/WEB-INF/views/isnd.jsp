<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
<%@ include file="/WEB-INF/views/assert/style.css"%>
</style>
</head>
<body>
	<div class="action">
		<div class="profile" onclick= "menuToggle();">
			<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50Yp2fYbFSx4I9W6IM3X4Fa0Y_bJJjrd1e7FlEvQv_w&s">
		</div>
		<div class="menu">
		<h3><span>Customer Account</span></h3>
			<ul>
				<li><img alt="profile" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50Yp2fYbFSx4I9W6IM3X4Fa0Y_bJJjrd1e7FlEvQv_w&s"><a href="#">My Profile</a></li>
				<li><img alt="editprofile"src="https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"></li>
				<li><img alt="help" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHwAAAB8CAMAAACcwCSMAAAAY1BMVEUAAAD////o6OgKCgr4+PhVVVUwMDAkJCQ9PT3l5eXQ0NBOTk7Ly8vy8vK5ubmmpqaYmJiEhIRycnIZGRleXl6Li4ve3t6enp4pKSlFRUUdHR2zs7MTExO/v797e3vFxcVoaGjEQ7aVAAAFE0lEQVRogdWb6ZqqMAyGWzaRTUAU1HGc+7/KU1S2NtAkA49zvt/S10LaLE2FpMuJskNR+sHRFcI9NnFZHLLIYQwkiNyk9q+Kacq9+nVC/AcEuHeu/QbiDmr8+uxtAHfyeBncKc73K8NvFY78UnVbD57mFPJLeboK3DnR0a0Ku/XZ4Gl+5LGFOFpnb4FnARfdKrB8+0X4mWRmkPwzF86wM1M5C+6Ea7CFCOeX/Sw8AzdRjtyMCmeuL1gnEtzz12Qru4M3fBCe/mqBQQrAJQ/Bz19rs4W4QmsOgEe79dmKHmHg27CF2Jl0A36+bsNWdOPN6/B0M7YQX7rVaXBvdTsfK/AW4b/2JMvyl+Cr7muQTvPwDD1I4JeHLImiKFEhfBXiDSWbg++RvqTJo6npePv7N5LvOjPwC+px/yFBPUrU4yEMr1HPAhtVp/QbM0INwc+YJ5fiknYMjDccgosBjlhl7swbH+QhXl9lwm+I/7wYDb71sA/Tx7QdHOPCMWzlmKzj9M69gyO2F2QChph7ZzlvuGPPS0okGxFyH50JvLCyd/jE37Mm08UYnlrZtkU2kf3FpyO4PTe5ghGgN1OGsO6V+Qhun3hhAPanS+sLwgJY/PbVPsARa9xYZiMrMRMizzrerYfbNzc9BpETL9IY38QahFYdfG9li29tcO1dGcvQ7mKcNxyRCh+0waGhxjpYR8xfcPuyND65YSR6KmiPiWLvCcf4Um1sw3PG2g8S1HwELoiYDg3sSZpB2r1LG1QIYBqmLtahNXtHzNxv4Y6lntqqmg4N7AvazBFevXEUHPEn9aVkwvVvjglNEgXHfPKvZjdSY/pffSliso9awVepgGhsiUn5fAVfIy29a2yEi1YRghTOCiUvffPFpQCuIxAr0qYfnY1MtCOBTw7nZMwbZetKmbC7gGUBhR4HaUYHYQ8dF1UC4RUuY1TRkcD+EpQLxfIoa2tVCuSZEagQymHw3zEWiJ19ThUUuxJsKBDsIxQgoJWY+GnQUbD3mBpAO6SPyN/edFfSKtm0ijcIyp7oWwZv7rr/VkrJBUSXaXCJwUZuqWMdBe8zGWzOXhXwNhnDj7FqtjFve9WXGc9BlDzHom3pmBgUUMFzqVrYxCyUH3jBxNTYHR5boVlh1DSAYL51hWYFkFP4ncdWASQrdI68kQhnBBPtmElDOBEzJPCR6dImqpGJ4iZKkCnyFnqmyOtkinT56LLIBqrRBaENdEaXwiC5VVnyP9m7FMbrh/mJnlG792B6lXcREFP+NDTyazdWGNiVPxkucZIncXxTX/ilB39aMMEIHrMejij2T6TVBKWkm6wc4ESTM/qNyFMfH3Ogqke9zIMm2vNiesBDCz+Nt07+bu8KOf5QbxCQK9HY2qEeqVvi13DtOJPUixWaRSAS2zjIJQViRimGts30i4V0eN/JSM5J9goc3lN2eL3PiOYcoLYFSlChmRzJsYING1IS2j0nOTLJL403iTGckryE/fHtgxSAuvsZOC31uJzuUXQ/4Tp7es22J322MWvzMFo7IvtLzXgy3aDttJPR+mA2YG7U/Am1vv6t1lNF36QBFGDD7cYb0I/IduPPNlqrFbdyCyqlxVx+tLlefvZagYoQiC5jTuF8O9nSVZJVShbQORAGLve/trtq8frY370+JD97cUp+9MrYa/Z09EqX5Z763DXBpwgXJNF9ov/H1dCX2kuxO/hS7G7TS7HDP3heB47f14ED/nXgf3ypNqqbvpmNAAAAAElFTkSuQmCC"></li>
				<li><img alt="logout" src="https://cdn-icons-png.flaticon.com/512/126/126467.png"></li>
			</ul>
		</div>
	</div>

	<script>
	    function menuToggle() {
		  const toggleMenu = document.querySelector('.menu');
		  toggleMenu.classList.toggle('active')
	    }
	</script>
</body>
</html>