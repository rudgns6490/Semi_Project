<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="/SaintLaura/css/payment.css?after">
<script src="<%=ctxPath%>/js_ysl/payment.js"></script>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

<%--      contents  시작            --%>

<script type="text/javascript">

	function goEdit() {
		
		$(".beforeEdit").css({'display':'none'})
		$(".afterEdit").css({'display':'flex'})
		
		$("#afterEditName").val($("#beforeEditName").text());
		$("#afterEditPost").val($("#beforeEditPost").text());
		$("#afterEditAddr1").val($("#beforeEditAddr1").text());
		$("#afterEditAddr2").val($("#beforeEditAddr2").text());
		$("#afterEditHp").val($("#beforeEditHp").text());
		
	}
	
	function finishEdit() {
		
		$(".beforeEdit").css({'display':'flex'})
		$(".afterEdit").css({'display':'none'})
		
		$("#beforeEditName").val($("#afterEditName").text());
		$("#beforeEditPost").val($("#afterEditPost").text());
		$("#beforeEditAddr1").val($("#afterEditAddr1").text());
		$("#beforeEditAddr2").val($("#afterEditAddr2").text());
		$("#beforeEditHp").val($("#afterEditHp").text());
		
	}
	
</script>


<div class="Mycontainer">

	<div class="pay-session isLogged">	
		<span class="login-id" style="font-size: 10pt;" aria-label="이메일 wjddb0125@naver.com으로 로그인하셨습니다">
		102khsemi@gmail.com 
		</span>
		
		<div class="logout">    	
		<a class="logoutLink" href="javascript:void(0)">
		<span class="text">로그아웃</span>
		</a>
		</div>
	</div>
	
	<div class="pay-top">
		<img align="middle"  src="images/payment-logo.png"/>
	</div>
	
	<div class="pay-left col-xs-6 col-sm-7 cstm-col-md-4">
		
		<span id="pay-title">배송 주소</span>
		
		<div class ="payInfo beforeEdit" style="display: flex;">	 		
			<div id="deliveryInfo">
				<ul>
					<li class="subtitle">받는 사람</li>					
					<li class="contents"><span>이름</span><span class="beforeEditDetail" id="beforeEditName">임소미</span></li>
					<li class="contents"><span>우편번호</span><span class="beforeEditDetail" id="beforeEditPost">12345</span></li>
					<li class="contents"><span>주소</span><span class="beforeEditDetail" id="beforeEditAddr1">서울시 행복가득한로 123길</span></li>
					<li class="contents"><span>상세주소</span><span class="beforeEditDetail" id="beforeEditAddr2">행복아파트 101동 101호</span></li>				
				</ul>
			</div>
			
			<div id="myInfo">
				<ul>
					<li class="subtitle">연락처</li>
					<li class="contents"><span>이메일</span><span class="beforeEditDetail" id="beforeEditEmail">102KHSEMI@GMAIL.COM</span></li>
					<li class="contents"><span>전화번호</span><span class="beforeEditDetail" id="beforeEditHp">01012345678</span></li>
					<li style="position:absolute; top:200px; left:480px; text-align: right;"><span class="text" onclick="goEdit();">수정</span></li>
				</ul>
			</div>
		</div>		
		
		<div class ="payInfo afterEdit">			
			<div id="deliveryInfo">
				<ul>
					<li class="subtitle">받는 사람</li>					
					<li class="contents"><span>이름</span><input type="text" id="afterEditName"/></li>
					<li class="contents"><img id="zipcodeSearch" src="images/b_zipcode.gif" style="margin-left:62px; margin-bottom:4px; cursor:pointer;" /></li>
					<li class="contents"><span>우편번호</span><input type="text" id="afterEditPost"/></li>
					<li class="contents"><span>주소</span><input type="text" id="afterEditAddr1"/></li>
					<li class="contents"><span>상세주소</span><input type="text" id="afterEditAddr2"/></li>				
				</ul>
			</div>
			
			<div id="myInfo">
				<ul>
					<li class="subtitle">연락처</li>
					<li class="contents"><span>이메일</span><span>abcd@gmail.com</span></li>
					<li class="contents"><span>전화번호</span><input type="text" id="afterEditHp"/></li>
					<li style="position:absolute; top:200px; left:480px;  text-align: right;"><span class="text" onclick="finishEdit()">완료</span></li>
				</ul>
			</div>
		</div>	
		
		<div class="payDeliveryType">
			<span id="pay-title">배송 방법</span>
			<span class="contents contentHoliday">물류센터 휴무일 및 공휴일에는 주문이 처리되지 않습니다.</span>
			<div class="payDeliveryType2">
				<div class="contents value">
	            	<span class="deliveryType subtitle">익스프레스</span>
	   		    </div>
	   		    <div class="contents value value-right" style="display: block;">
	                <span class="price">
	                <span class="currency">₩</span>
	                <span class="value" style="text-decoration: line-through;">25,000</span>
	   			    </span>
	   			    <span class="free">
	                <span class="value" data-ytos-price="0.0000">무료</span>
	    			</span>
	   		    </div>  
				<span class="contents" style="display: block;">3~6 영업일 소요</span> 
			</div>
			<div class="christmasGuaranteeOK">
			<span class="contents" style="display: block;">12월 24일 이내에 선물을 받으시려면 12월 15일 오후 8시(한국 시간)까지 주문하세요.</span>
			</div>			
		</div>	
	
	</div>
	
	<div >
		<aside class="pay-right col-xs-6 col-sm-5 cstm-col-md-8">	
		<div class="cartInfo">
		<span id="pay-title">결제</span>
		</div>
		<section>
		<div class="cartInfo">
			<span class="subtitle">쇼핑백&nbsp;&nbsp;(<span class='count subtitle'>2</span>)</span>
			<div><a><span class="text">수정</span></a></div>
		</div>
		<div class="payInfo">
			<div id="pay-img" style="width: 80	px; height: 130px;">
	        	<img src="images/black_bag.jpg" />
	        </div>
			<div class="pay-pro"> 
				<ul style="width: 150px;">
					<li><span>CARRE satchel in</span></li>
					<li><span>smooth leather</span></li>
					<li class="subtitle" style="margin-top: 30px;">컬러 : <span style="font-weight: normal;">RED VELVET</span>
					<li class="subtitle">수량 : <span style="font-weight: normal;">1</span></li>		
				</ul>
			</div> 
			<div class="pay-mini">
					<span class="contents"><span>₩</span><span class="price">2,455,000</span></span>
			</div>
		</div>
		<div class="payInfo">
			<div id="pay-img" style="width: 80	px; height: 130px;">
	        	<img src="images/black_bag.jpg" />
	        </div>
			<div class="pay-pro"> 
				<ul style="width: 150px;">
					<li><span>CARRE satchel in</span></li>
					<li><span>smooth leather</span></li>
					<li class="subtitle" style="margin-top: 30px;">컬러 : <span style="font-weight: normal;">RED VELVET</span>
					<li class="subtitle">수량 : <span style="font-weight: normal;">1</span></li>		
				</ul>
			</div> 
			<div class="pay-mini">
					<span class="contents"><span>₩</span><span class="price">2,455,000</span></span>
			</div>
		</div>
		</section>
		
		<section>
		<div class="pay-pri" >
			<ul>
				<li class="totalPayInfo totalPayInfo1">
				 <div class="contents value">
					<span>소계</span>
				 </div>
				 <div class="contents value value-right">
                    <span class="price">
                    <span class="currency">₩</span>
                    <span class="value">2,455,000</span>
       			    </span>
   				 </div>
				</li>
				
				<li class="totalPayInfo totalPayInfo2">
				 <div class="contents value">
					<span>배송 방법</span>
				 </div>
				 <div class="contents value delivery">
                    <span class="deliveryType">익스프레스</span>
   				 </div>
   				 <div class="contents value value-right">
                    <span class="price">
                    <span class="currency">₩</span>
                    <span class="value" style="text-decoration: line-through;">25,000</span>
       			    </span>
       			    <span class="free">
                    <span class="value" data-ytos-price="0.0000">무료</span>
        			</span>
   				 </div>   				 
				</li>
				 
				<li class="totalPayInfo totalPayInfo3">
				 <div class="contents value">
					<span>결제 방법</span>
				 </div>
				 <div class="contents value delivery">
                    <span class="deliveryType">신용카드</span>
   				 </div>  				 
				</li>
				
				<li class="totalPayInfo totalPayInfo4">
				 <div class="subtitle value totalPay">
					<span>총 결제 금액</span>
				 </div>
				 <div class="subtitle value value-right">
                    <span class="price">
                    <span class="currency">₩</span>
                    <span class="value">2,455,000</span>
       			    </span>       			      
   				 </div>
   				 <span class="subtitle taxLabel">(모든 세금과 관세 포함)</span> 
				</li> 
	    </ul>
	    </div>
		</section>
		<button class="login-input btn-default login-btn" id="pay-btn" style="color:white; margin: 7px 0 20px 0; height: 40px;" onclick="openPayNav()">결제 하기</button>
		</aside>
    </div>
           

</div>
</body>
</html>