<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String str1 = request.getParameter("num1");
	String str2 = request.getParameter("num2");
	
	int num1=0, num2=0, sum=0;
	try {
		num1 = Integer.parseInt(str1);
		num2 = Integer.parseInt(str2);
		
		sum = num1 + num2;
	
	} catch(NumberFormatException e) {
		/*
		   NumberFormatException 이라는 익셉션이 발생하면
		      에러표시를 해주는 특정 페이지로 이동시킨다.
		      웹브라우저의 주소창의 URL주소는 안 바뀌고 그 내용만 03error1.jsp 의 내용이 보여진다.    
		*/
		RequestDispatcher dispatcher = request.getRequestDispatcher("03error1.jsp"); 
		dispatcher.forward(request, response); 
	}
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>02tryCatchRequestDispatcher.jsp 페이지 입니다.</title>
</head>
<body>
	<%= num1%> + <%= num2%> = <%= sum%> 입니다.
</body>
</html>




