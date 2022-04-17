<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<c:set var="x" value="0"></c:set>
	<c:forEach items="${cartlist }" var="i">
		<c:set var="x" value="${x+1 }"></c:set>
	</c:forEach>

	<header>
		<h1>
			E_Boutique
		</h1>
		<nav>
			<ul>
				<li><a href="Controller?page=index">Home</a></li>
				<c:choose>
					<c:when test="${session == null}">
						<li><a href="Controller?page=login">Login</a></li>
						<li><a href="Controller?page=sign-up">Sign-up</a></li>
					</c:when>
					<c:when test="${session != null}">
						<li><a href="Controller?page=logout" style="color: #F24638;">Logout</a></li>
						<li><a href="#">Mon compte(<c:out value="${username }"></c:out>)</a></li>
					</c:when>
				</c:choose>
				<li><a href="Controller?page=showcart">Panier(<c:out value="${x}"/>)</a></li>
			</ul>
		</nav>
	</header>
	
	<div class="tiazon-content">
 	<div class="container">
 		<div class="row">
 				<div class="col-md-4"><!-- left -->
 						<div class="list-group"><!-- products -->
						 <a href="Controller?page=all-products" class="list-group-item" style="background:  #d6d4d3;">
						    Tous les produits
						  </a>
						  <a href="Controller?page=mobiles" class="list-group-item">Mobiles</a>
						  <a href="Controller?page=laptops" class="list-group-item">Laptops</a>
						  <a href="Controller?page=vetement" class="list-group-item">Vêtements</a>
						  <a href="Controller?page=home-decor" class="list-group-item">Decor</a>
						</div> 
 				</div><!-- left -->

 				<div class="col-md-8"><!-- right -->
 					<h2 style="text-align: center;">Mobiles</h2><br>
 					
 					<h5>Trier par(Prix):</h5>
					<form action="Controller" method="get" style="border: none;margin:0px;padding: 0px;margin-bottom: 20px;">
					<input type="hidden" name="page" value="price-sort">
					<input type="hidden" name="action" value="mobiles">
					<select name="sort">
					<option value="low-to-high">moins cher</option>
					<option value="high-to-high">plus cher</option>
					</select>
					<input type="submit" value="Ok">
					</form>
 					
 					<c:forEach items="${list }" var="product">
 						
 						<c:if test="${product.getCategory() == 'mobiles' }">
 							
		 					<div class="col-md-4">
		 						<img src="${product.getImage() }" class="img-responsive" ><br>
		 						<div class="text-center"><a style="color: black;"><c:out value="${product.getName() }"></c:out></a></div>	
		 						<p style="text-align: center;"> <c:out value="${ product.getPrice() }"></c:out>&nbsp;D</p>
		 						<div class="text-center">  <a class="btn btn-primary" href="Controller?page=addtocart&action=mobiles&id=<c:out value="${product.getId()}"/>">Add to Cart</a> </div><br>
		 					</div>
 							
 						</c:if>
 						
 						
 					</c:forEach>
 					
 				</div>
 			</div>
 		</div>
 	</div>
	
	
	<footer>
		<div class="footer"> &copy; 2021 Copyright:
	      <a href="Controller?page=index"> E_Boutique.com</a>
	    </div>
	</footer>
	
</body>
</html>