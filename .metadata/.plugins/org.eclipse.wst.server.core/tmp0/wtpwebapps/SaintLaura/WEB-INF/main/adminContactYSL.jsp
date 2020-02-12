<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="../header.jsp" />
<link rel="stylesheet" href="<%=ctxPath%>/css/adminYSL.css?after">
<script src="<%=ctxPath%>/js_ysl/payment.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">



	<div id="adminContainer">
		<div class="adminrow adminFirRow">
			<img src="images/payment-logo.png" class="admingLogo" />
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden;" >
			<div class="adminMenu adminOrder"><span id="adminOrder" onclick="location.href='adminOrderYSL.ysl'">주문&반품리스트</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden; border-left: hidden;">
			<div class="adminMenu adminProduct"><span id="adminProduct" onclick="location.href='adminProdUploadYSL.ysl'">상품등록</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-right: hidden; border-left: hidden;">
			<div class="adminMenu adminCustomer"><span id="adminCustomer" onclick="location.href='adminCustomerYSL.ysl'">고객리스트</span></div>
		</div>
		<div class="col-xs-3 adminMenurow adminrow" style="border-left: hidden;">
			<div class="adminMenu adminService"><span id="adminService" onclick="location.href='adminContactYSL.ysl'">관리자</span></div>
		</div>

		<div class="adminContentrow adminrow">			
		
		<%-- 고객서비스 --%>
		<div class="adminContent adminContentService" >
			<h3 style="margin: 30px 0 25px 80px;">Saint Laura In-House</h3>
				<table style="width: 80%; border: solid 1px #e9e9e9; border-collapse: collapse; margin-left: 80px; font-size: 9pt;">
					<tr class="adminCallTR">
						<td rowspan="2" class="adminCallTD">Customer Management</td>
						<td rowspan="2" class="adminCallTD">Kim Min Ha</td>
						<td class="adminCallTD">010-2345-9845</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">Kimmh@ysl.com</td>
					</tr>
					<tr class="adminCallTR">
						<td rowspan="4" class="adminCallTD">Product Management</td>
						<td rowspan="2" class="adminCallTD">Kim 현준</td>
						<td class="adminCallTD">010-4578-3234</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">kimhj@ysl.com</td>
					</tr>
					<tr class="adminCallTR">
						<td rowspan="2" class="adminCallTD">Lee 병희</td>
						<td class="adminCallTD">010-3166-4578</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">Leebh@ysl.com</td>
					</tr>
					<tr class="adminCallTR">
						<td rowspan="6" class="adminCallTD">Payment Management</td>
						<td rowspan="2" class="adminCallTD">Song 민하</td>
						<td class="adminCallTD">010-7897-6565</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">songmh@ysl.com</td>
					</tr>
					<tr class="adminCallTR">
						<td rowspan="2" class="adminCallTD">Yoon Jeong Yu</td>
						<td class="adminCallTD">010-7897-5654</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">yoonjy@ysl.com</td>
					</tr>
					<tr class="adminCallTR">
						<td rowspan="2" class="adminCallTD">Lim So Mi</td>
						<td class="adminCallTD">010-4587-1278</td>
					</tr>
					<tr class="adminCallTR">
						<td class="adminCallTD">Limsm@ysl.com</td>
					</tr>
				</table>

			
		</div>
		<%-- 고객서비스 끝 --%>
	</div>
</div>

</body>
</html>