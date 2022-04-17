<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Admin</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="signup-header">
	 	<h2> <mark>Admin</mark> Login</h2>
	</div>

<form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="admin-login-form">
	 
	 	<!-- Validations errors -->
	 	<font color="#F24638"><c:out value="${msg }"></c:out></font>
	 
	 	<div class="signup-group">
	 		<label>Adminname</label>
	 		<input type="text" name="username" placeholder="Votre Adminname" required="required" value="<c:out value="${username }"></c:out>">
	 	</div>
	 	<div class="signup-group">
	 		<label>Password</label>
	 		<input type="password" name="password" placeholder="Entrer password" required="required">
	 	</div>
	 	<div class="signup-group">
	 		<button type="submit" name="login" class="signup-btn">Login</button>
	 	</div>
	 </form>
</body>
</html>