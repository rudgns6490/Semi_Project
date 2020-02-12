<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<jsp:include page="header.jsp" /> 

<link rel="stylesheet" href="css/productDetail.css">

<script src="<%=ctxPath %>/js_ysl/productDetail.js"></script>

<body id="main">
<div id="container-detail">
	<div class="basic"  >
		<ul style="margin:0%; padding: 0%;">
			<li class ="imageli"><img class="myimage" alt="product-image1" src="images_Product/female/clutch/ysl_F_clu_front_0.jpg"></li>
			<li class ="imageli"><img class="myimage" alt="product-image2" src="images_Product/female/clutch/ysl_F_clu_back_0.jpg"></li>
			<li class ="imageli"><img class="myimage" alt="product-image3" src="images_Product/female/clutch/ysl_F_clu_detailOne_0.jpg"></li>
			<li class ="imageli"><img class="myimage" alt="product-image4" src="images_Product/female/clutch/ysl_F_clu_detailTwo_0.jpg"></li>
		</ul>		
	</div>
	
	<div style="position: fixed; top:0px; right:10%; width: 300px;" >
		<h1 style="font-size: 20pt; font-weight: bold;">크링클드 퀄티드 토프 가죽 소재의 베이비 니키 체인 백</h1>
			<span class="price">
	        <span class="currency">₩</span>
	      	<span class="value" data-ytos-price="2575000">2,575,000</span>
	        </span>
		<div class="taxLabel">(모든 세금과 관세 포함)</div>
		
			<div>
                <h6 style="margin-bottom: 0; font-weight: bold;">제품설명 &amp; 상세정보</h6>
                <span class="arrow"></span>
                <h6 style="margin-top: 10px;">플랩, 가죽 커버드 YSL 이니셜, 두 가지 방식으로 착용할 수 있는 가죽으로 보강된 체인 숄더 스트랩 디테일의 백.</h6>
                
                <h6><a style="font-size: 8pt;" id="detail">세부정보보기</a></h6>
	                <div id="detail-product-info">
	                
		                <ul id="detailInfo">
		                	<li>색상 :&nbsp;<span>black</span></li>
		                	<li>크기 :&nbsp;<span>21.0  16.0  7.5</span>&nbsp;CM</li>
			                <li>소재 :&nbsp;<span>100% 송아지 가죽</span></li>
			                <li>제품 번호 :&nbsp;<span>5330370EN041723</span></li>
			                <li>원산지 : 이탈리아</li>
		               </ul> 
		               <a style="font-size: 8pt;" id="close">접기</a>
	                </div>   
        </div>
        
        <div class = "cart">
        	<button type="button" id="cartButton">쇼핑백에 담기</button>
        </div>
        
        <!-- Trigger/Open The Modal -->
       <div class = "package">
			<span id="myBtn">배송 및 반품 ></span>
	   </div> 
	   
	   <div class = "imagesBtn"> 
	   		<button class = "imageBtn" type="button"><img src="images/productDetail-wish-btn.png" /></button>
	   		<button class = "imageBtn" type="button"><img src="images/productDetail-call-btn.png" /></button>
	   		<button class = "imageBtn" type="button"><img src="images/productDetail-chat-btn.png" /></button>
	   </div>
	   
		<!-- The Modal -->
		<div id="myModal" class="modal">
		
		  <!-- Modal content -->
		  <div class="modal-content">
		      <div class="modal-header">
		      	<span class="close">&times;</span>
		      	<h2>배송 및 반품</h2>
		      </div>
		  	  <div style="font-size: 8pt;" class="modal-body">
			      <p style="font-size: 8pt;">YSL.COM에서의 모든 주문 상품은 시그니처 패키징으로 선물 포장 후, 종이 상자 안에 넣어 안전하게 배송됩니다.</p>
			      <img style=" width: 420px; margin: 0 auto;"  alt="패킹사진" src="images/productDetail-ysl_packagin_1.jpg">
				  <p></p>
			  <div>
				  	<div id="aaa" style="position: relative; width:100%; font-size: 9pt; margin: 0; padding: 0;" >
				  		<p style="margin: 0; padding: 0;">익스프레스 배송&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3~6영업일 소요&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="text-decoration: line-through;">₩25,000</span> 무료 </p>
				  	</div>
				  	<br/><br/>
				  	
				  <div><a style="text-decoration: underline;">자세히 읽기</a></div>
				  <br/>
				  
				<div>	  
					<p>YSL.COM에서 구매하신 모든 제품은 제품 수령일로부터 30일 이내에 반품하실 수 있습니다. 반품 절차는 다음과 같습니다.</p>
					
					<p>1. 제품 수령일로부터 30일 이내에 온라인 반품신청서를 작성하여 반품번호를 받으세요.<br/>
					2. 반품하시는 제품은 브랜드 태그와 포장재가 포함된, 제품 수령 시와 동일한 상태여야 합니다.<br/>
					3. 주문 소포에 반품 견적 송장(RETURNS PROFORMA INVOICE) 1부를 동봉하였습니다. 반품 시, 동봉된 이 서류를 복사 혹은 인쇄하여 총 5부를 작성하시기 바랍니다. 만약 이 서류에 누락된 부분이 있으면 소포는 세관을 통과할 수 없고 고객님께 반송됩니다.
					<a style="text-decoration: underline;">여기에서 반품 견적 송장 양식을 다운로드하실 수 있습니다.</a><br/>
					4. 용이한 배송을 위해 주문 소포에 동봉된 반송 라벨을 사용하세요.</p>
					
					<p>상품 판매 제한으로 인해 반품하실 모든 제품은 구매하신 국가와 동일한 국가에서 발송되어야 합니다.</p>
					
					<p>온라인 전용 제품은 온라인 반품신청서를 통해서만 반품해야 하며, 저희 부티크에서는 반품을 수락할 수 없습니다.</p>
					
					<p>반품 소포가 물류센터에 도착되면 반품을 처리하는 데 영업일로 3-7일(피크타임에 따라 차이가 있습니다)이 소요됨을 양해해 주시기 바랍니다. 
					반품하신 제품이 규정 조건에 부합되지 않는 경우 소포는 다시 고객님께 반송됩니다. 반품이 수락되면 환불 처리를 진행하고 고객님께 확인 이메일을 보내드립니다.</p>
					
					<p>교환은 동일한 제품이 다른 색상이나 사이즈로 재고가 있는 경우에만 가능합니다.</p>
					
					<a style="text-decoration: underline;">자세히 읽기</a>
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

	<div class="zoom" style="margin:0; padding:0; height:100%; width:100%; display:inline-block; ">
		<ul style="margin:0%; padding: 0%;">
			<li><img class="zoomImage" alt="zoom-product-image1" src="images/zoom-product-image1.jpg"/></li>
			<li><img class="zoomImage" alt="zoom-product-image2" src="images/zoom-product-image2.jpg"/></li>
			<li><img class="zoomImage" alt="zoom-product-image3" src="images/zoom-product-image3.jpg"/></li>
			<li><img class="zoomImage" alt="zoom-product-image4" src="images/zoom-product-image4.jpg"/></li>
			<li><img class="zoomImage" alt="zoom-product-image5" src="images/zoom-product-image5.jpg"/></li>
			<li><img class="zoomImage" alt="zoom-product-image6" src="images/zoom-product-image6.jpg"/></li>
		</ul>		
	</div>
	
</body>	
</html>
