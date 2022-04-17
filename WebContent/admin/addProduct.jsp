<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<header>
		<h1>
			Welcome Admin
		</h1>
		<nav>
			<ul>
				<li><a href="admin?page=index">Home</a></li>
				<li><a href="admin?page=addproduct">Add Produit</a></li>
				<li><a href="#">Settings</a></li>
				<!--<li><a href="#">Pages</a></li>-->
			</ul>
		</nav>
	</header>
	
	<div class="signup-header">
	 	<h2>Add Produit</h2>
	 </div>

	 <form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="add_product">
     
	 	<div class="signup-group">
	 		<label>Name</label>
	 		<input type="text" name="name" placeholder="nom produit"  required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Prix</label>
	 		<input type="number" name="price" placeholder="prix produit" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Category</label>
	 		<input type="text" name="category" placeholder="category produit" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Populaire</label>
	 		<input type="text" name="featured" placeholder="oui/non" required>
	 	</div>
	 	<div class="signup-group">
	 		 <label for="fileupload"> Select image to upload</label>
	 		<input type="file" name="image" required><br>
	 	</div>
	 	<div class="signup-group">
			<input type="submit" value="Process">	 
		</div>
	 </form>
	
	
	 <footer >
		<div class="footer"> &copy; 2021 Copyright:
	      E_Boutique.com
	    </div>
	</footer>
</body>
</html>