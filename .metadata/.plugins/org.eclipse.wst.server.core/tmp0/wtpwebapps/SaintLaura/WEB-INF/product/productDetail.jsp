<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String ctxPath = request.getContextPath(); %>

<jsp:include page="../header.jsp" /> 

<link rel="stylesheet" href="css/productDetail.css">

<script src="<%=ctxPath %>/js_ysl/productDetail.js"></script>

<script>
	function goCart(pnum, pqty) {
		// pnum =장바구니에 담을 제품번호
		
		var frm = document.cartFrm;
		
		if(confirm("쇼핑백에 추가하시겠습니까?") == true){
			frm.method = "POST";
			frm.action = "/SaintLaura/cartAdd.ysl";
			frm.submit();
		}
		else {
			return;
		}
	}
	
	function soldOut(){
		
		alert("해당 상품은 품절상태입니다.");
	}
	
</script>


<body id="main">
<div id="container-detail">
	<div class="basic" >
		<ul style="margin:0%; padding: 0%;">
			<li class ="imageli"><img class="myimage" alt="product-image1" src="images_Product/${pvo.pimage1}"></li>
			<li class ="imageli"><img class="myimage" alt="product-image2" src="images_Product/${pvo.pimage2}"></li>
			<li class ="imageli"><img class="myimage" alt="product-image3" src="images_Product/${pvo.pimage3}"></li>
			<li class ="imageli"><img class="myimage" alt="product-image4" src="images_Product/${pvo.pimage4}"></li>
		</ul>		
	</div>
	
	<div style="position: fixed; top:0px; right:10%; width: 300px;" >
		<h1 style="font-size: 20pt; font-weight: bold;">${pvo.pname}</h1>
			<span class="price">
	        <span class="currency">₩</span>
	      	<span class="value" ><fmt:formatNumber value="${pvo.price}" pattern="###,###" /></span>
	        </span>
		<div class="taxLabel">(모든 세금과 관세 포함)</div>
		
			<div>
                <h6 style="margin-bottom: 0; font-weight: bold;">제품설명 &amp; 상세정보</h6>
                <span class="arrow"></span>
                <h6 style="margin-top: 10px;">${pvo.pcontent}</h6>
                
                <h6><a style="font-size: 8pt; color: black;" id="detail">세부정보보기</a></h6>
	                <div id="detail-product-info">
	                
		                <ul id="detailInfo">
		                	<li>색상 :&nbsp;<span>${pvo.pcolor}</span></li>
		                	<li>크기 :&nbsp;<span>${pvo.psize}</span></li>
			                <li>소재 :&nbsp;<span>${pvo.pmaterial}</span></li>
			                <li>제품 번호 :&nbsp;<span>${pvo.pnum}</span></li>
			                <li>원산지 : 이탈리아</li>
		               </ul> 
		               <a style="font-size: 8pt; color: black;" id="close">접기</a>
	                </div>   
        </div>
        
        <div class = "cart" style="margin-top: 50px;">
	        <form name="cartFrm">
	        <c:if test="${pvo.pqty == 0}">
	        	<button type="button" class="cartButton" onclick="javascript:soldOut();" >품절</button>
	        </c:if>
	        <c:if test="${pvo.pqty != 0}">                    
	       		<button type="button" class="cartButton" onclick="javascript:goCart('${pvo.pnum}');" >쇼핑백에 담기</button> 
	       		<input type="hidden" name="pqty" value="${pvo.pqty}" />
	        	<input type="hidden" name="pnum" value="${pvo.pnum}" />
				<input type="hidden" name="price" value="${pvo.price}" />
				<label for="spinner" style="display: none"></label>
  				<input id="spinner"  style="display: none" name="oqty" value="1">
				<input type="hidden" name="sumtotalprice" />
				
				<input type="hidden" name="goBackURL" value="${goBackURL}" /> 
	         </c:if>
	        </form>
        </div>
        
         <%-- 배송 및 반품 --%>
        <%-- Trigger/Open The Modal --%>
       <div class = "package">
			<span id="myBtn">배송 및 반품 ></span>
	   </div> 
	   
	   <div class = "imagesBtn">
	   		<form name="wishFrm"> 
	   		<button class = "imageBtn love" id="wishBtn" type="button">
	   			<img id="loveImage1"src="images/productDetail-wish-btn.png" onmouseover="this.src='images/productDetail-wish2-btn.png';" onmouseout="this.src='images/productDetail-wish-btn.png'; " onClick="wishListAdd('${pvo.pnum}');"/>
	   			<img id="loveImage2"src="images/productDetail-wish2-btn.png" "/>
	   		</button>
	   		<button class = "imageBtn" id="callBtn" type="button" onclick="javascript:location.href='<%=ctxPath%>/customerService.ysl'"><img src="images/productDetail-call-btn.png" /></button>
	   		<button class = "imageBtn" id="chatBtn" type="button" onclick="javascript:location.href='<%=ctxPath%>/customerService.ysl'"><img src="images/productDetail-chat-btn.png" /></button>
	   		<input type="hidden" name="pnum" value="${pvo.pnum}" />
	   		</form>
	   </div>
	   
		<%-- The Modal --%>
		<div id="myModal" class="modal">
		
		  <%-- Modal content --%>
		  <div class="modal-content">
		      <div class="modal-header">
		      	<span class="close">&times;</span>
		      	<h2>배송 및 반품</h2>
		      </div>
		  	  <div style="font-size: 8pt;" class="modal-body">
			      <p style="font-size: 8pt;">YSL.COM에서의 모든 주문 상품은 시그니처 패키징으로 선물 포장 후, 종이 상자 안에 넣어 안전하게 배송됩니다.</p>
			      <img style=" width: 420px; margin: 0 auto;"  alt="packPhoto" src="images/productDetail-ysl_packagin_1.jpg">
				  <p></p>
			  <div>
				  	<div id="aaa" style="position: relative; width:100%; font-size: 9pt; margin: 0; padding: 0;" >
				  		<p style="margin: 0; padding: 0;">익스프레스 배송&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3~6영업일 소요&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="text-decoration: line-through;">₩25,000</span> 무료 </p>
				  	</div>
				  	<br/><br/>
				  	
				  <div><a style="text-decoration: underline; color: black;" onclick="javascript:location.href='<%=ctxPath%>/customerService.ysl'">자세히 읽기</a></div>
				  <br/>
				  
				<div>	  
					<p>YSL.COM에서 구매하신 모든 제품은 제품 수령일로부터 30일 이내에 반품하실 수 있습니다. 반품 절차는 다음과 같습니다.</p>
					
					<p>1. 제품 수령일로부터 30일 이내에 온라인 반품신청서를 작성하여 반품번호를 받으세요.<br/>
					2. 반품하시는 제품은 브랜드 태그와 포장재가 포함된, 제품 수령 시와 동일한 상태여야 합니다.<br/>
					3. 주문 소포에 반품 견적 송장(RETURNS PROFORMA INVOICE) 1부를 동봉하였습니다. 반품 시, 동봉된 이 서류를 복사 혹은 인쇄하여 총 5부를 작성하시기 바랍니다. 만약 이 서류에 누락된 부분이 있으면 소포는 세관을 통과할 수 없고 고객님께 반송됩니다.
					<br/>
					4. 용이한 배송을 위해 주문 소포에 동봉된 반송 라벨을 사용하세요.</p>
					
					<p>상품 판매 제한으로 인해 반품하실 모든 제품은 구매하신 국가와 동일한 국가에서 발송되어야 합니다.</p>
					
					<p>온라인 전용 제품은 온라인 반품신청서를 통해서만 반품해야 하며, 저희 부티크에서는 반품을 수락할 수 없습니다.</p>
					
					<p>반품 소포가 물류센터에 도착되면 반품을 처리하는 데 영업일로 3-7일(피크타임에 따라 차이가 있습니다)이 소요됨을 양해해 주시기 바랍니다. 
					반품하신 제품이 규정 조건에 부합되지 않는 경우 소포는 다시 고객님께 반송됩니다. 반품이 수락되면 환불 처리를 진행하고 고객님께 확인 이메일을 보내드립니다.</p>
					
					<p>교환은 동일한 제품이 다른 색상이나 사이즈로 재고가 있는 경우에만 가능합니다.</p>
					
					<a style="text-decoration: underline; color: black;" onclick="javascript:location.href='<%=ctxPath%>/customerService.ysl'">자세히 읽기</a>
					<br/><br/><br/><br/><br/><br/>
				</div>
				</div>
			    <div class="modal-footer">
			      <h2></h2>
			    </div>
			  </div>
			</div>
		</div>
	</div>
</div>

	<div class="zoom" style="margin:0; padding:0; height: 100%; width: 100%; display:inline-block; ">
		<ul style="margin:0%; padding: 0%;">
			<li><img class="zoomImage" alt="zoom-product-image1" src="images_Product/${pvo.pimage1}"/></li>
			<li><img class="zoomImage" alt="zoom-product-image2" src="images_Product/${pvo.pimage2}"/></li>
			<li><img class="zoomImage" alt="zoom-product-image3" src="images_Product/${pvo.pimage3}"/></li>
			<li><img class="zoomImage" alt="zoom-product-image4" src="images_Product/${pvo.pimage4}"/></li>
		</ul>		
	</div>
	
</body>	
</html>

