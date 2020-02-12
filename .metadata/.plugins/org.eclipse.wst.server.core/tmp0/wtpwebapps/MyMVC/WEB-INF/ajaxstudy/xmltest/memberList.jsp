<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<memberList>
	<c:if test="${not empty memberList}">
		<c:forEach var="membervo" items="${memberList}">
			<member>
				<userid>${membervo.userid}</userid>
				<name>${membervo.name}</name>
				<email>${membervo.email}</email>
				<gender>${membervo.gender}</gender>
			</member>
		</c:forEach>		
	</c:if>
</memberList>    






