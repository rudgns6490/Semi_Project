<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header_dog.jsp" />

<title>${name}</title>

<script type="text/javascript">
</script>
<style type="text/css">
@import url(fonts.googleapis.comearlyaccessnanumgothic.css);

.subTitle {
	color: #858585;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	text-align: right;
	font-size: 12px;
	padding: 15px;
}

.subTitle div {
	display: inline-block;
}

.mainContent {
	display: inline-block;
	width: 45%;
}

.contentTitle {
	font-size: 30px;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	padding-bottom: 30px;
	margin-bottom: 30px;
	border-bottom: 1px solid #e1e1e1;
	color: #111;
	font-weight: bold;
	text-align: left;
}

.borderBottom {
	padding-bottom: 30px;
	margin-bottom: 30px;
	border-bottom: 1px solid #e1e1e1;
}

.cate1 {
	font-size: 15px;
	color: #999;
	line-height: 55px;
	text-align: center;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	margin: 0;
}

.cate1 div {
	border: solid 1px gray;
	display: inline-block;
	width: 24%;
}

.cate3 {
	border: solid 1px gray;
	width: 2%;
	text-align: center;
	height: 50px;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	font-size: 15px;
	color: #777;
	cursor: pointer;
}

.Bin_order {
	margin: auto;
	width: 32%;
	border: 1px solid #111;
	display: inline-block;
	text-align: center;
	font-size: 14px;
	padding: 15px;
	box-sizing: border-box;
}

.Bin_cart {
	cursor: pointer;
}

.Bin_notice1 {
	font-size: 22px;
	color: #111;
	margin-bottom: 1%;
	font-weight: bold;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

.Bin_margin {
	margin: 4.5% 0 4.5% 0;
}

.Bin_notice2 {
	font-size: 13px;
	color: #999;
	line-height: 200%;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

.Bin_notice3 {
	font-weight: bold;
	color: #111;
	font-size: 13px;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

.Bin_notice4 {
	color: #000;
	font-size: 13px;
	line-height: 200%;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

a:link {
	color: #777;
	text-decoration: none;
}

a:visited {
	color: #777;
	text-decoration: none;
}

a:hover {
	color: #777;
	text-decoration: none;
}

a {
	color: #777;
	text-decoration: none;
}

.Bin_review1 {
	float: left;
	width: 93%;
	color: #8f8f8f;
	font-size: 12px;
	font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

.Bin_review2 {
	float: right;
	background-color: #303030;
	color: #ffffff;
	text-align: center;
	font-size: 10px;
	border: 1px solid #101010;
	border-radius: 3px;
	cursor: pointer;
	padding: 0 2px;
	margin-bottom: 1%;
}

.Bin_review3 {
	border: 1px solid #dadada;
	padding: 15px 13px;
	margin-bottom: 8px;
}

.Bin_textarea1 {
	width: 100%;
	height: 10vw;
	border: 0;
}

.Bin_grade2 {
	display: inline-block;
	width: 10%;
	float: left;
    text-align: center;
    background: #252525;
    color: white;
    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
}

.Bin_grade3 {
	display: inline-block;
	width: 20%;
	float: right;
}

.Bin_review5 {
	display: inline-block;
	margin-right: 5%;
	cursor: pointer;
}

.Bin_review6 {
	display: inline-block;
	margin-right: 5%;
	cursor: pointer;
}

.Bin_review7 {
	display: inline-block;
	margin-right: 5%;
	margin-left: 1%;
}

.Bin_review8 {
	display: inline-block;
	width: 80%;
	margin-left: 1%;
}

.Bin_review9 {
	display: inline-block;
	width: 20%;
}

.Bin_line {
	display: inline-block;
}

.B_left {
	float: left;
	width: 50%;
}

.B_right {
	float: right;
	width: 50%;
	text-align: right;
}

.B_end_wirte {
	width: 100%;
	text-align: right;
	margin-bottom: 5%;
}

.B_write_form {
	border: solid 1px black;
	padding: 0.5% 3%;
	cursor: pointer;
}
</style>

<link rel="stylesheet" type="text/css"
	href="<%=ctxPath%>/jquery-ui-1.11.4.custom/jquery-ui.css" />
<script type="text/javascript"
	src="<%=ctxPath%>/jquery-ui-1.11.4.custom/jquery-ui.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
			$(".spinner").spinner();
			
			var topPrice = ${price};
			topPrice = topPrice.toLocaleString();
			$(".topPrice").text(topPrice);
			
			var totalPrice = ${price}*$(".spinner").val();
			totalPrice = totalPrice.toLocaleString();
			$(".totalPrice").text(totalPrice);
			
			var $input = $(".spinner"); //이놈이 오늘의 주인공 우편번호 input box!!   
			$(".spinner").on('input', function() {
				totalPrice = ${price}*$(".spinner").val();
				totalPrice = totalPrice.toLocaleString();
				$(".totalPrice").text(totalPrice);
			});
			
			$('.ui-icon-triangle-1-n, .ui-icon-triangle-1-s').click(function(){
				totalPrice = ${price}*$(".spinner").val();
				totalPrice = totalPrice.toLocaleString();
			    $(".totalPrice").text(totalPrice);	
			});
			
			$(".qnaTitle").click(function(){
				
				var board_num = $(this).prev().text();
				// alert(board_num);
				
				location.href="<%= request.getContextPath() %>/customer/customerQnAdetail.dog?board_num="+board_num ; 
				
			});
			
			
		});// ready

		function goCart() {
			 var frm = document.cartFrm;
			   var regExp = /^[0-9]+$/; // 숫자만 체크하는 정규표현식
			   var oqty = frm.oqty.value;
			   var bool = regExp.test(oqty);
			   
			   if(!bool) {
					alert("주문갯수는 1개 이상이어야 합니다.")
					frm.oqty.value() = "1";
					frm.oqty.focus();
					return;
			   }
			   
			   // 문자로 되어진 숫자가 들어온 경우
			   oqty = parseInt(oqty);
			   if(oqty < 1) {
				   alert("주문갯수는 1개 이상이어야 합니다.")
					frm.oqty.value = "1";
					frm.oqty.focus();
					return;
			   } 
			   
			   frm.method = "POST";
			   frm.action = "/Semi_Team1/purchase/purchaseCart.dog";
			   frm.submit();
		}
		
		function goWish() {
			 var frm = document.cartFrm;		   		   
			   frm.method = "POST";
			   frm.action = "/Semi_Team1/purchase/purchaseWish.dog";
			   frm.submit();
		}
		
		function goPurchase() {
			var frm = document.cartFrm;		   		   
			   frm.method = "GET";
			   frm.action = "/Semi_Team1/shop/orderDirect.dog";
			   					// 여기에 구매하기 URL이랑 이메일, 코드, 수량 
			   frm.submit();
		}

		function goQNAWRITE() {
			var frm = document.cartFrm;		   		   
			   frm.method = "GET";
			   frm.action = "/Semi_Team1/customer/customerQnAWrite.dog";
			   					// 여기에 구매하기 URL이랑 이메일, 코드, 수량 
			   frm.submit();
		}
		
		function goReview() {
		
			if( "${memvo}" != "") {
				
			var frm = document.reviewFrm;			   
			   frm.method = "POST";
			   frm.action = "/Semi_Team1/review/reviewWrite.dog";
			   					// 여기에 구매하기 URL이랑 이메일, 코드, 수량 
			   frm.submit();
			}
			
			else {
				alert("로그인을 해주세요!");
			}
		}
		
		function goGrade() {
			javascript:location.href="/Semi_Team1/purchase/purchaseContent.dog?prdcode="+${code}+"&reviewSort1=0#section3";
		}
		
		function goRecent() {
			javascript:location.href="/Semi_Team1/purchase/purchaseContent.dog?prdcode="+${code}+"#section3";
		}
</script>

<div style="width: 80%; margin: 0 auto;">
	
	<div style="padding-top:5%; overflow: hidden; display: flex;">
		<div style="float: left; text-align: center;" class="mainContent">
			<img style="width: 90%; margin: 0 3% 3% 3%;"
				src="/Semi_Team1/images/${thumb}">
		</div>
		<div style="float: right;" class="mainContent">
			<form name="cartFrm">
				<div class="contentTitle">${name}</div>
				<div style="text-align: left;" class="borderBottom">
					<div
						style="margin-right: 7.5%; display: inline-block; color: #969696; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-size: 14px;">판매가격</div>
					<div
						style="display: inline-block; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-size: 18px; font-weight: bold; color: #CD1313;">
						<span class="topPrice"></span>원
					</div>
				</div>
				<div style="text-align: left;" class="borderBottom">
					<div style="margin-bottom: 3%;">${name}</div>
					<div style="height: 20px;">
						<div
							style="display: inline-block; float: left; overflow: hidden; display: flex;">
							<input name="oqty" class="spinner" type="text" size="1" value="1"
								min="1" max="99" style="text-align: center; float: left;">
						</div>
						<div style="display: inline-block; float: right;">
							<span style="float: right;"><span class="totalPrice">${price}</span>원</span>
						</div>
					</div>
				</div>
				<div style="width: 100%; line-height: 300%;">
					<span
						style="float: left; width: 50%; font-size: 22px; color: #0e0e0e; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-weight: bold;">총
						상품 금액</span> <span
						style="text-align: right; float: right; width: 45%; font-size: 28px; color: #cd1313; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-weight: bold;"><span
						class="totalPrice"></span>원</span>
				</div>
				<div style="text-align: center; clear: both; margin-top: 20%;">
					<div class="Bin_order Bin_cart"
						style="border: 1px solid #da291c; background: #da291c; color: #fff;"
						onclick="goPurchase()">바로구매</div>
					<div class="Bin_order Bin_cart" onclick="goCart()">장바구니</div>
					<input type="hidden" name="pnum" value="${code}" />
					<div class="Bin_order Bin_cart" onclick="goWish()">관심상품</div>
				</div>
			</form>
		</div>
	</div>

	<div class="Bin_margin">
		<table>
			<tr>
				<td id="section1" class="cate3 container-fluid"><a
					href="#section1">상품상세</a></td>
				<td class="cate3 "><a href="#section2">배송/반품/교환/환불</a></td>
				<td class="cate3 ha_sort"><a href="#section3">상품후기 (${totalNum})</a></td>
				<td class="cate3"><a href="#section4">상품문의 (${qnaTotal})</a></td>
			</tr>
		</table>
	</div>
	<div>
		<c:forEach var="img" items="${content}" varStatus="i">
			<img style="width: 100%;" src="/Semi_Team1/images/${img.PHOTONAME}">
		</c:forEach>
	</div>
	<div class="Bin_margin">
		<table>
			<tr>
				<td class="cate3 "><a href="#section1">상품상세</a></td>
				<td id="section2" class="cate3 container-fluid"><a
					href="#section2">배송/반품/교환/환불</a></td>
				<td class="cate3 ha_sort"><a href="#section3">상품후기 (${totalNum})</a></td>
				<td class="cate3"><a href="#section4">상품문의 (${qnaTotal})</a></td>
			</tr>
		</table>
	</div>

	<div style="overflow: hidden; display: flex;">
		<div style="float: left; margin-right: 5%;" class="mainContent">
			<div class="Bin_notice1">배송안내</div>
			<div>
				<ul class="Bin_notice2">
					<li>평일 오후 2시 이전 결제완료 상품은 당일 출고됩니다.</li>
					<li>가장맛있는시간30일 제품은 생산 당일 오전 9시 이전 결제 주문 건까지 당일 출고됩니다.</li>
					<li>(단, 택배사의 사정에 따라 다소 지연될 수 있으며, 도서산간지역이나 천재지변, 택배물량이 많아지는 명절
						등 특수한 사항에는 2-5일정도 배송이 지연될 수 있으니 참고하여 주시기 바랍니다.)</li>
					<li>송장번호가 입력된 주문 건은 교환/취소가 불가하오니 상품을 받으신 후 고객센터로 연락주셔서 교환 또는
						환불 요청을 해주시기 바랍니다. (단, 왕복택배비는 고객님 부담입니다.)</li>
				</ul>
			</div>
		</div>
		<div style="float: right; margin-left: 5%;" class="mainContent">
			<div class="Bin_notice1">교환 & 반품 안내</div>
			<div class="Bin_notice1">080-850-0085</div>
			<div>
				<ul class="Bin_notice2">
					<li>상담시간 월 - 금 : 오전 9시 - 오후 6시00분 / 점심시간 : 오후 12시 - 1시</li>
					<li>상담시간 외(토요일,일요일,법정 공휴일 포함)에는 휴무로 상담업무가 불가능합니다. 게시판으로 문의주시면
						빠른 시일 내에 답변드리겠습니다.</li>
				</ul>
			</div>
			<div class="Bin_notice3">(!) 교환/반품이 불가능한 경우</div>
			<div>
				<ul class="Bin_notice2">
					<li>고객님의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우에 한합니다.</li>
					<li>포장을 개봉하였거나 포장이 훼손되어 상품가치가 감소한 경우에 한합니다.</li>
					<li>시간이 경과되어 재판매가 곤란할 정도로 상품의 가치가 상실된 경우에 한합니다.(냉장,냉동 제품 등)</li>
					<li>고객주문 확인 후 상품 제작에 들어가는 주문제작 상품일 경우에 한합니다.</li>
					<li>기타 전자상거래 등에서의 소비자 보호에 관한 법률이 정하는 소비자 청약철회 제한에 해당되는 경우에
						한합니다.</li>
				</ul>
			</div>
			<div class="Bin_notice3">(!) 제품을 교환 / 반품 하실 때의 배송비 비용</div>
			<div class="Bin_notice4">하림펫푸드 부담</div>
			<div>
				<ul class="Bin_notice2">
					<li>상품하자 등의 문제로 교환/반품을 하실 경우 고객센터로 직접 교환/반품 접수 후 도착한 택배사를 통해
						인도하여 주시면 해당상품을 재발송 혹은 주문취소 처리해 드리겠습니다.</li>
				</ul>
			</div>
			<div class="Bin_notice4">고객 부담</div>
			<div>
				<ul class="Bin_notice2">
					<li>단순 고객 변심에 의한 교환/반품인 경우 고객님께서 반품관련 왕복배송비를 부담하셔야 합니다.</li>
					<li>※유의사항 <br>반품 접수 절차 없이 임의로 반송할 경우, 반품 내용을 확인할 수 없으므로
						환불이 지연되거나 환불이 되지 않을 수 있습니다. 그러므로 반드시 절차에 따라 교환 및 반품하여 주시기 바랍니다.
					</li>

				</ul>
			</div>
		</div>
	</div>

	<div class="Bin_margin">
		<table>
			<tr>
				<td class="cate3 "><a href="#section1">상품상세</a></td>
				<td class="cate3 "><a href="#section2">배송/반품/교환/환불</a></td>
				<td id="section3" class="cate3 ha_sort container-fluid"><a
					href="#section3">상품후기 (${totalNum})</a></td>
				<td class="cate3"><a href="#section4">상품문의 (${qnaTotal})</a></td>
			</tr>
		</table>
	</div>
	<form name="reviewFrm" enctype="multipart/form-data">
		<div style="overflow: hidden; display: flex;">
			<div class="Bin_review1">
				<span style="font-weight: bold; color: black;">REVIEW</span> | 문의글
				혹은 악의적인 비방글은 무통보 삭제된다는 점 유의해주세요^^
			</div>
			<div class="Bin_review2" onclick="javascript:location.href='<%= request.getContextPath() %>/review/review.dog'" >후기게시판</div>
		</div>
		<div class="Bin_review3">
			<textarea name="content" class="Bin_textarea1"
				placeholder="리뷰를 남겨주세요."></textarea>
		</div>
		<div style="overflow: hidden; display: flex; margin-bottom: 5%;">
			<div style="width:30%; display: inline-block;">
				<input name="thumb" type="file" placeholder="+ 사진추가">
			</div>
			<div style="display: inline-block; width: 50%; margin-right: 10%;">
				<select name="grade" style="width: 100%; height: 3vw;">
					<option value="5">★★★★★ 아주 좋아요</option>
					<option value="4">★★★★☆ 맘에 들어요</option>
					<option value="3">★★★☆☆ 보통이에요</option>
					<option value="2">★★☆☆☆ 그냥 그래요</option>
					<option value="1">★☆☆☆☆ 별로에요</option>
				</select>
			</div>
			<input type="hidden" name="prdcode" value="${code}"> <input
				type="hidden" name="email" value="${email}">

			<div onclick="goReview()"
				style="text-align:center; float:right; width:12%; padding: 1%; cursor: pointer; font-weight: bold; font-size: 14px; color: white; background: #3f3f3f; display: inline-block;">리뷰
				등록하기</div>
		</div>
	</form>

	<div style="overflow: hidden; display: flex;">		
		<div style="float: left; display: inline-block; width: 50%;">
			<div class="Bin_grade2">★ ${lastGrade}</div>
			<div class="Bin_review7"> (${totalNum})</div>
		</div>
		<div style="text-align:right; float: right; display: inline-block; width: 50%;">			
			<div class="Bin_review5" onclick="goGrade()">평점순</div>
			<div class="Bin_review6" onclick="goRecent()">최신순</div>			
		</div>		
	</div>

	${contents}

	<div style="margin-top:2%; text-align: center;">${pageBar}</div>

	<div class="Bin_margin">
		<table>
			<tr>
				<td class="cate3"><a href="#section1">상품상세</a></td>
				<td class="cate3"><a href="#section2">배송/반품/교환/환불</a></td>
				<td class="cate3 ha_sort"><a href="#section3">상품후기 (${totalNum})</a></td>
				<td id="section4" class="cate3 container-fluid"><a
					href="#section4">상품문의 (${qnaTotal})</a></td>
			</tr>
		</table>
	</div>
	
	<div style="overflow: hidden; display: flex;">
		<div style="font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; color: #303030; font-size: 18px;" class="Bin_line B_left">Q&A</div>
		<div onclick="javascript:location.href='<%= request.getContextPath() %>/customer/customerQnA.dog'" style="cursor:pointer; font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-size: 11px; color: #8c8b8b;" class="Bin_line B_right">+More</div>
	</div> 
	<div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>NAME</th>
					<th>DATE</th>
				</tr>
			</thead>
			<tbody>
				${qnaTd}		
			</tbody>
		</table>
	</div>

	<div class="B_end_wirte">
		<span class="B_write_form" onclick="goQNAWRITE()">WRITE</span>
	</div>

</div>
<jsp:include page="../footer_dog.jsp" />
