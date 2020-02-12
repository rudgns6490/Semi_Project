<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="begin.chap04_StandardAction.MemberDTO" %>  
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 표준액션 중 useBean 에 대해서 알아봅니다.</title>

<style type="text/css">

	div{ margin: 20px; }

</style>

</head>
<body>
	<div>
		<h2>스크립틀릿을 사용하여 MemberDTO 클래스의 객체정보를 불러오기</h2>
	    <%
	    	MemberDTO mbrdto = new MemberDTO();
	    
	        mbrdto.setIrum("이순신");
	        mbrdto.setJubun("9505101234567");
	        
	        String name = mbrdto.getIrum();
	        String jubun = mbrdto.getJubun();
	        
	        String gender = mbrdto.getGender();
	        int age = mbrdto.getAge();
	    %> 
	    
	    <ul>
	       <li>성명 : <%= name%></li>
	       <li>주민번호 : <%= jubun%></li>
	       <li>성별 : <%= gender%></li>
	       <li>나이 : <%= age%></li> 
	    </ul>
	    
	</div>

	<hr style="border: solid 1px red;" />

	<div>
		<h2>JSP 표준액션 중 useBean 사용하여 MemberDTO 클래스의 객체정보를 불러오기</h2>
		<jsp:useBean id="mbrdto2" class="begin.chap04_StandardAction.MemberDTO" />
		<jsp:setProperty property="irum"   value="엄정화"         name="mbrdto2"/> 
		<jsp:setProperty property="jubun"  value="9009202234567" name="mbrdto2"/> 
		 
		<ul>
	       <li>성명 : <jsp:getProperty property="irum" name="mbrdto2"/></li>
	       <li>주민번호 : <jsp:getProperty property="jubun" name="mbrdto2"/></li>
	       <li>성별 : <jsp:getProperty property="gender" name="mbrdto2"/></li>
	       <li>나이 : <jsp:getProperty property="age" name="mbrdto2"/></li>
	    </ul> 
	</div>
</body>
</html>





