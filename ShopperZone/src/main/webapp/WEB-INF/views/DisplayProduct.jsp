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
<title>Insert title here</title>
</head>
<style>
body{
background-image: url("${pageContext.request.contextPath}/resources/image/sky.png");
}
<title>WELCOME TO ShopperZone</title>
</style>

<body>
<a href="test">SHOPPERZONE</a>
<h1 align="center"  style="background-color:Purple;">Product List</h1>  
<table border="6" width="100%" cellpadding="7">  
<tr><th>Name</th><th>Price</th><th>Image</th></tr>  
<c:forEach var="product" items="${productlist}">


<tr>  
     
    <td><a href="ProductDetails/${product.productId}">${product.productName}</a></td> 
 
   <td>${product.price}</td>
     
  <td> <img src="${product.productImage}" height="50" width="50"></a></td>
   
   </tr>
   </c:forEach>
   <a href="AddProduct"></a>
   </table>

</body>
</html>