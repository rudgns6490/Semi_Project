<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="header.jsp" />

<link rel="stylesheet" href="css/orderDetail.css">

<body>

	<div class="container">
		<img src="images/myAccount_Banner.jpg" class="myAccountBanner"/>
		<div style="border: solid rgb(239, 239, 239) 1px;" >
			<ul class="logged">
				<li class="profileMenu basicMenu">&lt; 주문 &amp; 반품 돌아가기</li>
				<li class="logoutMenu">로그아웃</li>
			</ul>
		</div>
		<div class="orderMsg col-xs-12" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden;">
			<div class="order">주문 : <span>${orderDetailList[1].orderNo}</span></div>
			<div class="orderContainer col-xs-3 row-eq-height">
				<p class="orderSummary">주문 요약</p>
				<label class="explanation">날짜 : </label><span class="orderDate explanation"> 2019-12-02</span><br/>
				<p class="explanation">상태 : 고객님의 주문 관련 정보를 전달받았으며 곧 당사 물류센터로 보낼 예정입니다.</p>
			</div>
			<div class="orderContainer col-xs-2 row-eq-height">
				<p class="orderSummary">배송</p>
				<p class="explanation" style="margin-top:10px;">익스프레스 3~6 영업일 소요</p>
			</div>
			<div class="orderContainer col-xs-2 row-eq-height">
				<p class="orderSummary">결제</p>
				<span class="payment explanation">신용카드</span>
			</div>
			<div class="col-xs-5"></div>
		</div>
		<div class="orderTable col-xs-12" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden; padding:0;">
			
			<table class="table-responsive" style="width:100%;">
				<thead>
					
					<tr style="padding: 20px 40px !important; text-align: center;">
						<th class="col-xs-2 mainLine" style="text-align: center">제품</th>
						<th class="col-xs-3 mainLine"></th>
						<th class="col-xs-2 mainLine" style="text-align: center">상세정보</th>
						<th class="col-xs-1 mainLine" style="text-align: center">수량</th>
						<th class="col-xs-2 mainLine" style="text-align: center">가격</th>
						<th class="col-xs-2 mainLine" style="text-align: right;"><span style="margin-right: 20px;">소계</span></th>
					</tr>
				</thead>
				<tbody style="border-top: solid rgb(239, 239, 239) 1px;">
					<tr style="border-bottom: solid rgb(239, 239, 239) 1px;">
						<td class="col-xs-2" style="padding:0">
							<img style="width: 183px; height: 300px;" src="semi/women/cross_body_bag/page1/ysl_F_crOne_front_1.jpg">
						</td>
						<td class="products prodName col-xs-3"><span>LOU CAMERA BAG IN MATELASSÉ LAMINATED LEATHER</span></td>
						<td class="products col-xs-2" style="text-align: left">
							컬러 : <span>GOLD</span><br/>사이즈 : <span>ONE SIZE</span>
						</td>
						<td class="products col-xs-1"><span>1</span></td>
						<td class="products col-xs-2"><span>￦ 1,820,000</span></td>
						<td class="products col-xs-2" style="text-align: right"><span>￦ 1,820,000</span></td>
					</tr>
					<tr style="border-bottom: solid rgb(239, 239, 239) 1px;">
						<td class="col-xs-2" style="padding:0">
							<img style="width: 183px; height: 300px;" src="semi/women/clutch_bag/1 page/ysl_F_cluOne_front_0.jpg">
						</td>
						<td class="products prodName col-xs-3"><span>LOU CAMERA BAG IN MATELASSÉ LAMINATED LEATHER</span></td>
						<td class="products col-xs-2" style="text-align: left">
							컬러 : <span>GOLD</span><br/>사이즈 : <span>ONE SIZE</span>
						</td>
						<td class="products col-xs-1"><span>1</span></td>
						<td class="products col-xs-2"><span>￦ 1,820,000</span></td>
						<td class="products col-xs-2" style="text-align: right"><span>￦ 1,820,000</span></td>
					</tr>

				</tbody>
			</table>
			<table class="totalTable" style="width:100%;">
				<tr>
					<td style="width: 50%"></td>
					<td class="total" style="width: 20%;">소계</td>
					<td style="width: 20%"></td>
					<td style="width: 10%; text-align: center;"><span>￦ 1,820,000</span></td>
				</tr>
				<tr style="width:100%;">
					<td style="width: 50%"></td>
					<td class="total" style="width: 20%;">총 결제 금액</td>
					<td style="width: 20%"></td>
					<td style="width: 10%; text-align: center;"><span>￦ 1,820,000</span></td>
				</tr>
			</table>
		</div>
	</div>

</body>
</html>