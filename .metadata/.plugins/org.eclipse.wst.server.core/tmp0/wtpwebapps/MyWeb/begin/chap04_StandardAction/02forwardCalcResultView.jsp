<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String firstVal = request.getParameter("firstNum");
    String secondVal = request.getParameter("secondNum");
    
    int sum = (Integer) request.getAttribute("sum");
    // auto Unboxing 
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산된 결과값 보여주는 곳</title>
</head>
<body>
	<h3>계산된 결과값</h3>
	<br/><br/>
	<%= firstVal%> 부터 <%= secondVal%> 까지의 합은?<br/>
	결과값 : <span style="color: red;"><%= sum%></span>
</body>
</html>




