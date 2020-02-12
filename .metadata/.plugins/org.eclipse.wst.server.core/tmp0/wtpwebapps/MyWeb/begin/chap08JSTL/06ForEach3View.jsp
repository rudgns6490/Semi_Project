<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ==== JSTL(JSP Standard Tag Library) 사용하기 ==== --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원명단 및 도서명 출력하기</title>
</head>
<body>
    <h2>회원명단(JSTL을 사용한 것)</h2>
	<c:if test="${!empty nameArr}">
		<ol>
			<c:forEach var="irum" items="${nameArr}">
				<li>${irum}</li>
			</c:forEach>
		</ol>
	</c:if>
	
	<c:if test="${empty nameArr}">
		회원명단이 존재하지 않습니다.<br/>
	</c:if>
	
	<h2>도서리스트(JSTL을 사용한 것)</h2>
	<c:if test="${!empty bookArr}">
		<ul style='list-style-type: none;'>
			<c:forEach var="book" items="${bookArr}" varStatus="status">
			<%-- 
			     ${status.index} 은 0 부터 시작한다.
			     ${status.count} 은 1 부터 시작한다. 
			--%>
				<li>${status.count}&nbsp;${book}</li>
			</c:forEach>
		</ul>
	</c:if>
	
	<c:if test="${empty bookArr}">
		도서리스트가 존재하지 않습니다.<br/>
	</c:if>
</body>
</html>





