<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<%
 	String ctxPath = request.getContextPath();
%>
<jsp:include page="../header.jsp" />

<style type="text/css" >
   table#tblOrderList {width: 95%;
                       border: solid gray 1px;
                       margin-top: 20px;
                       margin-left: 10px;
                       margin-bottom: 20px;}
                      
   table#tblOrderList th {border: solid gray 1px;}
   table#tblOrderList td {border: dotted gray 1px;} 
</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		// == "#sideinfo" 의 height 값 설정해주기 == 
		var contentHeight =	$("#content").height();
		//	alert(contentHeight);
		$("#sideinfo").height(contentHeight);
		
		
		$("#btnDeliverStart").click(function(){
			// 배송하기 버튼 클릭시

			$(".odrcode").prop("disabled", true); // 모든 배송하기 및 배송완료 input 태그 비활성화 시키기
			
			var flag = false;
			
			$(".deliverStartPnum").each(function(){ // 선택자: 배송하기 체크박스 
				var bool = $(this).is(":checked");  // 체크박스의 체크유무 검사 
				
				if(bool == true) { // 배송하기 체크박스에 체크가 되어있으면
					$(this).prop("disabled", false); // 활성화 
					$(this).next().next().prop("disabled", false); // 활성화 
					flag = true;
				}
			}); // end of $(".deliverStartPnum").each()---------------
			
			if(flag == false) {
				alert("먼저 하나이상의 배송을 시작할 제품을 선택하셔야 합니다.");
				return;
			}
			else {
				var frm = document.frmDeliver;
				frm.method = "POST";
				frm.action = "<%= ctxPath%>/shop/admin/deliverStart.up";
				frm.submit();
			}
			
		});// end of $("#btnDeliverStart").click()------------------
		
		
		$("#btnDeliverEnd").click(function(){
			// 배송완료 버튼 클릭시
			
			$(".odrcode").prop("disabled", true); // 모든 배송하기 및 배송완료 input 태그 비활성화 시키기 
			
			var flag = false;
			
			$(".deliverEndPnum").each(function(){ // 선택자: 배송완료 체크박스 
				var bool = $(this).is(":checked"); // 체크박스의 체크유무 검사 
				
				if(bool == true) { // 배송완료 체크박스에 체크가 되어있으면
					$(this).prop("disabled", false); // 활성화
					$(this).next().next().prop("disabled", false); // 활성화 
					flag = true;
				}
			}); // end of $(".btnDeliverEnd").each()---------------
			
			if(flag == false) {
				alert("먼저 하나이상의 배송을 완료할 제품을 선택하셔야 합니다.");
				return;
			}
			else {
				var frm = document.frmDeliver;
				frm.method = "POST";
				frm.action = "<%= ctxPath%>/shop/admin/deliverEnd.up";
				frm.submit();
			}
			
		});// end of $("#btnDeliverEnd").click()------------------
		
		
	}); // end of $(document).ready()--------------------------
	
	
	function allCheckStart() {
		$(".odrcode").prop("disabled", false); // 모든 배송하기 및 배송완료 input 태그 활성화 시키기
		
		var bool = $("#allCheckDeliverStart").is(':checked');
		$(".deliverStartPnum").prop('checked', bool);
	}// end of function allCheckBoxStart()------------
	
	
	function allCheckEnd() {
		$(".odrcode").prop("disabled", false); // 모든 배송하기 및 배송완료 input 태그 활성화 시키기
		
		var bool = $("#allCheckDeliverEnd").is(':checked');
		$(".deliverEndPnum").prop('checked', bool);
	}// end of function allCheckBoxEnd()-----------
	
	
	function openMember(odrcode){
		var url = "<%= ctxPath%>/shop/odrcodeOwnerMemberInfo.up?odrcode="+odrcode;
		
		// 팝업창 띄우기
		window.open(url, "memberInfo",
				    "width=800px, height=500px, top=50px, left=100px");
	}// end of function openMember(odrcode)-------------
	
</script>

<c:set var="userid" value="${(sessionScope.loginuser).userid}" />

<c:if test='${userid eq "admin"}'>
	<h2>::: 주문내역 전체목록 :::</h2>
</c:if>

<c:if test='${userid ne "admin"}'>
	<h2>::: ${(sessionScope.loginuser).name} 님[ ${userid} ] 주문내역 목록 :::</h2>	
</c:if>

<form name="frmDeliver">
<table id="tblOrderList" style="width: 95%;">
	
  <c:if test='${userid eq "admin"}'>
	<tr>	
		<td colspan="7" align="right" > 
			<input type="checkbox" id="allCheckDeliverStart" onClick="allCheckStart();"><label for="allCheckDeliverStart"><span style="color: green; font-weight: bold; font-size: 9pt;">전체선택(배송하기)</span></label>&nbsp;
			<input type="button" name="btnDeliverStart" id="btnDeliverStart" value="배송하기" style="width: 80px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			
			<input type="checkbox" id="allCheckDeliverEnd" onClick="allCheckEnd();"><label for="allCheckDeliverEnd"><span style="color: red; font-weight: bold; font-size: 9pt;">전체선택(배송완료)</span></label>&nbsp;
			<input type="button" name="btnDeliverEnd" id="btnDeliverEnd" value="배송완료" style="width: 80px;">
		</td>
	</tr>
  </c:if>
		
    <tr bgcolor="#cfcfcf">
		<td align="center" width="15%">주문코드(전표)</td>
		<td align="center" width="15%">주문일자</td>
		<td align="center" width="30%">제품정보</td> <%-- 제품번호,제품명,제품이미지1,판매정가,판매세일가,포인트 --%> 
		<td align="center" width="10%">수량</td>
		<td align="center" width="10%">금액</td>   
		<td align="center" width="10%">포인트</td>
		<td align="center" width="10%">배송상태</td>
    </tr>
	<c:if test="${orderList==null || empty orderList}" > 
	  <tr>
		  <td colspan="7" align="center">
		  <span style="color: red; font-weight: bold;">주문내역이 없습니다.</span>
	  </tr>
	</c:if>

	<%-- ============================================ --%>
	<c:if test="${orderList != null && not empty orderList}">
		<c:forEach var="odrmap" items="${orderList}" varStatus="status">
			<%--
				 varStatus 는 반복문의 상태정보를 알려주는 애트리뷰트이다.
				 status.index : 0 부터 시작한다.
				 status.count : 반복문 횟수를 알려주는 것이다.
			 --%>
			<tr>
				<td align="center"> <%-- 주문코드(전표) 출력하기. 
				      만약에 관리자로 들어와서 주문내역을 볼 경우 해당 주문코드(전표)를 클릭하면 
				      주문코드(전표)를 소유한 회원정보를 조회하도록 한다.  --%>
					<c:if test='${userid eq "admin"}'>
						<a href="#" onClick="javascript:openMember('${odrmap.ODRCODE}');">${odrmap.ODRCODE}</a>
					</c:if>
					
					<c:if test='${userid ne "admin"}'>
						${odrmap.ODRCODE}
					</c:if>
				</td>
				
				<td align="center"> <%-- 주문일자 --%>
					${odrmap.ODRDATE}
				</td>
				
				<td align="center">  <%-- === 제품정보 넣기 === --%>
					<a href="/MyMVC/shop/prodView.up?pnum=${odrmap.FK_PNUM}">	
					    <img src="/MyMVC/images/${odrmap.PIMAGE1}" width="130" height="100" />  <%-- 제품이미지1 --%>
					</a> 
					<br/>제품번호 : ${odrmap.FK_PNUM}  <%-- 제품번호 --%>
					<br/>제품명 : ${odrmap.PNAME}      <%-- 제품명 --%>
					<br/>판매정가 : <span style="text-decoration: line-through;"><fmt:formatNumber value="${odrmap.PRICE}" pattern="###,###" /> 원</span>   <%-- 제품개당 판매정가 --%>
					<br/><span style="color: red; font-weight: bold;">판매가 : <fmt:formatNumber value="${odrmap.SALEPRICE}" pattern="###,###" /> 원</span>  <%-- 제품개당 판매세일가 --%> 
					<br/><span style="color: red; font-weight: bold;">포인트 : <fmt:formatNumber value="${odrmap.POINT}" pattern="###,###" /> 포인트</span>   <%-- 제품개당 포인트 --%>
				</td>
				
				<td align="center">    <%-- 수량 --%>
					 ${odrmap.OQTY} 개
				</td>
				
				<td align="center">    <%-- 금액 --%>
				     <c:set var="su" value="${odrmap.OQTY}" />
				     <c:set var="danga" value="${odrmap.SALEPRICE}" />
				     <c:set var="totalmoney" value="${su * danga}" />
				     
					 <fmt:formatNumber value="${totalmoney}" pattern="###,###" /> 원
				</td>
				
				<td align="center">    <%-- 포인트 --%>
				     <c:set var="point" value="${odrmap.POINT}" />
				     <c:set var="totalpoint" value="${su * point}" />
					 <fmt:formatNumber value="${totalpoint}" pattern="###,###" /> 포인트
				</td>
				
				<td align="center"> <%-- 배송상태 --%>
					<c:if test='${userid ne "admin"}'>
						<c:choose>
							<c:when test="${odrmap.DELIVERSTATUS == '주문완료'}">
								주문완료<br/>
							</c:when>
							<c:when test="${odrmap.DELIVERSTATUS == '배송중'}">
								<span style="color: green; font-weight: bold; font-size: 12pt;">배송중</span><br/>
							</c:when>
							<c:when test="${odrmap.DELIVERSTATUS == '배송완료'}">
								<span style="color: red; font-weight: bold; font-size: 12pt;">배송완료</span><br/>
							</c:when>
						</c:choose>
					</c:if>
	
					<c:if test='${userid eq "admin"}'>
						<c:if test="${odrmap.DELIVERSTATUS == '주문완료'}">
							<input type="checkbox" class="deliverStartPnum odrcode" name="pnum" id="chkDeliverStart${status.index}" value="${odrmap.FK_PNUM}"><label for="chkDeliverStart${status.index}">배송하기</label> 
							<input type="text" class="odrcode" name="odrcode" value="${odrmap.ODRCODE}" size="10" />
						</c:if>
						<br/>
						<c:if test="${odrmap.DELIVERSTATUS == '주문완료' or odrmap.DELIVERSTATUS == '배송중'}">
							<input type="checkbox" class="deliverEndPnum odrcode" name="pnum" id="chkDeliverEnd${status.index}" value="${odrmap.FK_PNUM}"><label for="chkDeliverEnd${status.index}">배송완료</label>
							<input type="text" class="odrcode" name="odrcode" value="${odrmap.ODRCODE}" size="10"  />
						</c:if>
					</c:if>
				</td>
			</tr>
		</c:forEach>
		</c:if>
		<%-- ============================================================================ --%>
		
</table>
</form>  
 
 <%-- === 페이지바 === --%>
 <div align="center" style="margin: 20px 0;">
 	${requestScope.pageBar}
 </div>
 
<jsp:include page="../footer.jsp" />
    