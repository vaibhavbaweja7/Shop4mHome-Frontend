<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Product Information</h2>
     <form:form method = "POST" action = "adminAddProduct" modelAttribute="product">
         <table>
         <c:if test="${not empty product.productName}">
           <tr>
               <td><form:label path = "productId">Name</form:label><form:input type = "text"
                 placeholder= "text here"  path="categoryId"/></td>
               
            </tr>
            </c:if>
          
            <tr>
               <td><form:label path = "productName">Name</form:label><form:input type = "text"
                 placeholder= "text here" path="productName"/></td>
               
            </tr>
            <tr>
               <td><form:label path = "productDescription">Description</form:label>
               <form:input type = "text" path="productDescription"
                 placeholder = "text here" /></td>
               
            </tr>
            
            <tr>
            <td><form:label path = "productPrice">Price</form:label>
            <form:input type = "text" path="productPrice"
                 placeholder = "text here" /></td>
            </tr>
            <tr>
            <td><form:label path = "productQuantity">Quantity</form:label>
            <form:input type = "text" path="productQuantity"
                 placeholder = "text here" /></td>
            </tr>
            
            
            <tr>
               <td colspan = "2">
                  <form:button>Submit</form:button>
               </td>
            </tr>
         </table>  
      </form:form>
      <c:if test="${not empty listProduct}">
        <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>productId</th>
        <th>productName</th>
        <th>productDesc</th>
        <th>productPrice</th>
        <th>productQuant</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${listProduct}" var="pro">
      <tr>
        <td>${pro.productId}</td>
        <td>${pro.productName}</td>
        <td>${pro.productDescription}</td>
        <td>${pro.productPrice}</td>
        <td>${pro.productQuantity}</td>
        <td><a href="editProduct/${pro.productId}">Edit</a></td>
        <td><a href="deleteProduct/${pro.productId}">Delete</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  </div>


     </c:if> 
      </body>
</html>