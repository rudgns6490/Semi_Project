<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%-- 페이지 directive(지시어)에서 isErrorPage="true" 의 의미는 
         이 페이지는 일반적인 JSP 페이지가 아니라 오류가 발생했을때 보여주는
         페이지임을 나타내는 것이다. --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SQL 관련 외외 오류 발생시 보여주는 것</title>
</head>
<body>
처리도중 오류 발생했습니다.<br/>
오류메시지 : <span style="color: blue;">${requestScope.errorMsg}</span> 
</body>
</html>



