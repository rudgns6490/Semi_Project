<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
	String ctxPath = request.getContextPath();
    //   /MyMVC
%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>부트스트랩 연습하기</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container">
	
	  <div style="width: 70%; margin: 0 auto;">	
	  <h2>Carousel Example</h2>  
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	    </ol>
	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner">
	      <c:forEach var="imgVO" items="${imgList}" varStatus="status">
	      	<c:if test="${status.index == 0}">
	      		<div class="item active">
			       <img src="<%= ctxPath%>/images/${imgVO.imgfilename}" style="width:100%;"> 
			    </div>
	      	</c:if>
	      	
	      	<c:if test="${status.index > 0}">
	      		<div class="item">
			       <img src="<%= ctxPath%>/images/${imgVO.imgfilename}" style="width:100%;"> 
			    </div>
	      	</c:if>
	      </c:forEach>
	      <!-- 
	      <div class="item active">
	        <img src="la.jpg" alt="Los Angeles" style="width:100%;">
	      </div>
	
	      <div class="item">
	        <img src="chicago.jpg" alt="Chicago" style="width:100%;">
	      </div>
	    
	      <div class="item">
	        <img src="ny.jpg" alt="New york" style="width:100%;">
	      </div> 
	      -->
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	  </div>
	  
	</div>

</body>
</html>



