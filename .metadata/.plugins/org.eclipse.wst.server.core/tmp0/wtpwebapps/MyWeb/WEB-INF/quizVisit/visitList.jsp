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
<title>방명록 리스트</title>
<style type="text/css">
	div#container {
		width: 80%;
		margin: 0 auto;
	}
	
	table {
		width: 50%;
		border: solid 1px gray;
		border-collapse: collapse;
		margin-top: 30px;
	}
	
	th {
		background-color: #ffff66;
		height: 30px;
	 }
	
	
	th, td {
		border: solid 1px gray;
		border-collapse: collapse;
		text-align: center;
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
    	    var visitno = $(this).children(":nth-child(2)").val();
    		location.href="visitDetailContent.do?visitno="+visitno;
    	});
    	
    });

</script>

</head>
<body>
	<div id="container">
		<h2>방명록 리스트</h2>
		<table>
			<thead>
				<tr>
					<th>방명번호</th>
					<th>성명</th>
			   <%-- <th>내용</th> --%>
					<th>방명일자</th>
				</tr>
			</thead>
			<tbody>
			<c:if test="${not empty visitList}">
				<c:forEach var="visitVO" items="${visitList}" varStatus="status">
					<tr>
						<td>${status.count}</td>
						<input type="hidden" value="${visitVO.visitno}" />
						<td>${visitVO.visitorname}</td>
				   <%-- <td>${visitVO.contents}</td> --%>
						<td>${visitVO.writeday}</td>
					</tr>
				</c:forEach>
			</c:if>
			
			<c:if test="${empty visitList}">
				<tr>
					<td colspan="3">방명된 기록이 없습니다</td>
				</tr>
			</c:if>
		
			</tbody>
		</table>
		
		<button type="button" onclick="javascript:location.href='visitWrite.do'">방명록쓰기</button> 
		
	</div>
</body>
</html>



