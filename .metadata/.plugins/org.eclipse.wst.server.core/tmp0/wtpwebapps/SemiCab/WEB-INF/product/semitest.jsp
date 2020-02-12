<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
호호호
<div >
			<img src="/SemiCab/img/${pvo.product_img}" style="width: 200px; height: 170px;" />
			${pvo.product_img}
			${pvo.price}
</div>

<div>
	    <ul style="list-style-type: none;">
			<li><span style="color: red; font-size: 12pt; font-weight: bold;">${pvo.product_class}</span></li>
			<li>제품번호: ${pvo.product_num}</li>
			<li>제품이름: ${pvo.product_name}(${pvo.color})</li>
	        <li>제품정가: <span style="text-decoration: line-through;"><fmt:formatNumber value="${pvo.price}" pattern="###,###"/>원</span></li>	    
	    </ul>
</div>


<div class="row">
		<c:if test="${not empty imgList}">
			<c:forEach var="product_de_img" items="${imgList}">
				<div class="col-md-3 line">
				   <img src="/SemiCab/img/${product_de_img}"/>
				</div>
			</c:forEach>
		</c:if>
	</div>


</body>
</html>