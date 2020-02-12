<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<jsp:include page="../header.jsp" />
<link rel="stylesheet" href="/SaintLaura/css/payment.css?after">
<%-- <script src="<%=ctxPath%>/js_ysl/payment.js"></script> --%>
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<%--      contents  시작            --%>

<script type="text/javascript">
$(document).ready(function() {
	
	$(".smh_error").hide();

	//goEdit();
	
	$("#afterEditName").val($("#beforeEditName").text());
	$("#afterEditPost").val($("#beforeEditPost").text());
	$("#afterEditAddr1").val($("#beforeEditAddr1").text());
	$("#afterEditAddr2").val($("#beforeEditAddr2").text());
	$("#afterEditHp").val($("#beforeEditHp").text());
	
	$(".logoutMenu").click(function(){
	      
	      alert("로그아웃 되었습니다.");
	      location.href="logout.ysl";
	      
	});
	
	// 이름란이 공백이었을 경우 오류 
	$("#afterEditName").blur(function() {
		
		var afrterName = $(this).val();	
	if(afrterName == "") {
		// 입력하지 않거나 공백만 입력했을 경우
		$(this).parent().find("#name_error").show();
		$(":input").attr("disabled",true).addClass("bgcol"); 
		$(this).attr("disabled",false).removeClass("bgcol");
		$(this).focus();
	}
	else {
		// 공백이 아닌 글자를 입력했을 경우
		$(this).parent().find("#name_error").hide();
		$(":input").attr("disabled",false).removeClass("bgcol"); 
	}
	
	}); 
	
	// 우편번호 검색 
	$("#zipcodeSearchBTN").click(function(){
	
			new daum.Postcode({
	            oncomplete: function(data) {
	                var addr = '';
	                var extraAddr = '';

	                if (data.userSelectedType === 'R') {
	                    addr = data.roadAddress;
	                } else {
	                    addr = data.jibunAddress;
	                }

	                if(data.userSelectedType === 'R'){
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    $("#afterEditAddr2").val(extraAddr);
	                
	                } else {
	                	$("#afterEditAddr2").val('');
	                }

	                $("#afterEditAddr2").val(data.zonecode);
	                $("#afterEditAddr1").val(addr);
	                $("#afterEditAddr2").focus();
	            }
	        }).open();
		});
	
	// 주소가 공백이였을때 	
	$(".afterEditAddr").blur(function(){
		var afterEditAddr = $(this).val().trim();
		if(afterEditAddr == "") {
			$(this).parent().find("#addr1_error").show();
			$(":input").attr("disabled", true).addClass("bgcol");
			$(this).attr("disabled", false).removeClass("bgcol");
		}
		else {
			$(this).parent().find("#addr1_error").hide();
			$(":input").attr("disabled", false).removeClass("bgcol");
		}
	});	
	
	$(".afterEditAddr").blur(function(){
		var afterEditAddr = $(this).val().trim();
		if(afterEditAddr == "") {
			$(this).parent().find("#addr2_error").show();
			$(":input").attr("disabled", true).addClass("bgcol");
			$(this).attr("disabled", false).removeClass("bgcol");
		}
		else {
			$(this).parent().find("#addr2_error").hide();
			$(":input").attr("disabled", false).removeClass("bgcol");
		}
	});
	
	// 핸드폰 전화번호 유효성 검사.
		$("#afterEditHp").on('keydown', function(e){
			
		    // 숫자만 입력받기
		    var trans_num = $(this).val().replace(/-/gi,'');
			var k = e.keyCode;
						
			if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
			{
		  	    e.preventDefault();
			}
		    }).on('blur', function(){ // 포커스를 잃었을때 실행합니다.
		        if($(this).val() == '') return;

		        // 기존 번호에서 - 를 삭제합니다.
		        var trans_num = $(this).val().replace(/-/gi,'');
		      
		        // 입력값이 있을때만 실행합니다.
		        if(trans_num != null && trans_num != '')
		        {
		            // 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
		            if(trans_num.length==11 || trans_num.length==10) 
		            {   
		                // 유효성 체크
		                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		                if(regExp_ctn.test(trans_num))
		                {
		                    // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
		                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
		                    $(this).val(trans_num);
		                }
		                else
		                {   
			                $(this).parent().find("#hp_error").show();
			    			$(":input").attr("disabled", true).addClass("bgcol");
			    			$(this).attr("disabled", false).removeClass("bgcol");
		                    $(this).val("");
		                    $(this).focus();
		                }
		            }
		            else 
		            {
		            	$(this).parent().find("#hp_error").show();
		    			$(":input").attr("disabled", true).addClass("bgcol");
		    			$(this).attr("disabled", false).removeClass("bgcol");
		                $(this).val("");
		                $(this).focus();
		            }
		      }
		        else {
		        	$(this).parent().find("#hp_error").hide();
					$(":input").attr("disabled", false).removeClass("bgcol");
		        	
		        }
		  });  
	
          
	$("span.money").text();			
	
	
}); //$(document).ready(function()-----
			
	function goEdit() {
		
		$(".beforeEdit").css({'display':'none'});
		$(".afterEdit").css({'display':'flex'});
		
		$("#afterEditName").val($("#beforeEditName").text());
		$("#afterEditPost").val($("#beforeEditPost").text());
		$("#afterEditAddr1").val($("#beforeEditAddr1").text());
		$("#afterEditAddr2").val($("#beforeEditAddr2").text());
		$("#afterEditHp").val($("#beforeEditHp").text());
		
	}
	
	function finishEdit() {
		
		$(".beforeEdit").css({'display':'flex'});
		$(".afterEdit").css({'display':'none'});
		
		$("#beforeEditName").text($("#afterEditName").val());		
		$("#beforeEditPost").text($("#afterEditPost").val());
		$("#beforeEditAddr1").text($("#afterEditAddr1").val());
		$("#beforeEditAddr2").text($("#afterEditAddr2").val());
		$("#beforeEditHp").text($("#afterEditHp").val());
		
		
	}
	

					
	function goImportPopupOpen() {
	     /*
	      var cartno = $("#cartno").val();
	      var fk_pnum = $("#fk_pnum").val();
	      var oqty = $("#oqty").val();
	      var price = $("#price").text();
		  // alert(money);*/
		  
		  var price = $("#totalPriceforPay").text();
		
	      // 아임포트 결제 팝업창 띄우기
	      var url="/SaintLaura/paymentEnd.ysl?price="+price;
	      
	      window.open(url, "paymentEnd",
	                "left=350px, top=100px, width=820px, height=600px"); 
	   }
	 
	// 로그인된 회원의 cartno에서 회원(회원번호idx) 상품번호,구매수량을 가지고 온다. 
	function goPaymentUpdate(){
		
		var frm = document.afterEditFrm;
		frm.method = "POST";
		frm.action = "<%= request.getContextPath()%>/paymentUpdateLoginUser.ysl";
		frm.submit();
	}
	
	
		
</script>


<div class="Mycontainer">

	<div class="pay-session isLogged">	
		<span class="login-id" style="font-size: 10pt;" aria-label="이메일  ${(sessionScope.loginuser).email}으로 로그인하셨습니다">
		 ${(sessionScope.loginuser).email}
		</span>
		
		<div class="logout">    	
		<a class="logoutLink" href="javascript:void(0)">
		<span class="text" style="color: black;" class="logoutMenu">로그아웃</span>
		</a>
		</div>
	</div>
	
	<div class="pay-top">
		<img align="middle"  src="images/payment-logo.png"/>
	</div>
	
	<div class="pay-left col-xs-6 col-sm-7 cstm-col-md-4">
		
		<span id="pay-title">배송 주소</span>
		
		
		<div class ="payInfo beforeEdit" style="display: flex !important;">	 		
			<div id="deliveryInfo">
				<ul>
					<li class="subtitle">받는 사람</li>					
					<li class="contents"><span>이름</span><span class="beforeEditDetail" id="beforeEditName" name="beforeEditName">${(sessionScope.loginuser).name}</span></li>
					<li class="contents"><span>우편번호</span><span class="beforeEditDetail" id="beforeEditPost" name="beforeEditPost">${(sessionScope.loginuser).post}</span></li>
					<li class="contents"><span>주소</span><span class="beforeEditDetail" id="beforeEditAddr1" name="beforeEditAddr1">${(sessionScope.loginuser).addr1}</span></li>
					<li class="contents"><span>상세주소</span><span class="beforeEditDetail" id="beforeEditAddr2" name="beforeEditAddr2">${(sessionScope.loginuser).addr2}</span></li>				
				</ul>
			</div>
			
			<div id="myInfo">
				<ul>
					<li class="subtitle">연락처</li>
					<li class="contents"><span>이메일</span><span class="beforeEditDetail" id="beforeEditEmail" name="beforeEditEmail">${(sessionScope.loginuser).email}</span></li>
					<li class="contents"><span>전화번호</span><span class="beforeEditDetail" id="beforeEditHp" name="beforeEditHp">${(sessionScope.loginuser).hp1}${(sessionScope.loginuser).hp2}${(sessionScope.loginuser).hp3}</span></li>
					<li style="position:absolute; top:200px; left:480px; text-align: right;"><span class="text" id="beforeEdit" onclick="goEdit();" >수정</span></li>
				</ul>
			</div>
		</div>		
		
		
		<form name="afterEditFrm">
		<div class ="payInfo afterEdit">			
			<div id="deliveryInfo">
				<ul>
					<li class="subtitle">받는 사람</li>					
					<li class="contents"><span>이름</span><input type="text" id="afterEditName" class="afterEdit" name="afterEditName"/><span id="name_error" class="smh_error">이름을 입력하세요.</span></li>
					 <!-- 우편번호 찾기   -->
					<li class="contents"><img id="zipcodeSearchBTN" class="afterEdit" src="images/payment-post.gif" style="margin-left:62px; margin-bottom:4px; cursor:pointer;" /></li>
					<li class="contents"><span>우편번호</span><input type="text" id="afterEditPost"  name="afterEditPost"class="afterEdit"/><span id="post_error" class="smh_error">우편번호 형식이 아닙니다.</span></li>
					<li class="contents"><span>주소</span><input type="text" id="afterEditAddr1"  name="afterEditAddr1" class="afterEdit afterEditAddr"/><span id="addr1_error" class="smh_error">주소를 입력하세요.</span></li>
					<li class="contents"><span>상세주소</span><input type="text" id="afterEditAddr2" name="afterEditAddr2" class="afterEdit afterEditAddr"/><span id="addr2_error" class="smh_error">상세주소를 입력하세요.</span></li>				
				</ul>
			</div>			
			
			<div id="myInfo">
				<ul>
					<li class="subtitle">연락처</li>
					<li class="contents"><span>이메일</span><span>${(sessionScope.loginuser).email}</span></li>
					<li class="contents"><span>전화번호</span><input type="text" id="afterEditHp" name="afterEditHp"/><span id="hp_error" class="smh_error">유효하지 않은 전화번호 입니다.</span></li>
					<li style="position:absolute; top:200px; left:480px;  text-align: right;"><span class="text" onclick="finishEdit()">완료</span></li>
				</ul>
			</div>
		</div>	
		</form>
		
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
	                <span class="value" style="text-decoration: line-through;"></span>
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
	
	<div>
		<aside class="pay-right col-xs-6 col-sm-5 cstm-col-md-8">	
		<div class="cartInfo">
		<span id="pay-title">결제</span>
		</div>
		<section>
		<div class="cartInfo">
			<span class="subtitle">쇼핑백&nbsp;&nbsp;</span>
		</div>
		
<c:if test="${empty cartList }">
	<span>장바구니에 담긴 상품이 없습니다.</span>
</c:if>	
<c:if test="${not empty cartList }">
	<c:forEach var="list" items="${cartList}">
		<div class="payInfo">
			<div id="pay-img" style="width: 80	px; height: 130px;">
	        	<img src="images_Product/${list.pimage1 }" />
	        </div>
			<div class="pay-pro"> 
				<ul style="width: 150px;">
					<li><span>${list.pname}</span></li>				
					<li class="subtitle" style="margin-top: 30px;">컬러 : <span style="font-weight: normal;">${list.pcolor}</span>
					<li class="subtitle">수량 : <span style="font-weight: normal;">${list.oqty}</span></li>		
				</ul>
			</div> 
			<div class="pay-mini">
					<span class="contents"><span>₩</span><span class="price"><fmt:formatNumber value="${list.price}" pattern="###,###" /></span></span>
			</div>
		</div>
	</c:forEach>
</c:if>		
		
		
		
		

		</section>
		
		<section>
		<div class="pay-pri" >
			<c:set var = "sum" value = "0" />
				<c:forEach var="cart" items="${cartList }">
					<c:set  var= "sum" value="${sum + cart.price}" />
				</c:forEach>
		
			<ul>
				<li class="totalPayInfo totalPayInfo1">
				 <div class="contents value">
					<span>소계</span>
				 </div>
				 <div class="contents value value-right">
                    <span class="price">
                    <span class="currency">₩</span>
                    <span class="value" id="totalPriceforPay">${sum }</span>
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
                    <span class="money">${sum }</span>
       			    </span>       			      
   				 </div>
   				 <span class="subtitle taxLabel">(모든 세금과 관세 포함)</span> 
				</li> 
	    </ul>
	    </div>
		</section>
		<button class="login-input btn-default" id="pay-btn" style="color:white; margin: 7px 0 20px 0; height: 40px;"><a href="javascript:goImportPopupOpen();" class="goPaymentBtn">결제 하기</a></button>
		</aside>
			  
    </div>
           

</div>
</body>
</html>