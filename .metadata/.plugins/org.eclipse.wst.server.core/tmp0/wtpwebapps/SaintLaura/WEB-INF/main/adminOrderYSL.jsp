<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="../header.jsp" />
<link rel="stylesheet" href="<%=ctxPath%>/css/adminYSL.css?after">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<script src="<%=ctxPath%>/js_ysl/adminYSL.js"></script>
<script type="text/javascript">
	
	$(document).ready(function() {
		
		/* $(".adminContent").hide();
		$(".adminContentOrder").show();
		$("#adminOrder").addClass("menuFontBold");
		$("#orderNreturnNo").val("12345");
		 */
		
		// 검색어에 무언가를 입력했다면~
		if("${searchWord}" != "") {
			$("#searchType").val("${searchType}");
			$("#searchWord").val("${searchWord}");
		}
		
		$("#orderStatus").val("${orderStatus}");
		
		
		// 상태보기 바꾸기
		$("#orderStatus").bind("change", function(){
			
			
			var orderStatus = $(this).val();
			// 모두보기하면 검색어 지우기
			if( orderStatus == "0") {
				$("#searchWord").val("");
			}
			
			
			// change를 하면 값을 보내줘야지??
			var frm = document.orderFrm;
			
			frm.method = "POST";
			frm.action = "<%= ctxPath%>/adminOrderYSL.ysl";
			// 자기자신한테 보내기
			frm.submit();
			
		});		
		
		// 검색타입 바꾸면 검색창 비우기
		$("#searchType").bind("change", function(){
			$("#searchWord").val("");
		});
		
		// 엔터로 검색하기
		$("#searchWord").keydown( function(event){
			if(event.keyCode == 13) {
				goSearch();
			}
		});		
		
		// 선택한 행 상세페이지로 가기
		$("tr").click( function(){
			
			// 지금 선택한 행에서 첫번째 태그의 텍스트를 가져오겠다.
			var orderDetailNo = $(this).find(":nth-child(2)").text();	
			// :nth-child()는 형제 요소 중에서 특정 순서에 있는 요소를 선택할 때 사용합니다.
			// 그 값으로 상세페이지로 가자
			goOrderDetail(orderDetailNo);
			
		});
		
	}); // end of $(document).ready(function()---------------------
	
	// 조회번호, 성명, 제품명으로 리스트 검색 
	function goSearch() {
	
		var frm = document.orderFrm;
		
		frm.method = "GET";
		frm.action = "adminOrderYSL.ysl"; // 자기자신에게 보내기
		frm.submit();
	}
	
	// 클릭하면 상세정보로 고고!!
	function goOrderDetail(orderDetailNo) {
		
		location.href="adminOrderDetail.ysl?orderDetailNo="+orderDetailNo;
		
	}
	
	function goOrderMenu() {
		
		location.href="adminOrderYSL.ysl";
	
	}
	
	function goProductMenu() {
		
		location.href="adminProdUploadYSL.ysl";
		
	}
	
	function goCustomerMenu() {
		location.href="adminCustomerYSL.ysl";
	}
	
	function goServiceMenu() {
		
		location.href="adminContactYSL.ysl";
	}
	
	
	
	

</script>

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
			
			<%-- 주문반품리스트 --%>
			<div class="adminContent adminContentOrder">			
				<div class="form-group">
				<form name="orderFrm">
				  <select class="form-control" id="searchType" name="searchType" style="width: 100px; height: 30px; margin-left: 108px; font-size: 9pt; display: inline;">
				    <option style="font-size: 9pt;" value="orderNo">주문번호</option>
				    <option style="font-size: 9pt;" value="name">성명</option>
				    <option style="font-size: 9pt;" value="pname">제품명</option>
				  </select>
				  
				  <input type="text" class="form-control" id="searchWord" name="searchWord" size="10" style="display: inline; width: 120px; height: 28px" placeholder="Enter" />
				 
				  <select class="form-control" id="orderStatus" name="orderStatus" style="width: 100px; height: 30px; margin-left: 370px; font-size: 9pt; display: inline;">
				    <option style="font-size: 9pt;" value="0" selected>모두보기</option>
				    <option style="font-size: 9pt;" value="1">주문접수</option>
				    <option style="font-size: 9pt;" value="2">배송시작/중</option>
				    <option style="font-size: 9pt;" value="3">배송완료</option>
					<option style="font-size: 9pt;" value="4">교환신청</option>
				    <option style="font-size: 9pt;" value="5">교환완료</option>
				    <option style="font-size: 9pt;" value="6">반품신청</option>
				    <option style="font-size: 9pt;" value="7">반품완료</option>
				  </select>
				  </form>
				</div>
				<table class="adminTable adminCustomerList">
					<thead>
						<tr class="adminTableTR">
							<th>주문번호</th>
							<th>주문상세번호</th>
							<th>제품명</th>
							<th>제품번호</th>
							<th>주문자명</th>
							<th>주문상태</th>
							<th>주문일자</th>
						</tr>
					</thead>
					<tbody>
						
						<c:if test="${empty orderList}">
							<tr>
								<td colspan="6">주문내역이 없습니다.</td>
							</tr>						
						</c:if>
						<c:if test="${not empty orderList}">
							<c:forEach var="map" items="${orderList}">
								<tr class="adminTableTR" style="cursor: pointer;" onclick="goOrderDetail();">
									<td>${map.orderNo}</td>
									<td>${map.orderDetailNo}</td>
									<td>${map.pname}</td>
									<td>${map.pnum}</td>
									<td>${map.name}</td>
									<td>${map.orderStatus}</td>
									<td>${map.orderDate}</td> 
								</tr>	
							</c:forEach>
						</c:if>	
					</tbody>
				</table>
				<%-- --%>
				<nav class="bottomNav" aria-label="Page navigation example">
  					<ul class="pagination pg-blue">
    					<li class="page-item">
      						${pageBar}
    					</li>
  					</ul>
				</nav>
			</div>

			<%-- 주문반품리스트 끝 --%>
			
		</div>
	</div>

</body>
</html>