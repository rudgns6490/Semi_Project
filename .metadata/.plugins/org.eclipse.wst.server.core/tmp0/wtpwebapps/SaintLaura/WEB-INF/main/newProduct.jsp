<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<body>
<jsp:include page="../header.jsp" /> 
<!-- Slide Show -->
<section>
  <img class="mySlides" src="images/newproduct1.jpg"
  style="width:60%; margin: 0 auto; float:none; margin-top: 200px;">
  <img class="mySlides" src="images/newproduct2.jpg"
  style="width:60%; margin: 0 auto; float:none; margin-top: 200px;">
  <img class="mySlides" src="images/newproduct3.jpg"
  style="width:60%; margin: 0 auto; float:none; margin-top: 200px;">
</section>

<script src="<%=ctxPath %>/js_ysl/newProduct.js"></script>



</body>
</html>
