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
	 	<h2>Edit Produit</h2>
	 </div>

	 <form method="post" action="admin">
	 
	 <input type="hidden" name="page" value="edit_product">
	 <input type="hidden" name="id" value="<c:out value="${p.getId() }"/>">
     
	 	<div class="signup-group">
	 		<label>Name</label>
	 		<input type="text" name="name" value="<c:out value="${p.getName() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Prix</label>
	 		<input type="text" name="price" value="<c:out value="${p.getPrice() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Category</label>
	 		<input type="text" name="category" value="<c:out value="${p.getCategory() }"></c:out>" required>
	 	</div>
	 	
	 	<div class="signup-group">
	 		<label>Populaire</label>
	 		<input type="text" name="featured" value="<c:out value="${p.getFeatured() }"></c:out>" required>
	 	</div>
	 	<div class="signup-group">
	 		<label>Image</label>
	 		<img style="height: 160px;width: 160px;" src="<c:out value="${p.getImage() }"></c:out>">
	 	</div>
	 	<div class="signup-group">
			<input type="submit" value="Process">	 
		</div>
	 </form>
	
	 <footer>
		<div class="footer"> &copy; 2021 Copyright:
	      E_Boutique.com
	    </div>
	</footer>
</body>
</html>