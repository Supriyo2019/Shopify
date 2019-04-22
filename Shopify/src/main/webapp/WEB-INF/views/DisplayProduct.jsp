<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
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
  background: url("${pageContext.request.contextPath}/resources/images/img2.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<a href="test"><h3><b>$hOpIFy</b></h3></a>
  <a href="AddProduct"><h4><b> Add New Product</b></h4></a>
<h1 align="center"  style="background-color:;"><mark>Product List</mark></h1> 
<div class="row">
<c:forEach var="product" items="${productlist}">
 <div class="col-sm-3">
 <a href="ProductDetails/${product.productId}"> <img src="${pageContext.request.contextPath}/${product.productImage}" height="150" width="200"></a>
 <br><font size="4"><a href="ProductDetails/${product.productId}">${product.productName}</a></font>
  <br><font size="4">${product.price}</font>
  </div>
   </c:forEach>  
  </div>
</body>
</html>