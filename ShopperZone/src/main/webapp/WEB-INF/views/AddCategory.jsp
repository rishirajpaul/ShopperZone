<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
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

<h1 style="background-color:gold;" align="center">Add Category </h1>
<form:form method="post" action="/ShopperZone/save">
<table > 

         
           
         
         <tr>    
          <td><strong>Category Name :</strong></td>   
          <td><form:input path="categoryName" required="true"  /></td>  
         </tr> 
      
         <tr>    
          <td> </td>    
          <td><input type="submit" value="Save" /></td>    
         </tr> 
        </table>    
       </form:form>
       
</body>
</html>