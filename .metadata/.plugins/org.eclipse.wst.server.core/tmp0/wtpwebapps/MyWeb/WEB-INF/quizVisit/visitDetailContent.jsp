<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록 상세보기</title>
<style type="text/css">
	div#container {
		width: 95%;
		margin: 0 auto;
	}
	
	table {
		width: 50%;
		border: solid 1px gray;
		border-collapse: collapse;
		margin: 30px 0 30px 0;
	}
	
	th, td {
		border: solid 1px gray;
		border-collapse: collapse;
		padding: 5px;
	}
	
</style>
</head>
<body>
	<div id="container">
		<h2>방명록 상세보기</h2>
		<table>
			<c:if test="${not empty visitVO}">
				<tr>
					<th>방명번호</th>
					<td>${visitVO.visitno}</td>
				</tr>
				<tr>
					<th>글쓴이</th>
					<td>${visitVO.visitorname}</td>
				</tr>
				<tr>
					<th>방명일자</th>
					<td>${visitVO.writeday}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>${visitVO.contents}</td>
				</tr>
			</c:if>
			
			<c:if test="${empty visitVO}">
			<tr>
				<td colspan="3">방명된 기록이 없습니다</td>
			</tr>
			</c:if>
		
			</tbody>
		</table>
		
		<button type="button" onclick="javascript:location.href='visitList.do'">방명록리스트</button> 
		
	</div>
</body>
</html>



