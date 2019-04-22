<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>SHOPPERZONE</title>
</head>
<style>

body{
background-image: url("${pageContext.request.contextPath}/resources/image/sky1.jpg");
}
</style>

<h1 style="background-color:yellow;"align="center">Product Details</h1>  
<table border="10" width="100%" cellpadding="4">  
<tr><th>productId</th><th>productName</th><th>productDesc</th><th>price</th><th>quantity</th><th>productCategory</th><th>image</th></tr>  

<tr>  
   <td>${productDescription.productId}</td>  
   <td>${productDescription.productName}</td> 
   <td>${productDescription.productDesc}</td> 
   <td>${productDescription.price}</td> 
   <td>${productDescription.quantity}</td> 
   <td>${productDescription.productCategory.categoryName}</td>
   <td><img src="${pageContext.request.contextPath}/${productDescription.productImage}" height="50" width="50"></td>
    <security:authorize access="hasRole('ROLE_ADMIN')">  
   <td><a href="${pageContext.request.contextPath}/EditProduct/${productDescription.productId}">Edit</a></td>
   <td><a href="${pageContext.request.contextPath}/deleteProduct/${productDescription.productId}" class="btn btn-danger">Delete</a></td>
   </security:authorize>
   
   
   <security:authorize access="hasRole('ROLE_USER')">
   <td><a href="${pageContext.request.contextPath}/cart/addtocart/${productDescription.productId}?requestedQuantity=1">Add To Cart</a></td>
   </security:authorize>
</a></td>
   
   </tr>
   
   
   
   
   </table>



</body>
</html>