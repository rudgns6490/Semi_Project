<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<jsp:include page="../header_dog.jsp"/>
<title>주문 완료</title>

<style type="text/css">

@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);

	body {
		font-family: Nanum Gothic, "나눔고딕", sans-serif;
	}
	
	#container {
		margin: 0 auto;
	}
	
	#nav {
		width: 100%;
		padding-top:15pt;
		text-align: right;
		font-size: 9pt;
		color: #b1b1b1;
	}
	
	#main_title {
		margin: 33px 0;
		text-align: center;
		padding: 10pt;
		margin: 20pt;
	}
	
	#text_title {
		font-size: 26pt;
		font-weight: bold;
	}
	
	#order > th,td {
		font-size: 10pt;
 		vertical-align: middle !important;
	
	}
	
	
	
	.table img {
		width:100px;
		height:90px ;
	}
	
	.top  {
		border-top:2px gray solid;	
	}
	
	.bottom {
		border-bottom:2px gray solid;
	}
	
	.bottom2 {
		border-bottom:2px #e9e9e9 solid;
	}
	
	.tbl01 > tbody, thead > tr > th {
		text-align: center;
	}
	
	.tbl01 > tbody > tr > td {
		text-align: center;
	}
	
	.tbl01 th  {
		background-color: #f8f8f8;
	}

	.tbl_margin{
		text-align: right;
		margin: 8px;
		padding: 3px;
	}
    
    #left_order {
    	width: 45%;
    	float:left;
    	margin-right:2px;
    }
    
   
    
     #right_order {
    	width: 45%;
    	float:right;
    	margin-left:2px;
    }
    
    #info_box {
		clear:both;    
    }
    
    #info_box > #delInfo > .table < tr > th {
  		
    	width: 10px;
    }
    
    .subTitle {
    	margin-top:40px;
    	padding:5px;
    	font-weight: bold;
    }
    
    #message {
    	margin: 70px;
    	vertical-align: middle;
    	text-align: center;
    }
    
    #btnBox {
    	margin: 5px 10px 70px 10px;
    	text-align: center;
    }
    
    .btn {
    	margin: 10px;
    	padding: 7px;
    	width: 190px;
    	height: 60px; 	
    	font-size: 18px;
    	font-weight: bold;
    }
    
    #btnCon {
  	 	background-color: #fff; 
    	color:black;
    	border: solid 1px #42362f;
    }
    
    #btnFin {
    	background-color: #42362f; 
    	color:white;
    }
  
</style>

<script type="text/javascript">
	
	$(document).ready(function(){
		
		$("#btnCon").click(function(){		// 쇼핑 계속하기 : 상품 리스트 페이지로 이동
			
			location.href = "<%= request.getContextPath() %>/purchase/purchase.dog";
		});
		
		$("#btnFin").click(function(){		// 주문확인 : 마이페이지-주문상세보기 로 이동
			
			location.href = "<%= request.getContextPath() %>/mypage/mypageMain.dog";
		});
		
		
		
	});
	
</script>

</head>
<body>
<div class="container">
	<p id="nav">Home > 장바구니 리스트</p>
	<div id="main_title"><h2 id="text_title">주문완료</h2></div>
	
	<div id="order">
		<table class="table tbl01">	
			<thead class="top bottom">
				<tr>
					<th style="width:85px;">사진</th>
					<th>상품명</th>
					<th>수량</th>
					<th>적립</th>
					<th>금액</th>
				</tr>
			</thead>
			<tbody>
				
				<c:forEach var="orderDetail" items="${ order.orderDetail }">
					<tr>
						<td>
							<div id="order_img">
								<img src="<%= request.getContextPath() %>/images/${ orderDetail.purchase.product_explanation }">
							</div>
						</td>
						<td style="font-weight: bold; text-align:left;">${ orderDetail.purchase.product_name }</td>
						<td>${ orderDetail.quantity }개</td>
						<td><fmt:formatNumber value="${ orderDetail.expectedReserve }" pattern='###,###' /></td>
						<td><fmt:formatNumber value="${ orderDetail.amountmoney }" pattern='###,###' />원</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot class="top bottom">
				<tr>
					<td colspan="5"><div class="tbl_margin"><span>총 사용 적립금</span><span>-<fmt:formatNumber value="${ order.totalMinusReserve }" pattern='###,###' />원</span></div></td>
				</tr>
				
				<tr>
					<td>총 결제금액</td>
					<td colspan="4">
						<div class="tbl_margin">
							<fmt:formatNumber value="${ order.totalMoney }" pattern='###,###' />원 
							+ 배송료 <c:if test="${ order.order_freedeliv eq '0' }">2,500</c:if>
							<c:if test="${ order.order_freedeliv eq '1' }">0</c:if>원 
							- 할인금액 <fmt:formatNumber value="${ order.totalMinusReserve }" pattern='###,###' />원= 
							<span style="color:red;">"<fmt:formatNumber value="${ order.totalPayMoney }" pattern='###,###' />원"</span>
						</div>
					</td>
				</tr>
			</tfoot>
		</table>
		
		<div id="order_box">
			<div id="left_order">
				 <h4 class="subTitle">결제방법</h4>
				 <table class="table tblColor top bottom2">
				 	<tr>
				 		<th style="height:112px;">결제내역</th>
				 		<td style="vertical-align: top !important;">
				 			<span><c:if test="${ order.order_payment =='1' }">신용카드</c:if> <c:if test="${ order.order_payment =='2' }">카카오페이</c:if> 
				 				결제성공 - 승인번호 : ${ order.order_payment_number }
				 			</span>
				 		</td>
				 	</tr>	
				 </table>
			</div>
			
			<div id="center_order">
			</div>
		
			<div id="right_order">
				<h4 class="subTitle">주문자정보</h4>
				<table class="table tblColor top bottom2" >
					<tr>
				 		<th>이름</th>
				 		<td><span>${ order.member.user_name }</span></td>
				 	</tr>
				 	<tr>
				 		<th>이메일</th>
				 		<td><span>${ order.member.email }</span></td>
				 	</tr>
				 	<tr>
				 		<th>연락처</th>
				 		<td><span>${ order.member.separatedPhone }</span></td>
				 	</tr>
				 </table>
			</div>
			
		</div> <!-- order_box -->
		
		<div id="info_box">
			<div id="delInfo">
				<h4 class="subTitle">배송지정보</h4>
					<table class="table tblColor top bottom2">
						<tr>
					 		<th style="width:120px;">이름</th>
					 		<td style="width:290px;"><span>${ order.post.newName }</span></td>
					 		
					 		<th style="width:80px;">연락처1</th>
					 		<td><span>${ order.post.newPhone11 }-${ order.post.newPhone12 }-${ order.post.newPhone13 }</span></td>
					 		
					 		<th style="width:80px;">연락처2</th>
					 		<td><span>${ order.post.newPhone21 }-${ order.post.newPhone22 }-${ order.post.newPhone23 }</span></td>
					 	</tr>
					 	
					 	<tr>
					 		<th>주소</th>
					 		<td colspan="5"><span>${ order.post.newAddr1 } ${ order.post.newAddr2 }</span></td>
					 	</tr>
					 	<tr>
					 		<th>주문메시지<br/>(100자내외)</th>
					 		<td colspan="5"><span>${ order.memo }</span></td>
					 	</tr>
					 </table>
			</div><!-- delInfo -->
			
			<div id="message">
				<label>${ order.member.user_name }</label>님의 주문이 완료되었습니다.<br/>
				귀하의 주문확인 번호는 <span style="color:blue;">${ order.order_num }</span>입니다.<br/>
				확인 후 바로 발송하겠습니다.
			</div>
			
			<div id="btnBox">
				<button type="button" class="btn btn_last" id="btnCon">쇼핑 계속하기</button> <!-- 상품리스트?페이지로 이동 -->
				<button type="button" class="btn btn_last" id="btnFin">주문확인</button> <!-- 마이페이지-주문상세보기?로 이동 -->
			
			</div>
		</div><!-- info_box -->
		
	</div> <!-- order -->
	 
  
</div>

<jsp:include page="../footer_dog.jsp"/>
