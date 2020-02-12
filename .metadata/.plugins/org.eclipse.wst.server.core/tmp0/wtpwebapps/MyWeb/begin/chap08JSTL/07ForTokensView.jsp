<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%-- ==== JSTL(JSP Standard Tag Library) 사용하기 ==== --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원명단 출력하기</title>
</head>
<body>
	<h2>회원명단</h2>
		
	<ol>
		<c:forTokens var="irum" items="${names}" delims=",">
			<li>${irum}</li>
		</c:forTokens>
	</ol>
	
	<h2>친구명단</h2>
		
	<ol>
		<c:forTokens var="irum" items="${friends}" delims=",./">
			<li>${irum}</li>
		</c:forTokens>
	</ol>	
</body>
</html>








