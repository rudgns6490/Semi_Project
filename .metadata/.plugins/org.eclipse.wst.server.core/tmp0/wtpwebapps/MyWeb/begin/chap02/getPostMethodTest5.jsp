<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// === 확장자 .jsp 파일에서는 내장된 객체가 있다. ===
	// request, response, out, session 등등이 있다.
	
	// context name(컨텍스트명)이 무엇인지 알고자 한다.
	String ctxPath = request.getContextPath(); // context name(컨텍스트명)의 경로를 알아오는 것이다.
	// ctxPath 에는 /MyWeb 이 저장되어진다.
	
//	System.out.println("ctxPath => " + ctxPath);
	// ctxPath => /MyWeb
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>getPostMethodTest5.jsp 페이지</title>

<style type="text/css">
	body {background-color: #ffe6ff;}
	ul {list-style: none;}
	li {line-height: 200%;}
</style>

</head>
<body>
	<form name="memberFrm" action="<%= ctxPath%>/getPostMethodTest4.kh" method="get">
	<%-- 
	     <%= ctxPath%>/getPostMethodTest4.kh 을 배치서술자인 web.xml을 사용하지 않고 
	         어노테이션(@)기법을 사용해서 처리하겠다.
	         우리는 WebServlet 어노테이션을 사용한다.    
	--%>
		<fieldset>
		<legend>개인성향 테스트(GET / POST method)</legend>
		<ul>
			<li>
				<label for="name">성명</label>
				<input type="text" name="name" id="name" placeholder="성명입력"/> 
			</li>
			<li>
				<label for="school">학력</label>
				<select name="school" id="school">
					<option value="고졸">고졸</option>
					<option value="초대졸">초대졸</option>
					<option value="대졸">대졸</option>
					<option value="대학원졸">대학원졸</option>
				</select>
			</li>
			<li>
				<label for="">좋아하는 색상</label>
				<div>
					<label for="red">빨강</label>
					<input type="radio" name="color" id="red" value="red" />
					
					<label for="blue">파랑</label>
					<input type="radio" name="color" id="blue" value="blue" />
					
					<label for="green">초록</label>
					<input type="radio" name="color" id="green" value="green" />
					
					<label for="yellow">노랑</label>
					<input type="radio" name="color" id="yellow" value="yellow" />
				</div>
			</li>
			<li>
				<label for="">좋아하는 음식(다중선택)</label>
				<div>
				    <label for="food1">짜짱면</label>
					<input type="checkbox" name="food" id="food1" value="짜짱면" />
					
					<label for="food2">짬뽕</label>
					<input type="checkbox" name="food" id="food2" value="짬뽕" />
					
					<label for="food3">탕수육</label>
					<input type="checkbox" name="food" id="food3" value="탕수육" />
					
					<label for="food4">양장피</label>
					<input type="checkbox" name="food" id="food4" value="양장피" />
					
					<label for="food5">팔보채</label>
					<input type="checkbox" name="food" id="food5" value="팔보채" />
				</div>
			</li>
			<li>
				<input type="submit" value="전송" />
				<input type="reset" value="취소" />
			</li>
		</ul>
	</fieldset>	
	</form>
</body>
</html>



