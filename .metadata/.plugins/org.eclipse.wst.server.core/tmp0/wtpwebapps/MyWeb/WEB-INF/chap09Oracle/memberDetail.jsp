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
		<h2>회원상세정보4 조회 결과</h2>
		
		<c:if test="${!empty map}">
		<ul>
			<li>
				<label>회원아이디</label>
				<span>${map.userid}</span>
			</li>
			
			<li>
				<label>암호</label>
				<span>${map.passwd}</span>
			</li>
			
			<li>
				<label>회원명</label>
				<span>${map.name}</span>
			</li>
						
			<li>
				<label>이메일</label>
				<span>${map.email}</span>
			</li>			
			
			<li>
				<label>전화번호</label>
				<span>${map.tel}</span>
			</li>
			
			<li>
				<label>주민번호</label>
				<span>${map.jubun}</span>
			</li>
			
			<li>
				<label>성별</label>
				<span>${map.gender}</span>
			</li>
			
			<li>
				<label>현재나이</label>
				<span>${map.age}</span>
			</li>
						
			<li>
				<label>학력</label>
				<span>${map.school}</span>
			</li>
			
			<li>
				<label>관심분야</label>
				<span>${map.interest}</span>
			</li>
			
			<li>
				<label>가입일자</label>
				<span>${map.registerday}</span>
			</li>
		</ul>
		</c:if>
		
		<c:if test="${empty map}">
			<span style='color: red;'>존재하지 않는 회원입니다</span> 
		</c:if>
			
		<button type="button" onclick="javascript:location.href='memberList4.do'">회원목록</button>
	</div>
</body>
</html>





