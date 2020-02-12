<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="begin.chap06.oracle.model.MemberVO" %>

<%
	Object obj = request.getAttribute("member");

	MemberVO member = null;
	
    if(obj != null) {
    	member = (MemberVO) obj;
    }
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원상세정보 보여주기</title>

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
		<h2>회원상세정보 조회 결과</h2>
		
	<%
		if(member != null) {	
	%>
		<ul>
			<li>
				<label>회원아이디</label>
				<span><%= member.getUserid() %></span>
			</li>
			
			<li>
				<label>암호</label>
				<span><%= member.getPasswd() %></span>
			</li>
			
			<li>
				<label>회원명</label>
				<span><%= member.getName() %></span>
			</li>
						
			<li>
				<label>이메일</label>
				<span><%= member.getEmail() %></span>
			</li>			
			
			<li>
				<label>전화번호</label>
				<span><%= member.getTel() %></span>
			</li>
			
			<li>
				<label>주민번호</label>
				<span><%= member.getJubun() %></span>
			</li>
			
			<li>
				<label>성별</label>
				<span><%= member.getGender() %></span>
			</li>
			
			<li>
				<label>현재나이</label>
				<span><%= member.getAge() %></span>
			</li>
						
			<li>
				<label>학력</label>
				<span><%= member.getSchool() %></span>
			</li>
			
			<li>
				<label>관심분야</label>
				<span><%= member.getInterestStr() %></span>
			</li>
			
			<li>
				<label>가입일자</label>
				<span><%= member.getRegisterday() %></span>
			</li>
		</ul>
	<% }
		else { %>
			<span style='color: red;'>존재하지 않는 회원입니다</span> 
	<%	}	%>
		
		<button type="button" onclick="javascript:location.href='memberList.do'">회원목록</button>
	</div>
</body>
</html>





