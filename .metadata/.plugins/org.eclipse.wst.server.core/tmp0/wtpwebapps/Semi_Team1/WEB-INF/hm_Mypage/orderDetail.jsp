<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<style type="text/css">
#tab_menu{
	margin-bottom: 25px;
}

td.tab{
	border: solid 1px silver;
	width: 50%;
	margin: 0 auto;
	text-align: center;
	height: 50px;
	cursor: pointer;
	color: silver;
}

.orderTabTbl, .orderTbl, .reviewTbl{
	width: 100%;
	border-spacing: 0;
	border-collapse: collapse;
}

.orderTbl tr td{
	border: solid 1px gray;
	padding-left: 10px;
	font-size: 9pt;
}
.orderTbl tr th{
	border: solid 1px gray;
	width: 15%;
	background-color: #f8f8f8;
	font-size: 10pt;
	padding: 6px;
	padding-left: 10px;
}

.tdCenter tr td, .tdCenter tr th{
	padding-left: 0; 
}

td.active{
	color: black;
	border-bottom: solid 3px black;
}

.tblText{
	font-weight: bold;
	font-size: 11pt;
}

#orderBtn1{
	border: solid 1px black; 
	font-size: 10pt;
	text-align: center;
	cursor: pointer;
	display: inline-block;
	width: 70px; 
	padding: 3px 0;
}

#closeBtn{
	border: solid 1px black;
	text-align: center;
	margin: 0 auto;
	display: inline-block;
	width: 100px;
	padding: 10px;
	cursor: pointer;
}

.prod{
	border: solid 1px silver;
	text-align: center;
	padding: 10px;
}

.reviewTbl{
}

.reviewTbl tr td{
	font-size: 9pt;
	text-align: left;
}

#writeReview{
	cursor: pointer;
	border: solid 1px black;
	padding: 5px;
}

.submitBtn{
	background-color: #231f20;
	color: white;
}

.cancelBtn{
	background-color: white;
	color: #231f20;
}

</style>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.0.min.js" ></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#menu2").hide();
	$(".tab").click(function(){
		$(".tab").removeClass("active");
		$(this).addClass("active");
		$(".tabContent").hide();
		var menubar = ("#menu"+($(this).index()+1));
		$(menubar).show();
	});
	
	$(".submitBtn").hover(
			function(){
				$(this).removeClass("submitBtn");
				$(this).addClass("cancelBtn");
			},
			function(){
				$(this).removeClass("cancelBtn");
				$(this).addClass("submitBtn");
			});
		
		$(".cancelBtn").hover(
			function(){
				$(this).removeClass("cancelBtn");
				$(this).addClass("submitBtn");
				$(this).css("color","white");
			},
			function(){
				$(this).removeClass("submitBtn");
				$(this).addClass("cancelBtn");
				$(this).css("color","#231f20");
			});
		
		$("#submitBtn").click(function(){
			var passwd = $("#inputPasswd").val().trim();
			
			if(passwd==""){
				alert("패스워드를 입력하세요");
				$("#inputPasswd").focus();
			}
			else{
				location.href="semi_Mypage_MyInfoEdit.jsp"
				////////////////
				/* Submit작업 */
				////////////////
			}
			
		});
		
		
});

function goReview(prdCode){
	window.opener.top.location.href="/Semi_Team1/purchase/purchaseContent.dog?prdcode="+prdCode+"#section3";
	window.close();
}

function goTracker(deliverynum){
	var url = "https://tracker.delivery/#/kr.cjlogistics/"+deliverynum;
    var name = "trackerDelivery";
    var option = "width = 600px, height = 650px, location = no"
    window.open(url, name, option);
}

</script>
<head>
<meta charset="EUC-KR">
<title>주문조회</title>
</head>
<body>
<div id="topArea" style="margin-bottom: 10px;">
	<div style="float: left;">
		<span style="font-weight: bold; font-size: 16pt;">주문정보</span>
	</div>
		<div style="text-align: right; padding-top: 10px;">
		<span style="font-size: 9pt;"><strong id="name">[${requestScope.loginuser.user_name}]</strong>님께서 주문하신 내역입니다</span>
	</div>
</div>

	<div id="tab_menu">
		<table class="orderTabTbl">
		<tr>
			<td class="tab active" >주문상세내역</td>
			<td class="tab" >상품후기등록</td>
		</tr>
		</table>
	</div>
	
	<div class="tabContent" id="menu1" >
	
		<span class="tblText">주문자</span>
		<c:forEach var="ovo" items="${orderDetailList}" varStatus="status">
		<c:if test="${status.index eq 0}">
			<table class="orderTbl" style="text-align: left;">
				<tr>
					<th>주문번호</th>
					<%--<td>201912040001</td>--%>
					<td>${ovo.order_num}</td>
					<th>주문일자</th>
					<%--<td>201912040001</td>--%>
					<td>${ovo.order_day}</td>
				</tr>
				<tr>
					<th>주문자</th>
					<td>${requestScope.loginuser.user_name}</td>
					<th>배송구분</th>
					<td>${ovo.order_freedeliv}</td>
				</tr>
				<tr>
					<th>주문메모</th>
					<td colspan="4">${ovo.memo}</td>
				</tr>
			</table>
			<br/><br/>
			
			<span class="tblText">배송지</span>
			<table class="orderTbl" style="text-align: left;">
				<tr>
					<th>배송번호</th>
					<td colspan="3">${ovo.order_deliverynum} <span style="padding: 3px; border:solid 1px silver; margin-left: 10px; cursor: pointer;" onclick="goTracker('${ovo.order_deliverynum}')">배송조회</span></td>
				</tr>
				<tr>
					<th>수취인</th>
					<td>${ovo.receiver}</td>
					<th>연락처</th>
					<td>${requestScope.loginuser.phone}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="4">${ovo.delivery}</td>
				</tr>
				<tr>
					<th>배송메세지</th>
					<td colspan="4">${ovo.delivery_msg}</td>
				</tr>
			</table>
			<br/><br/>
			
			
			<span class="tblText">주문상품</span>
			
			<table class="orderTbl tdCenter">
			
			<thead>
				<tr>
					<th colspan="2" style="width:40%">주문상품정보</th>
					<th style="width:15%">상품별주문번호</th>
					<th style="width:6%">수량</th>
					<th style="width:8%">가격</th>
					<th style="width:8%">적립</th>
					<th style="width:10%">처리상태</th>
					<th style="width:12%">배송번호</th>
				</tr>
			</thead>
			<tbody style="text-align: center;">
			</c:if>
				<tr>
					<td><img alt="img" src="../images/${ovo.photoname }" width="50px" height="50px"></td>
					<td width="290px">${ovo.product_name}</td>
					<td>${ovo.order_num}</td>
					<td>${ovo.quantity}</td>
					<td><fmt:formatNumber maxFractionDigits="3" value="${ovo.amountmoney}" />원</td>
					<td>${ovo.amountmoney * 0.01}원</td>
					<td>${ovo.order_status}</td>
					<td>${ovo.order_deliverynum}</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
			<br/><br/>
			
		<span id="orderBtn1" onclick="alert('결제대금의 환불/취소는 쇼핑몰로 연락주시기 바랍니다.')">주문취소</span>
	</div>
	
	
	<div class="tabContent" id="menu2" >
		<div class="prod">
			<table class="reviewTbl">
				<tbody>
				<c:forEach var="ovo" items="${orderDetailList}" varStatus="status">
					<tr style="border: solid 1px gray;">
						<td><img alt="img" src="../images/${ovo.photoname }" width="50px" height="50px"></td>
						<td width="290px">${ovo.product_name}</td>
						<td>${ovo.quantity}</td>
						<td><fmt:formatNumber maxFractionDigits="3" value="${ovo.amountmoney}" />원</td>
						<td><span id="writeReview" onclick="goReview(${ovo.product_code})">후기작성</span></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	
	<div style="text-align: center; margin-top: 30px;">
	<span id="closeBtn" onclick="self.close()">닫기</span>
	</div>
</body>
</html>