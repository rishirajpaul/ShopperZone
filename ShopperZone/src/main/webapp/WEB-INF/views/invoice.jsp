
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<jsp:useBean id="now" class="java.util.Date" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<div class="container-wrapper">
    <div class="container">
    
       
        <div class="container">
        
<form:form action="${url }" modelAttribute="order">
            <div class="row">

                             <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div >
                            <h1 align="center">Invoice</h1>
                       </div>
                        
                        <br>
                   NAME :${order.user.firstName} ${order.user.lastName}<br>
                        PHONE NO:${order.user.contact}
 
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong><button disabled>Shipping Address</button></strong><br/>
                                    ${shipping.apartmentnumber}
                                <br/>
                                    ${shipping.streetname}
                                <br/>
                                    ${shipping.city}, ${shipping.state}
                                <br/>
                                   ${shipping.zipcode}
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                 ORDER ID: ${order.orderDetailsId }
                                <p>Order Date: ${order.orderDetails }</p>
                            </div>
                        </div>
                       <hr>
                 
                        <div class="row">
                            <table class="table table-hover" border="1">
                                <thead>
                                    <tr>
                                        <td>ProductItems</td>
                                        <td>Unit</td>
                                        <td>Price</td>
                                        <td class="text-center">Total</td>
                                        <td class="text-center">GrandTotal</td>
                                    </tr>
                                </thead>
                                <tbody>
                              
                                <c:forEach var="cartItem" items="${cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.qty}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.price}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.subTotal}</td>
                                       
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h2 align="center" style="background-color:Blue ;"><strong>Grand Total:</strong></h2>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>Rs. ${order.grandTotal}</strong></h4>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                           
                        </div>


                      
                    </div>
             
            </div>
            
            </form:form>
        </div>
        </div>
        </div>
