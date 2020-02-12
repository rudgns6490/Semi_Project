<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ==== JSTL(JSP Standard Tag Library) 사용하기 ==== --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력받은 두개의 문자열이 같은지 다른지 검사하기 결과</title>
</head>
<body>
	첫번째 문자열 : ${param.first}<br/>
	두번째 문자열 : ${param.second}<br/>
	<br/>
	<c:if test="${param.first == param.second}">
		${param.first} 와 ${param.second} 은 같습니다.
	</c:if>
	<c:if test="${param.first != param.second}">
		${param.first} 와 ${param.second} 은 같지 않습니다.
	</c:if>
    <br/>
    
	<hr style="border: solid 1px orange; " />
	
	<c:if test="${param.first eq param.second}">
		${param.first} 와 ${param.second} 은 같습니다.
	</c:if>
	<c:if test="${param.first ne param.second}">
		${param.first} 와 ${param.second} 은 같지 않습니다.
	</c:if>
	<br/>
	
	<hr style="border: solid 1px orange; " />
	
	<c:set var="personVO" value="홍길동" />	
	<c:if test="${!empty personVO}">
		personVO에는 정보가 들어있습니다.
	</c:if>
	<c:if test="${empty personVO}">
		personVO에는 정보가 들어있지 않습니다.
	</c:if>
	<br/>
	
	<c:set var="productVO" value="" />	
	<c:if test="${!empty productVO}">
		productVO에는 정보가 들어있습니다.
	</c:if>
	<c:if test="${empty productVO}">
		productVO에는 정보가 들어있지 않습니다.
	</c:if>
	<br/>
	
</body>
</html>




