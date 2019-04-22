<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<style>

<title>SHOPPERZONE</title>
</style>
</head>
<style>
body{
background-image: url("${pageContext.request.contextPath}/resources/image/sky.png");
}
<title>WELCOME TO ShopperZone</title>
</style>

<body>
<h2 style="background-color:Red;"align="center">Category List</h2>   
<table border="8" width="90%" cellpadding="3">  
<tr><th>Id</th><th>Name</th></tr>  
<c:forEach var="category" items="${list}">
<tr>  
   <td>${category.categoryId}</td>  
   <td>${category.categoryName}</td>  
   <td><a href="editCategory/${category.categoryId}" class="btn btn-danger">edit</a></td>
  
   </tr>
   </c:forEach>
   <a href="addCategory/">ADD</a>
   </table>

</body>
</html>