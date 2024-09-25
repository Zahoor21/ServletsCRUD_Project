<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="./assets/styles.css">
<link rel="shortcut icon" href="./assets/favicon.png"
	type="image/x-icon">
<title>User Data</title>

</head>
<body>

	<%
	String userName = (String) request.getAttribute("UName");
	List<User> uData = (List<User>) request.getAttribute("uData");
	String deletedUser = (String) request.getAttribute("delete");
	%>


	<section class="tableSection">
		<aside class="user-Info">
			<h2>
				@<%=userName%></h2>
			<p id="Ldate">Login - Data / time</p>
			<button class="logBtn"><a href="logOut">Log Out</a></button>
		</aside>
		<h1>USER DETAILS</h1>
		<% if(deletedUser != null) { %>
		<p><%=deletedUser%></p>
		<% } %>
		<table class="TableDetails">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>User Name</th>
				<th>Age</th>
				<th>Phone</th>
				<th>Gender</th>
				<th>Password</th>
				<th>Delete</th>
				<th>Update</th>
			</tr>
			<%
			for (User u : uData) {
			%>
			<tr>
				<td><%=u.getUserId()%></td>
				<td><%=u.getName()%></td>
				<td><%=u.getUserName()%></td>
				<td><%=u.getAge()%></td>
				<td><%=u.getPhone()%></td>
				<td><%=u.getGender()%></td>
				<td><%=u.getPassword()%></td>
				<td><a href="Delete?id=<%=u.getUserId()%>"><button class="deleteBtn">DELETE</button></a></td>
				<td><a href="Update?id=<%=u.getUserId()%>"><button class="deleteBtn">Update</button></a></td>
			</tr>


			<%
			}
			%>






		</table>
	</section>
</body>

<script>
	function updateTime() {
		let currentDate = new Date();
		let currentTime = currentDate.toLocaleTimeString();
		document.getElementById("Ldate").textContent = "Current Time: "
				+ currentTime;
	}

	// Update the clock every second (1000 ms)
	setInterval(updateTime, 1000);

	// Initial call to display time immediately
	updateTime();
</script>



</html>