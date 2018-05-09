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
<h2>Category Information</h2>
     <form:form method = "POST" action = "${pageContext.request.contextPath}/adminAddCategory" modelAttribute="category">
         <table>
         <c:if test="${not empty category.categoryName}">
           <tr>
               <td><form:label path = "categoryId">ID</form:label><form:input type = "text"
                 placeholder= "text here"  path="categoryId"  disabled="true" readonly="true" /></td>
               
            </tr>
            </c:if>
          
            <tr>
               <td><form:label path = "categoryName">Name</form:label><form:input type = "text"
                 placeholder= "text here" path="categoryName"/></td>
               
            </tr>
            <tr>
               <td><form:label path = "categoryDescription">Description</form:label>
               <form:input type = "text" path="categoryDescription"
                 placeholder = "text here" /></td>
               
            </tr>
            
            <tr>
               <td colspan = "2">
                  <form:button>Submit</form:button>
               </td>
            </tr>
         </table>  
      </form:form>
      <c:if test="${not empty listCategory}">
        <div class="table-responsive">          
  <table class="table">
    <thead>
      <tr>
        <th>categoryId</th>
        <th>categoryName</th>
        <th>categoryDesc</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${listCategory}" var="cat">
      <tr>
        <td>${cat.categoryId}</td>
        <td>${cat.categoryName}</td>
        <td>${cat.categoryDescription}</td>
        <td><a href="editCategory/${cat.categoryId}">Edit</a></td>
        <td><a href="deleteCategory/${cat.categoryId}">Delete</a></td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
  </div>


     </c:if> 
      </body>
</html>