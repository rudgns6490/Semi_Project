<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
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
		<h2>회원상세정보3 조회 결과</h2>
		
		<c:if test="${!empty member}">
		<ul>
			<li>
				<label>회원아이디</label>
				<span>${member.userid}</span>
			</li>
			
			<li>
				<label>암호</label>
				<span>${member.passwd}</span>
			</li>
			
			<li>
				<label>회원명</label>
				<span>${member.name}</span>
			</li>
						
			<li>
				<label>이메일</label>
				<span>${member.email}</span>
			</li>			
			
			<li>
				<label>전화번호</label>
				<span>${member.tel}</span>
			</li>
			
			<li>
				<label>주민번호</label>
				<span>${member.jubun}</span>
			</li>
			
			<li>
				<label>성별</label>
				<span>${member.gender}</span>
			</li>
			
			<li>
				<label>현재나이</label>
				<span>${member.age}</span>
			</li>
						
			<li>
				<label>학력</label>
				<span>${member.school}</span>
			</li>
			
			<li>
				<label>관심분야</label>
				<span>${member.interestStr}</span>
			</li>
			
			<li>
				<label>가입일자</label>
				<span>${member.registerday}</span>
			</li>
		</ul>
		</c:if>
		
		<c:if test="${empty member}">
			<span style='color: red;'>존재하지 않는 회원입니다</span> 
		</c:if>
			
		<button type="button" onclick="javascript:location.href='memberList3.do'">회원목록</button>
	</div>
</body>
</html>





