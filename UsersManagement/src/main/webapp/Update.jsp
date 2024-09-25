<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<link rel="stylesheet" href="./assets/styles.css">
</head>
<body>

	<%
	int id = (int) request.getAttribute("id");
	%>


	<section class="signSection">
		<h1>Update - User</h1>
		<form action="updateDetails">
			<table class="signUpForm">
				<tr>
					<td><label for="">Id:</label></td>
					<td><input type="number" readonly placeholder="<%=id%>"
						value="<%=id%>" name="id"></td>
				</tr>
				<tr>
					<td><label for="name">Name:</label></td>
					<td><input type="text" id="name" name="name" required></td>
				</tr>
				<tr>
					<td><label for="">User Name:</label></td>
					<td><input type="text" placeholder="Enter user name"
						name="uName"></td>
				</tr>
				<tr>
					<td><label for="">Age:</label></td>
					<td><input type="number" placeholder="Enter user age"
						name="age"></td>
				</tr>
				<tr>
					<td><label for="">Gender:</label></td>
					<td><input type="radio" id="ma" name="gen" value="Male"><label
						for="ma">Male</label><input type="radio" id="fe" name="gen"
						value="Female"><label for="fe">Female</label></td>
				</tr>
				<tr>
					<td><label for="">Phone:</label></td>
					<td><input type="tel" placeholder="Enter user Phone"
						name="phone"></td>
				</tr>
				<tr>
					<td><label for="">Password:</label></td>
					<td><input type="password" placeholder="Enter user name"
						name="pass"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit"></td>
				</tr>
			</table>
		</form>

	</section>
</body>
</html>