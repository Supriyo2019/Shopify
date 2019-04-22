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
  background: url("${pageContext.request.contextPath}/resources/images/img3.jpg");
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
</style>
<body>
<a href="test">Shopify</a>
  
  
 <h1 align="middle"><mark>SELECT THE PRODUCT</mark></h1>
  
  <div class="row">
<c:forEach var="product" items="${productList}">
  
   <div class="col-sm-3">
 <a href="ProductDetails/${product.productId}"> <img src="${pageContext.request.contextPath}/${product.productImage}"></a>
 <br><font size="4"><a href="${pageContext.request.contextPath}/ProductDetails/${product.productId}">${product.productName}</a></font>
  <br><font size="4">${product.price}</font>
  </div>
   </c:forEach>
    </div>
</body>
</html>