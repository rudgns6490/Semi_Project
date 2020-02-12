<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
@import url(//fonts.googleapis.comearlyaccessnanumgothic.css);
</style>
<body> 
	<div style="font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; overflow:hidden; display:flex; ">
		<div class="content" style="width: 70%; float: left;">
			<img src="/Semi_Team1/images/${photoname}" style="width: 100%; height: 100%;">
		</div>
		<div class="content" style="width: 30%; float: right; margin: 3%;">
			<div>
				<div>
					<img src="/Semi_Team1/images/${prdimg}" style="width: 100%;">
				</div>
				<hr>
				<div>
					<div style="font-weight: bold; color: #323232; font-size: 12px;">${prdname}</div>					
					<div>${grade}</div>		
					<hr>			
				</div>
			</div>			
			<div style="margin: 30px 0;">				
				<div style="font-size: 11px; color: #5a5a5a;">${content}</div>			
				<div style="overflow:hidden; display:flex; color: #cbcbcb; font-size: 11px; margin-top: 30px;">
					<div style="width:50%; float: left;">${username}</div>
					<div style="text-align:right; width:50%; float: right;">${registerday}</div>
				</div>
				<hr>
			</div>			
		</div>
	</div>
</body>
</html>