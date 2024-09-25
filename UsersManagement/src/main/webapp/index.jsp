<html>


<head>


<title>Home Page</title>
<link rel="stylesheet" href="./assets/styles.css">
<link rel="shortcut icon" href="./assets/favicon.png"
	type="image/x-icon">


</head>


<body>

	<%
	String msg = (String) request.getAttribute("Logout");
	%>

	<header>
		<h1>HOME PAGE</h1>
		
	</header>
	<main>
		<% if(msg != null){ %>
		<p class="logMsg"><%=msg%></p>
		<% } %>
		<section class="homeSection">
			<aside>
				<h1>
					USER - CRUD <br> SERVLETS
				</h1>
			</aside>
			<div class="line"></div>
			<aside class="btns">
				<button>
					<a href="./signUp">Create an Account</a>
				</button>
				<button>
					<a href="./login">Login Account</a>
				</button>
			</aside>
		</section>
	</main>

</body>
</html>
