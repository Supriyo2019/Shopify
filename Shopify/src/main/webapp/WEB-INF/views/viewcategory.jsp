<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
    <%@ include file="HeaderForShopify.jsp" %>
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
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: url("${pageContext.request.contextPath}/resources/images/img1.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<h2 style="background-color:Green;">Category List</h2>   
<table border="2" width="70%" cellpadding="2">  
<tr><th style="background-color:Blue;">CategoryId</th><th style="background-color:Orange;">CategoryName</th><th style="background-color:grey;">Edit Option</th></tr>  
<c:forEach var="category" items="${list}">
<tr>  
   <td>${category.categoryId}</td>  
   <td>${category.categoryName}</td>  
   <td><a href="editCategory/${category.categoryId}">Edit</a></td>
   
   </tr>
   </c:forEach>
   <a href="addCategory/">Add More Category</a>
   </table>

</body>
</html>