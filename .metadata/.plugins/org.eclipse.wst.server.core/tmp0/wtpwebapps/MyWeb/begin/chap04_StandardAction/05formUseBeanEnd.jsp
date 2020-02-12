<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--    
    ==> 전송 방식이 POST 일 경우에 한글깨짐을 방지하려고 아래와 같이 해주는데 
	<% request.setCharacterEncoding("UTF-8"); %>  
	
	그런데 매번 위와 같이 하기에는 귀찮더라. 
	그래서 filter 를 이용하여 WAS가 구동되어질때 자동적으로 
	request.setCharacterEncoding("UTF-8"); 이 되어지도록 하겠다.
	또한 WAS가 구동되어질때 자동적으로 되어야 하므로 배치서술자인 web.xml 에 기술해야 한다.
	filter란? Servlet 이나 JSP 을 구동할때 해당 Servlet 이나 JSP를 구동하기전 먼저 실행되어지는 클래스를 말한다.  
--%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form 태그를 사용한 데이터 전송시 useBean 사용한 결과 보기</title>
</head>
<body>
	<jsp:useBean id="user" class="begin.chap04_StandardAction.UserDTO" />
 <%-- 	 
	<jsp:setProperty property="userid" value="${param.userid}" name="user"/>
	<jsp:setProperty property="passwd" value="${param.passwd}" name="user"/>
	<jsp:setProperty property="name" value="${param.name}" name="user"/>
	<jsp:setProperty property="email" value="${param.email}" name="user"/>
	<jsp:setProperty property="tel" value="${param.tel}" name="user"/>
	<jsp:setProperty property="jubun1" value="${param.jubun1}" name="user"/>
	<jsp:setProperty property="jubun2" value="${param.jubun2}" name="user"/>
	<jsp:setProperty property="school" value="${param.school}" name="user"/> 
	
	<jsp:setProperty property="interest" value="${paramValues.interest}" name="user"/>  
--%>	
	<jsp:setProperty property="*" name="user"/>  
	
	<h2>회원가입 정보 결과(JSP 표준액션중 useBean 을 사용한 것)</h2>
	<ul>
		<li>아이디 : <jsp:getProperty property="userid" name="user"/></li>
		<li>암호 : <jsp:getProperty property="passwd" name="user"/></li>
		<li>성명 : <jsp:getProperty property="name" name="user"/></li>
		<li>이메일 : <jsp:getProperty property="email" name="user"/></li>
		<li>전화번호 : <jsp:getProperty property="tel" name="user"/></li>
		<li>주민번호 : <jsp:getProperty property="jubun" name="user"/></li>
		<li>학력 : <jsp:getProperty property="school" name="user"/></li>
		<li>관심분야 : <jsp:getProperty property="interestList" name="user"/></li>
		<li>성별 : <jsp:getProperty property="gender" name="user"/></li>
		<li>현재나이 : <jsp:getProperty property="age" name="user"/></li>
	</ul>
</body>
</html>






