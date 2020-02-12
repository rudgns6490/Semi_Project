<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산된 결과값 보여주는 곳(EL을 사용한것)</title>
</head>
<body>
	<h3>계산된 결과값(EL을 사용한것)</h3>
	<br/><br/>
	${firstVal} 부터  ${secondVal}까지의 합은?<br/>
	결과값 : <span style="color: blue;">${sum}</span>
	
	<hr style="border: solid 1px red;"/>
	
	<h3>계산된 결과값에 10을 곱한것(EL을 사용한것)</h3>
	<br/><br/>
	${firstVal*10} 부터  ${secondVal*10}까지의 합은?<br/>
	결과값 : <span style="color: blue;">${sum*10}</span>
	
	<hr style="border: solid 1px red;"/>
	
	<h3>계산된 결과값(EL을 사용한것)</h3>
	<br/><br/>
	${requestScope.firstVal} 부터  ${requestScope.secondVal}까지의 합은?<br/>
	결과값 : <span style="color: blue;">${requestScope.sum}</span>

</body>
</html>




