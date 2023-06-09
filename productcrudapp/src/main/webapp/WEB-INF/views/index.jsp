<html>
<head>
<%@include file="./base.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>


<body>
<div class="container mt-3">
	<div class="row">
		<div class="col-md-12">
			<h1 class="text-center mb-3">Welcome to SupKart</h1>
			<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">PID</th>
      <th scope="col">Product Name</th>
      <th scope="col">Product Description</th>
      <th scope="col">Priceth>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${products }" var="p">
    <tr>
      <th scope="row">PID${p.id }</th>
      <td>${p.name }</td>
      <td>${p.description }</td>
      <td>${p.price }</td>
      <td><a href="delete/${p.id }" ><i class="fa fa-trash text-danger" style="font-size: 25px" aria-hidden="true"></i></a></td>
    </tr>
    </c:forEach>
    
  </tbody>
  
</table>
<div class="container text-center">
  	<a href="add-product" class="btn btn-outline-success">Add Product</a>
  </div>
			
		</div>
	</div>
</div>

</body>
</html>
