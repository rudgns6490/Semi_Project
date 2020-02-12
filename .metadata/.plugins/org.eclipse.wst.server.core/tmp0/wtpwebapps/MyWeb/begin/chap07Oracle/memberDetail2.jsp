<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>    

<%
	Object obj = request.getAttribute("map");

    HashMap<String, String> map = null;

	if(obj != null) {
		map = (HashMap<String, String>) obj;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세정보 보여주기2</title>

<style type="text/css">
	
	ul {list-style-type: square;}
	li {line-height: 200%;}
	label {
		display: inline-block;
		width: 100px;
		text-align: left;
		color: navy;
		font-size: 13pt;
	}
	span {
		font-size: 12pt;
		font-weight: bold;
	}
	
	div#container {
		position: absolute;
		left: 100px;
		top: 20px;
	}
	
</style>

</head>
<body>
	<div id="container">
		<h2>회원상세정보 조회 결과2</h2>
		
	<%
		if(map != null) {	
	%>
		<ul>
			<li>
				<label>회원아이디</label>
				<span><%= map.get("userid")%></span>
			</li>
			
			<li>
				<label>암호</label>
				<span><%= map.get("passwd")%></span>
			</li>
			
			<li>
				<label>회원명</label>
				<span><%= map.get("name")%></span>
			</li>
						
			<li>
				<label>이메일</label>
				<span><%= map.get("email")%></span>
			</li>			
			
			<li>
				<label>전화번호</label>
				<span><%= map.get("tel")%></span>
			</li>
			
			<li>
				<label>주민번호</label>
				<span><%= map.get("jubun")%></span>
			</li>
			
			<li>
				<label>성별</label>
				<span><%= map.get("gender")%></span>
			</li>
			
			<li>
				<label>현재나이</label>
				<span><%= map.get("age")%></span>
			</li>
						
			<li>
				<label>학력</label>
				<span><%= map.get("school")%></span>
			</li>
			
			<li>
				<label>관심분야</label>
				<span><%= map.get("interest")%></span>
			</li>
			
			<li>
				<label>가입일자</label>
				<span><%= map.get("registerday")%></span>
			</li>
		</ul>
	<% }
		else { %>
			<span style='color: red;'>존재하지 않는 회원입니다</span> 
	<%	}	%>
		
		<button type="button" onclick="javascript:location.href='memberList2.do'">회원목록</button>
	</div>
</body>
</html>

