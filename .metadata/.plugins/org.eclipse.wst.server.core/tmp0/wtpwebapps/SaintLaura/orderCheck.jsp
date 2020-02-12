<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<jsp:include page="header.jsp" />
<link rel="stylesheet" href="<%=ctxPath %>/css/orderCheck.css">
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
		<span class="contents">
			*배송지 수정은 배송준비단계에서만 가능합니다.
		</span>
		
		<div class="payDeliveryType">
			<span id="pay-title">주문 완료</span>
			<span class="contents contentHoliday" style="font-weight: bold;">고객님의 주문이 성공적으로 완료되었습니다.</span>
			<span class="contents">주문번호 :&nbsp;<span>021GYBS0104</span></span><br/>
			<span class="contents">
				곧 주문확인 이메일을 보내드립니다.<br/>
				배송 도착 시점에서 한달 이내에 고객센터를 통하여 반품하실 수 있습니다.
			</span>		
		</div>	
	
	</div>
	
	<div >
		<aside class="pay-right col-xs-6 col-sm-5 cstm-col-md-8">	
		<div class="cartInfo">
		<span id="pay-title">주문 상품</span>
		</div>
		<section>
		<div class="cartInfo">
			<span class="subtitle">주문상품&nbsp;&nbsp;(<span class='count subtitle'>2</span>)</span>
			<div><a><span class="text"></span></a></div>
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
		<button class="login-input btn-default login-btn" id="pay-btn" style="color:white; margin: 7px 0 20px 0; height: 40px;" onclick="openPayNav()">주문 목록</button>
		</aside>
    </div>
           

</div>
</body>
</html>