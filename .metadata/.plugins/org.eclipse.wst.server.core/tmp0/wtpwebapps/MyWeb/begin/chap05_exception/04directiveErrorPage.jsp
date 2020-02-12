<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="05error2.jsp" %>

<%-- 이 페이지에서 어떠한 Exception 이 발생되어지면
     errorPage 속성에 기술한 페이지(지금은 05error2.jsp 페이지)로 이동을 해라는 말이다. 
--%>      
    
<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	int	num1 = Integer.parseInt(str1);
	int	num2 = Integer.parseInt(str2);
		
	int	sum = num1 + num2;
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>04directiveErrorPage.jsp 페이지 입니다.</title>
</head>
<body>
	<%= num1%> + <%= num2%> = <%= sum%> 입니다.
</body>
</html>




