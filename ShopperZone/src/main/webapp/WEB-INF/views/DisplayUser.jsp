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
<h1 align="center"  style="background-color:YELLOW;">Users List</h1>  
<table border="10" width="80%" cellpadding="5">  
<tr><th>Id</th><th>Name</th></tr>  
<c:forEach var="user" items="${list}">
<tr>  
   <td>${user.userId}</td>  
   <td>${user.firstName}</td>  
  
  
   


</a></td>
   </tr>
   </c:forEach>
   <a href="AddUser"></a>
   </table>

</body>
</html>