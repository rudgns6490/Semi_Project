<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String ctxPath = request.getContextPath(); %>

<jsp:include page="../header.jsp" />     

<link rel="stylesheet" href="css/cartList.css">

<script src="<%=ctxPath %>/js_ysl/cartList.js"></script>

<script type="text/javascript">


function delCart(cartno){
	
	var bool = confirm("쇼핑백에서 삭제하시겠습니까?");
	
	if(bool) {
		
		$.ajax({
			url:"/SaintLaura/cartDel.ysl",
			type:"POST",
			data:{"cartno":cartno},
			dataType:"JSON",
			success:function(json){
				if(json.n == 1) {
					location.href= "<%= request.getContextPath()%>/${goBackURL}"; 
				}
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		});
	}
	else {
		return;
	}
}


function oqtyEditPlus(cartno, oqty) {
	
	var bool = confirm("수량을 변경하시겠습니까?");
	if(bool) {
		$.ajax({
			url:"/SaintLaura/cartEditPlus.ysl",
			type:"POST",
			data:{"cartno":cartno,
				  "oqty":oqty},
			dataType:"JSON",
			success:function(json){
				
				if(json.n == 1) {
					location.href= "<%= ctxPath%>/${goBackURL}"; 
				}
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		}); 
	} 

	
}// end of function oqtyEditPlus(obj)-----------------

function oqtyEditMinus(cartno, oqty) {
	
	var bool = confirm("수량을 변경하시겠습니까?");
	if(bool) {
		$.ajax({
			url:"/SaintLaura/cartEditMinus.ysl",
			type:"POST",
			data:{"cartno":cartno,
				  "oqty":oqty},
			dataType:"JSON",
			success:function(json){
				
				if(json.n == 1) {
					location.href= "<%= ctxPath%>/${goBackURL}"; 
				}
			},
			error: function(request, status, error){
				alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
			}
		}); 
	} 

	
}// end of function oqtyEditMinus(obj)-----------------

function goPayment(cartList) {
	
	var frm = document.getElementById("goPay");
	var val = $("#pqty").val();
	
	if(val == 0){
		alert("품절 상품이 포함되어 있습니다.");
		return;
	}
	else{
	frm.method = "POST";
	frm.action = "/SaintLaura/payment.ysl";
	frm.submit();
	}
}

function goten() {
	
	alert("죄송합니다. 장바구니엔 10개까지 담을 수 있습니다.");
}

function logOut() {
	
	if(confirm("로그아웃 하시겠습니까?") == true ){
		location.href="/SaintLaura/logout.ysl"
	}
	else{
		return;
	}
}


</script>

<body>
	<div id="cart-container">
		<%-- header --%>
			<c:if test="${totalCountCart != 0}">
			<div class="cart-header">쇼핑백 (${totalCountCart})</div>
			</c:if>
			<c:if test="${totalCountCart == 0}">
			<div class="cart-header">쇼핑백</div>
			</c:if>
			<div class="email-logOut">
				<span id="loginEmail">${(sessionScope.loginuser).email}</span><a onclick="logOut()" id="logOut">로그아웃</a>
			</div>
		
		<aside>
		<div class="cart-rightSide1">
			<div style="float: left; margin: 20px 0 0 20px;">
				<span style="font-size: 8pt;">배송 방법</span><br/>
				<span style="font-size: 8pt; margin-top: 0">총 결제 금액</span>
			</div>
			<div class="item-price-final">
				<span style="text-decoration: line-through;">₩ 25,000</span><span>무료</span><br/>
				<span>₩ <fmt:formatNumber value="${ price.totalPrice }" pattern="###,###" /></span><br/>
				<span>(모든 세금과 관세 포함)</span><br/><br/><br/>
			</div>
		
			<c:if test="${cartvo.item.pqty == 0}">
				<button type="button" class="goPayment" onclick="javascript:goPayment();">주문 진행</button>
				<input type="hidden" name="cartno" class="cartno${status.index}" value="${cartList}"/>
			</c:if>
		 	<c:if test="${cartvo.item.pqty != 0}">
				<button type="button" class="goPayment" onclick="javascript:goPayment();">주문 진행</button>
				<form id="goPay" name="goPay">
					<input type="hidden" name="cartno" class="cartno${status.index}" value="${cartList}"/>
				</form>
			</c:if>	
			</div>
			<div class="cart-rightSide2">
				<div class="cart-rightSide2-contents">
					<h6><a style="font-size: 8pt;" id="customer-service-detail">고객서비스 +</a></h6>	
	                <div style="font-size: 8pt;" id="customer-service">
	                	<ul>
		                	<li><a href="<%=ctxPath %>/customerService.ysl">Email</a></li>
		                	<li><a href="<%=ctxPath %>/customerService.ysl">전화 +82 1092470229</a></li>
			                <li>월요일~토요일, 오전 10시30~오후 10시</li>
			                <li></li>   
		               	</ul> 
	                </div>
				</div>
				
				<div class="cart-rightSide2-contents">
					<h6><a style="font-size: 8pt;" id="delivery-service-detail">배송 방법 +</a></h6>	
	                <div style="font-size: 8pt;" id="delivery-service">
	                	<ul>
		                	<li>익스프레스  -  무료</li>
			                <li>3~6 영업일 소요</li>
			                <br/>
			                <li>YSL.COM에서의 모든 주문 상품은 시그니처 패키징으로 선물 포장 후, 종이 상자 안에 넣어 안전하게 배송됩니다.</li>
		               	</ul> 
		               	
	                </div>
				</div>
				
				<div class="cart-rightSide2-contents">
					<h6><a style="font-size: 8pt;" id="payment-service-detail">결제 방법 +</a></h6>	
	                <div style="font-size: 8pt;" id="payment-service">
	                	<ul>
		                	<li>신용카드</li>
			                <li></li>
			                <li></li>    
		               	</ul>
	                </div>
				</div>
				
				<div class="cart-rightSide2-contents" style="margin: 20px;">
					<h6><a style="font-size: 8pt;" id="return-service-detail">반품 정책 +</a></h6>	
	                <div id="return-service" >
	                	
		                	<p>당사는 편리한 반품 서비스를 제공해 드립니다. 주문 배송일로부터 30일 이내 소포에 포함되어 있는 UPS 라벨을 사용하여 반송하시면 됩니다.
		                	</p>
		                	<p>온라인 전용 제품은 온라인 <a>반품신청서</a>를 통해서만 반품해야 하며, 저희 부티크에서는 반품을 수락할 수 없습니다.
							11월 18일부터 주문하여 12월 23일까지 배송 완료된 모든 상품은 내년 1월 22일까지 반품신청서를 작성하고 소포를 반송하여 반품하실 수 있습니다. 12월 24일 이후 배송된 주문에 대해서는 기존의 반품 정책에 명시된 30일의 반품 기간이 적용됩니다.</p>
		               	<%-- <a style="font-size: 8pt;" id="closeHide4">반품 정책 -</a> --%>
	                </div>
				</div>
				
			</div>
		</aside>
		
		<%-- contents --%>
		<c:if test="${cartList != null && not empty cartList}">
	   	   	  
	       <c:forEach var="cartvo" items="${cartList}" varStatus="status">
			<div class="cart-contents" >
				<div>
					<a href="/SaintLaura/productDetail.ysl?pnum=${cartvo.item.pnum}">
						<img class="cart-images" alt="cartimage" src="images_Product/${cartvo.item.pimage1}">
					</a>
					<div class="item-info">
						<div class="item-name">
						
							<a href="/SaintLaura/productDetail.ysl?pnum=${cartvo.item.pnum}">
								<span style="text-align: left;">${cartvo.item.pname}</span>
							</a> <%--   --%>
							<br/>
							<div class="item-color">
								<c:if test="${cartvo.item.pqty == 0}">
									<span>해당 제품은 품절 상태입니다.</span>
									<input type="hidden" name="pqty" id="pqty" value="${cartvo.item.pqty}"/>
								</c:if>
								<c:if test="${cartvo.item.pqty != 0}">
									<span>컬러 : ${cartvo.item.pcolor}</span><br/>
									<span>수량 : 
									<c:if test="${cartvo.oqty != 1}">
										<button class="plus_minus Minus" type="button" onclick="javascript:oqtyEditMinus('${cartvo.cartno}','${cartvo.oqty}')">-</button>
									</c:if>
									<c:if test="${cartvo.oqty == 1}">
										<button class="plus_minus Minus" type="button" onclick="javascript:delCart('${cartvo.cartno}')">-</button>
									</c:if>
											${cartvo.oqty}
									<c:if test="${totalCountCart < 10}">		
										<button class="plus_minus Plus" type="button" onclick="javascript:oqtyEditPlus('${cartvo.cartno}','${cartvo.oqty}');">+</button>
									</c:if>
									<c:if test="${totalCountCart == 10}">		
									 	<button class="plus_minus Plus" type="button" onclick="javascript:goten('${cartvo.cartno}');">+</button>
									</c:if>
									</span>
								</c:if>
							</div>
						</div>
						
						<div class="item-price">
							<span>₩ <fmt:formatNumber value="${cartvo.item.price}" pattern="###,###" /></span><br/>
							<span>(모든 세금과 관세 포함)</span><br/><br/><br/>
							<form name="delCartFrm">
								<button class="item-delete-btn" onclick="delCart('${cartvo.cartno}');">삭제</button>
								<input type="hidden" name="cartno" class="cartno${status.index}" value="${cartvo.cartno}" />
							</form>
						</div>
					</div>
				</div>
			</div>
		 </c:forEach>
	   </c:if>
	   
	   <c:if test="${cartList == null && empty cartList}">
	   		<div class="cart-contents">
	   			<div style="width: 100%; text-align: center; font-size: 8pt;"><br/><br/><br/><br/><br/><br/><br/><br/>쇼핑백이 비었습니다.<br/><a href="<%= ctxPath %>/productList.ysl">쇼핑하러 가기</a><br/><br/><br/><br/><br/><br/></div>
	   		</div>
	   </c:if>
		
		
		<div class="cart-contents" >
			<div style="float: left; margin: 20px 0 0 20px;">
				<h5 style="font-size: 8pt;">총 결제 금액</h5>
			</div>
			<div class="item-price-final">
				<span>₩ <fmt:formatNumber value="${ price.totalPrice }" pattern="###,###,###" /></span><br/>
				<span>(모든 세금과 관세 포함)</span><br/><br/><br/>
			</div>
			<div style="border: solid 1px #f2f2f2; border-top: none; border-bottom: none;">
				<button type="button" class="goPayment" onclick="javascript:goPayment();" >주문 진행</button>
			</div>
		</div>
	</div>
	
	

</body>

</html>





