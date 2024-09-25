<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login</title>
<link rel="stylesheet" href="./assets/styles.css">
<link rel="shortcut icon" href="./assets/favicon.png"
	type="image/x-icon">


</head>
<body>


	<section class="loginSection">
		<%
		String successMsg = (String) request.getAttribute("success");
		%>
		<%
		if (successMsg != null) {
		%>
		<h1><%=successMsg%></h1>
		<%
		}
		%>
		<form action="./LoginDet" class="loginForm">
			<h1>Login</h1>
			<table>

				<tr>
					<td><label for="un">UserName:</label></td>
					<td><input type="text" id="un" name="userName"></td>
				</tr>
				<tr>
					<td><label for="pass">Password:</label></td>
					<td><input type="password" id="pass" name="password"></td>
				</tr>
			</table>
			
			<!-- 
			<button>
				<a>Login</a>
			</button>
			
			 -->
			<input type="submit">

		</form>
	</section>



</body>
</html>