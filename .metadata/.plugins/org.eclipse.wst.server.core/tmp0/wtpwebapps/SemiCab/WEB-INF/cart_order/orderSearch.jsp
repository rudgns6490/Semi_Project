<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:include page="../header.jsp"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css">
	
	div#backbody {                     
		background-color: #f5f5f0;
		font-size: 13pt;
		min-width: 1480px;
		width: 100%;
		padding: 50px 0 ;
	}
	
	#frame {	                           			/* 전체 div */
		width: 80%;
		margin: 0 auto;	
		padding: 50px 50px;
		background-color: #fff;
	}
	
	#frame2{                               			/* 페이지 맨위 header아님!! 장바구니 홈>장바구니  */
		border-bottom: solid 1px #e0e0eb;
		padding: 20px 0; 
	} 
	
	.home {   /* 홈 > 주문조회 */
		float: right;
		clear: both;
	}
	
	ol { list-style: square; }
	
	
	table#productInfo {									/* 아래 주문 상품 정보 테이블  */
  		border: solid 1px #e0e0eb; 
		border-collapse: collapse;
		background-color: #f5f5f0;
		width: 100%;
		font-size: 10pt;
		
	}	
	
	table#productInfo th, td {
		border: solid 1px #e0e0eb;
		text-align: center;
		padding: 20px 0;
	}
	
	#search {}
	
</style>

<script type="text/javascript">

</script>



<div id="backbody">
	<div id="frame">
		<form>
			<div id="frame2">
				<span style="font-size: 16pt; font-weight: bold;">주문조회</span>
				<span class="home"> 홈 > 주문조회</span>
				<span> </span>
			</div>
			<br/>
			
			<div style="border: solid 1px #e0e0eb; background-color: #f5f5f0; padding: 10px 10px; font-size: 13pt; font-weight: bold;"><span>주문내역조회</span></div>
			<br/>
			<div id="search">
				<div style="border: solid 1px gray; padding: 20px;">
					<select style="padding: 5px;">
						<option>전체 주문처리상태</option>
						<option>입금전</option>
						<option>배송준비중</option>
						<option>배송중</option>
						<option>배송완료</option>
						<option>취소</option>
						<option>교환</option>
						<option>반품</option>
					</select>&nbsp;
					
					<input type="date" style="padding: 3px;" /> ~ <input type="date" style="padding: 3px;" />&nbsp; 
					
					<span style="border: solid 1px gray; font-size: 12pt; font-weight: bold; background-color: #6699ff; color: #fff; border-radius: 3px; padding: 3px;">조회</span>
					
				</div>
				
				<ol style="padding: 10px 20px; font-size: 10pt; color:gray ">
					<li>기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
					<li>주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
					<li>취소/교환/반품 신청은 주문완료일 기준 30일까지 가능합니다.</li>
				</ol>
			</div>
			<br/><br/>
			
			<span style="font-size: 10pt; font-weight: bold; display:inline-block; padding: 10px 10px; ">주문 상품 정보</span>
			<table id="productInfo">
				<thead>
					<tr>
						<th>영수증 전표</th>
						<th>주문일자[주문번호]</th>
						<th>이미지</th>
						<th style="width: 550px;">상품정보</th>
						<th>수량</th>
						<th>상품구매금액</th>
						<th>상품구매날짜</th>
						<th>배송지</th>
					</tr>
				</thead>
			
				<tbody>
				<c:if test="${not empty requestScope.OLlist}">
					<c:forEach var="odListVO" items="${requestScope.OLlist}" varStatus="status">
					<%-- 
					<c:forEach var= "billg" items="${requestScope.billgList}">
						${billg}
					</c:forEach>
					 --%>
						<tr style="background-color: #fff;">
							<td>${odListVO.billgeStatement}</td>
							<td>${odListVO.order_date} [${odListVO.orderlist_num}]</td>
							<td><img style="width: 120px;" src="/SemiCab/img/${odListVO.product_img}"></td>
							<td style="font-weight: bold;">${odListVO.product_name} [${odListVO.color}]</td>
							<td>${odListVO.order_cnt}</td>
							<td>${odListVO.total_price}</td> 
							<td>${odListVO.order_date}</td>
							<td>[${odListVO.postnum}]<br>${odListVO.address1}<br>${odListVO.address2}</td>  
							
							
						</tr>
					</c:forEach>
				</c:if>	
				
				<c:if test="${empty requestScope.OLlist}">
					<tr>
						<td><span style=" display:inline-block; padding-top: 30px;">주문 내역이 없습니다.</span></td>
					</tr>
				</c:if>
				</tbody>
			</table>
		</form>
	</div>
</div>


<jsp:include page="../footer.jsp"/>


















