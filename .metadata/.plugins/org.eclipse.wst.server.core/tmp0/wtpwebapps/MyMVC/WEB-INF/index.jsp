<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="header.jsp" />    

index.jsp 에 관련된 내용물을 넣는다.
<p>
이름은 <span style="color: red;">${requestScope.name}</span> 입니다.

<jsp:include page="footer.jsp" />