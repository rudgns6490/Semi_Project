<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ==== JSTL(JSP Standard Tag Library) 사용하기 ==== --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문자열로 되어진 숫자를 누적한 결과값 나타내기</title>
</head>
<body>
    <h2>문자열로 되어진 숫자를 누적한 결과값 나타내기(JSTL을 사용한 것)</h2>
	<c:set var="sum" value="0" />
	<c:if test="${not empty pointArr}">
		<ol>
			<c:forEach var="point" items="${pointArr}">
				<li>${point}</li>
				<c:set var="sum" value="${sum + point}" />
			</c:forEach>
		</ol>
	</c:if>
	
	<c:if test="${empty pointArr}">
		누적할 데이터가 존재하지 않습니다.<br/>
	</c:if>
	
	누적의 합계 : ${sum}
	
</body>
</html>