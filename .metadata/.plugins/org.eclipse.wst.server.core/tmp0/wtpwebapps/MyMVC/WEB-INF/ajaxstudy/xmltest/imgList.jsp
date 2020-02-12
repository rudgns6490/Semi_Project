<?xml version="1.0" encoding="UTF-8" ?>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%-- trimDirectiveWhitespaces="true" 을 해줌으로써 웹브라우저에서 소스보기시 공백줄을 제거해주는 것이다. --%>    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<pictures>
	<c:if test="${not empty imgMapList}">
		<c:forEach var="imgmap" items="${imgMapList}">
			<picture>
				<imgno>${imgmap.imgno}</imgno>
				<imgfilename>${imgmap.imgfilename}</imgfilename>
			</picture>
	    </c:forEach>
	</c:if>	
</pictures>




