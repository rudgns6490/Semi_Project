<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%
	String ctxPath = request.getContextPath();
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록 보여주기</title>

<style type="text/css">
	div#container {
		width: 95%;
		margin: 0 auto;
	}
	
	table {
		width: 90%;
		border: solid 1px gray;
		border-collapse: collapse;
		margin-top: 30px;
	}
	
	th, td {
		border: solid 1px gray;
		border-collapse: collapse;
	}

	tbody tr:hover {
		background-color: #ccc;
		cursor: pointer;
	}
	
	button { 
		margin-top: 30px;
	}

</style>

<script type="text/javascript" src="<%= ctxPath%>/js/jquery-3.3.1.min.js"></script> 

<script type="text/javascript">

    $(document).ready(function(){ 
		
    	$("tbody > tr").click(function(){
    	//	var userid = $(this).find("#userid").text();
    	//  var userid = $(this).find(":nth-child(2)").text();
    	    var userid = $(this).children(":nth-child(2)").text();
    	    
    		console.log(userid);
    		
    		// 자바스크립트에서 페이지 이동하기
    		// location.href="이동해야할 페이지 URL주소"; 로 한다.
    		location.href="detailMemberInfo4.do?userid="+userid;
    	});
    	
    });

</script>

</head>
<body>
	<div id="container">
		<h2>회원목록 보기4</h2>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>회원명</th>
					<th>이메일</th>
					<th>가입일자</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${not empty memberList}">
				<c:forEach var="map" items="${memberList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
					<%-- 
						<td id="userid">${map.userid}</td> 
					--%>
						<td>${map.userid}</td>
						<td>${map.name}</td>
						<td>${map.email}</td>
						<td>${map.registerday}</td>
					</tr>
				</c:forEach>
			</c:if>
			
			<c:if test="${empty memberList}">
				<tr>
					<td colspan="5">가입된 회원이 없습니다</td>
				</tr>
			</c:if>
		
			</tbody>
		</table>
		
		<button type="button" onclick="javascript:location.href='memberRegister4.do'">회원가입</button> 
		
	</div>
</body>
</html>





