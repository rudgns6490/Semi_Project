<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	int	num1 = Integer.parseInt(str1);
	int	num2 = Integer.parseInt(str2);
	// NumberFormatException 처리는 
	// 배치서술자인 web.xml 에서 처리를 하도록 하겠다.
		
	int	sum = num1 + num2;
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>06webXml.jsp 페이지 입니다.</title>
</head>
<body>
	<%= num1%> + <%= num2%> = <%= sum%> 입니다.
</body>
</html>




