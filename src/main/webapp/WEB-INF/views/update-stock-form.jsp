<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update user</title>
</head>
<body>
<div id="root">

		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatestock">

				<div>
					<label for="adhaar_number">Adhaar Number</label>
					<div>
						<form:input path="adhaar_number"/>
					</div>
				</div>
				<div>
					<label for="stock_id">Stock Id</label>
					<div>
						<form:input path="stock_id" />
					</div>
				</div>
				<div>
					<label for="stock_name">Stock Name</label>
					<div>
						<form:input path="stock_name" />
					</div>
				</div>
				<div>
					<label for="company">company</label>
					<div>
						<form:input path="company" />
					</div>
				</div>
				<div>
					<label for="no_of_shares_in_hand">No Of Shares In Hand</label>
					<div>
						<form:input path="no_of_shares_in_hand" />
					</div>
				</div>
				<div>
					<label for="face_value">Face Value</label>
					<div>
						<form:input path="face_value" />
					</div>
				</div>
				<div>
					<label for="last_tansactioned_date">Last Transactioned Date</label>
					<div>
						<form:input path="last_tansactioned_date" />
					</div>
				</div>
				<div>
					<label for="last_tansactioned_value">Last Transactioned Value</label>
					<div>
						<form:input path="last_tansactioned_value"/>
					</div>
				</div>
				<div>
					<div>
						<form:button>Update stock</form:button>
					</div>
				</div>
			</form:form>


		</div>
	</div>
	
</body>
</html>