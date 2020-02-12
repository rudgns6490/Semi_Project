<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<style>
.center {
  text-align: center;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
  transition: background-color .3s;
  border: 1px solid #ddd;
  margin: 0 4px;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
  border: 1px solid #4CAF50;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.adminBtns{
	border: solid 1px black;
	width: 50px;
	padding: 3px;
	cursor: pointer;
}
</style>

<jsp:include page="../header_dog.jsp"/>

<link rel="stylesheet" type="text/css" href="/Semi_Team1/css/hm/style.css" />
 
<script type="text/javascript">
$(document).ready(function(){
	
});

function editOrderStatus(orderNum){
	if( $("#deliveryNum"+orderNum).val() == "" ){
		alert("송장번호를 입력하세요");
		return;
	}
	var frm = document.AdminOrderFrm;
	frm.method = "POST";
	frm.action = "/Semi_Team1/admin/adminOrder.dog?orderNum="+orderNum;
	frm.submit();
}


</script>

<div id="login_container">
<span id="top_comment"></span>
<h1 class="hm_h1">마이페이지</h1>
<jsp:include page="semi_Mypage_Submenu.jsp"/>

<script type="text/javascript">
	$("#subtabli3 > a").addClass('subtabClick');
	$(".subTab").hide();
	$("#tab3").addClass("tabClick")
	$(".subTab:first").show();
	$("#top_comment").html("Home>Mypage>주문관리페이지");
</script>

<h4 style="font-weight: bold; margin-top: 40px;">배송관리</h4>
<table class="table" style="border-top: solid 2px gray; border-bottom: solid 1px gray;">
	<thead class="hm_thead">
		<tr>
			<th width="10%">주문번호</th>
			<th width="10%">주문자</th>
			<th width="10%">주문상태</th>
			<th width="40%">배송정보</th>
		</tr>
	</thead>
	<tbody class="hm_tbody">
	<form name="AdminOrderFrm">
		<c:if test="${!empty requestScope.orderList}">
				<c:forEach var="ovo" items="${requestScope.orderList}" varStatus="status">
				
			<tr>
				<td style="vertical-align: middle;">[${ovo.order_num }]</td>
				<td>${ovo.fk_email }</td>
				<input type="hidden" name="orderNum" value="${ovo.order_num }"/>
				<td style="vertical-align: middle;"><span style="font-weight: bold; color: red;">[${ovo.order_status }]</span></td>
					
				<c:if test="${!empty ovo.order_deliverynum}">
					<td>배송번호: <input type="text" id="deliveryNum${ovo.order_num}" name="deliveryNum${ovo.order_num}" style="width: 200px;" value="${ovo.order_deliverynum}"/> <span class="adminBtns" onclick="editOrderStatus(${ovo.order_num })">등록</span> </td>
				</c:if>
				
				<c:if test="${empty ovo.order_deliverynum}">
					<td>배송번호: <input type="text" id="deliveryNum${ovo.order_num}" name="deliveryNum${ovo.order_num}" style="width: 200px;" /> <span class="adminBtns" onclick="editOrderStatus(${ovo.order_num })">등록</span> </td>
				</c:if>
			</tr>
			
			</c:forEach>
		</c:if>
	</form>
	</tbody>
</table>


	<div class="center">
		<div style="text-align: center;" class="pagination">
			${pageBar}
		</div>
	</div>
</div>
<jsp:include page="../footer_dog.jsp"/>