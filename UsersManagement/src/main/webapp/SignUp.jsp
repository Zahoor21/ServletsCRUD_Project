<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>SignUp - Page</title>
<link rel="stylesheet" href="./assets/styles.css">
<link rel="shortcut icon" href="./assets/favicon.png"
	type="image/x-icon">

</head>
<body>

    <section class="signSection">
        <form action="./SignupSuccess" class="signUpForm">
            <h1>Sign Up</h1>
            <table>
                <tr>
                    <td><label for="name">Name:</label></td>
                    <td><input type="text" id="name" name="name" required></td>
                </tr>
                <tr>
                    <td><label for="un">User Name:</label></td>
                    <td><input type="text" id="un" name="userName" required></td>
                </tr>
                <tr>
                    <td><label for="age">Age:</label></td>
                    <td><input type="number" id="age" name="age" required></td>
                </tr>
                <tr>
                    <td><label for="phone">Phone:</label></td>
                    <td> <input type="number" id="phone" name="phone" required></td>
                </tr>
                <tr>
                    <td><label for="">Gender</label></td>
                    <td><input type="radio" id="male" name="gen" value="Male" ><label for="male"> Male</label>
                        <input type="radio" id="female" name="gen" value="Female"><label for="female"> Female</label></td>
                </tr>
                <tr>
                    <td><label for="pass">Password:</label></td>
                    <td><input type="password" id="pass" name="password" required></td>
                </tr>
                <tr>
                    <td><label for="cp">Confirm Password:</label></td>
                    <td><input type="password" id="cp" name="ConfirmPassword" required></td>
                </tr>
    
            </table>
           <!-- <button><a href="">SignUp</a></button>   --> 
           <input type="submit">
        </form>
    </section>

</body>
</html>