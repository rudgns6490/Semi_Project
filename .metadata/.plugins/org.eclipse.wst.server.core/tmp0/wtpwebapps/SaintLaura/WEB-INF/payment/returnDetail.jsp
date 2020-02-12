<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="../header.jsp" />

<link rel="stylesheet" href="css/returnDetail.css">
<script type="text/javascript">

	$(document).ready( function(){
		
		// 반품목록 알아오기
		$.ajax({
			url:"<%= ctxPath%>/returnDetailSelect.ysl",
			data:{"orderNo":"${orderNo}"},
			type:"POST",
			dataType:"JSON",
			success: function(json) {
				var totalPrice = 0;  // 총 주문한 금액
				var payPrice = 0; 	 // 총 결제할 금액
				var returnPrice = 0; // 총 환불금액
				
				$.each(json, function(index, item){
					
					var returnStatus = item.returnStatus;
					
					if( returnStatus == "반품신청" ) {
						returnPrice += item.price;
					}
					else if ( returnStatus == "교환신청") {
						payPrice += item.price;
					}
					
					totalPrice += item.price;
					
					var html = "";
					
					html += "<tr style='border-bottom: solid rgb(239, 239, 239) 1px;'>"
						  + "<td class='products col-xs-1' style='line-height:200%;'><span>"+item.returnDetailNo+"<br/>"+item.returnStatus+"</span></td>"
	       	        	  + "<td class='col-xs-2' style='padding:0'><img style='width: 183px; height: 300px;' src='images_Product/"+item.pimage1+"'></td>"
	       	        	  + "<td class='products prodName col-xs-2'><span>"+item.pname+"</span></td>"
	       	        	  + "<td class='products col-xs-2' style='text-align: left'>컬러 : <span>"+item.pcolor+"</span><br/>사이즈 : <span>"+item.psize+"</span></td>"
	       	         	  + "<td class='products col-xs-1'><span>1</span></td>"
	       	         	  + "<td class='products col-xs-2'><span>￦  "+numberWithCommas(item.price)+"</span></td>"
	       	         	  + "<td class='products col-xs-2' style='text-align: right'><span>￦  "+numberWithCommas(item.price)+"</span></td>"
						  + "</tr>";	
					
					$("#returnInfo").append(html);
					
				});
				
				$("#totalPrice").text(numberWithCommas(totalPrice));
				$("#payPrice").text(numberWithCommas(payPrice));
				$("#refundPrice").text(numberWithCommas(returnPrice));
				
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
			
		});
		
	});

	$(function(){
		
		$(".logoutMenu").click(function(){
			
			alert("로그아웃 되었습니다.");
			location.href="logout.ysl";
			
		});
		
	});
	
	// 숫자 콤마찍기
	function numberWithCommas(x) {
	    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	
</script>
<body>
	
	<div class="container">
		<img src="images/myAccount_Banner.jpg" class="myAccountBanner"/>
		<div style="border: solid rgb(239, 239, 239) 1px;" >
			<ul class="logged">
				<li class="profileMenu basicMenu" onclick="javascript:location.href='<%=ctxPath%>/orderNReturnList.ysl'">&lt; 주문 &amp; 반품 돌아가기</li>
				<li class="logoutMenu">로그아웃</li>
			</ul>
		</div>
		
		<div class="returnMsg col-xs-12" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden;">
				
			<div class="return">주문번호 : <span>${orderNo}</span></div>
			<div class="returnContainer col-xs-4 row-eq-height">
				<p class="returnSummary">반품&교환 요약</p>
				<p class="explanation">고객님의 반품&교환 관련 정보를 전달받았습니다.</p>
			</div>
	
			<div class="returnContainer col-xs-2 row-eq-height">
				<p class="returnSummary">배송</p>
				<p class="explanation" style="margin-top:10px;">익스프레스 3~6 영업일 소요</p>
			</div>
			<div class="returnContainer col-xs-2 row-eq-height">
				<p class="returnSummary">결제</p>
				<p class="payment explanation">신용카드</p>
			</div>
			<div class="col-xs-4"></div>
		</div>
		<div class="returnTable col-xs-12" style="border: solid rgb(239, 239, 239) 1px; border-top: hidden; padding:0;">
			
			<table class="table-responsive" style="width:100%;">
				<thead>
					<tr style="padding: 20px 40px !important; text-align: center;">
						<th class="col-xs-1 mainLine" style="text-align: center">반품번호</th>
						<th class="col-xs-2 mainLine"></th>
						<th class="col-xs-2 mainLine" style="text-align: center">제품명</th>
						<th class="col-xs-2 mainLine" style="text-align: center">상세정보</th>
						<th class="col-xs-1 mainLine" style="text-align: center">수량</th>
						<th class="col-xs-2 mainLine" style="text-align: center">가격</th>
						<th class="col-xs-2 mainLine" style="text-align: right;"><span style="padding-right: 20px;">소계</span></th>
					</tr>
				</thead>
				<tbody id="returnInfo" style="border-top: solid rgb(239, 239, 239) 1px;" >
					
				</tbody>
			
			</table>
			<table class="totalTable" style="width:100%;">
				<tr>
					<td style="width: 50%"></td>
					<td class="total" style="width: 20%;">소계</td>
					<td style="width: 20%"></td>
					<td id="totalPrice" class="refundPrice" class="refundPrice" style="width: 10%; text-align: center;"><span>￦ 1,820,000</span></td>
				</tr>
				<tr style="width:100%;">
					<td style="width: 50%"></td>
					<td class="total" style="width: 20%;">총 결제 금액</td>
					<td style="width: 20%"></td>
					<td id="payPrice" class="refundPrice" style="width: 10%; text-align: center;"><span>￦ 1,820,000</span></td>
				</tr>
				<tr style="width:100%;">
					<td style="width: 50%"></td>
					<td class="total" style="width: 20%;">총 환불 금액</td>
					<td style="width: 20%"></td>
					<td id="refundPrice" class="refundPrice" style="width: 10%; text-align: center;"><span>￦ 1,820,000</span></td>
				</tr>
			</table>
		</div>
		
	
	
		
	</div>

</body>
</html>