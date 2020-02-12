<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<jsp:include page="../header_dog.jsp"/>
<title>통합장바구니</title>

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
		text-align: center;
		margin-top:50px;
	}
	
	#step_order_bar ol {
		display: table;
 		margin: 30px auto;
	}
	
	#step_order_bar li {
		list-style: none;
		float : left;
		text-align : center;
		width: 220px;
		font-size: 12pt;	
		color: #999;
		margin-right:10px;
		margin-left:10px;
	}
	
	.stepImg {
		 margin-left:30px;
	}
	
	.on {
		color:#9d6849 !important;
		width:190px !important;
		margin-right:5px !important;
	}    
	
	#step_order_bar {
		display: inline-block;
		text-align: center;
		width: 100%;
	}
	
	#step_order_bar li span {
	    display: inline-block;
	    width: 42px;
	    height: 42px;
	    margin-right: 12px;
	    border-radius: 50%;
	    background: #cfcfcf;
	    color: #fff;
	    font-size: 16px;
	    font-weight: bold;
	    text-align: center;
	    line-height: 42px;
	    letter-spacing: -1px;
	}
	
	.table {
		text-align: center;
		vertical-align: middle;
	}
	
	.table>tbody>tr>td {
		vertical-align: middle;
	}
	
	#cart_contents > thead > th {
		border-top: 2px solid #666;
		border-bottom: 1px solid #ccc;
	}
	
	.btnChange {
		margin:5px;
	}
	
	#priceBox1 {
		position:relative;
		background-color: #f8f8f8;
		text-align: right;
		border-top: #ececec 1px solid ;
		border-bottom: #ececec 1px solid;
		padding: 28px;
	}
	
	#priceBoxTitle {
		position: absolute;
   		top: 40%;
    	left: 30px;
    	font-weight: bold;
    	font-size: 12pt;
	}
	

	
	#totalPriceBox {
		border-top: 2px solid #666;
		font-weight: bold;
		font-size: 13pt;
		padding: 25px 30px;
		background-color: #f8f8f8;
	}
	
	#delMsg {
		font-size: 10pt;
		float:right;
		margin-top:4px;
	}
	
	button {	
		cursor: pointer;
		font-weight: bold;
	}
	
	#div_btn_check {
		text-align:left;
		margin: 10px 7px 20px 7px;
		padding: 10px 0;
	}
	
	#message {
		border: solid 1px #eaeaea;
		padding: 30px;
		font-size: 11pt;
		line-height: 160%;
		margin: 30px 0 90px;
	}
	
	#msgTitle {
		font-weight: bold;
		padding-bottom: 8px;
		padding-left:19px;
		font-size: 12pt;
	}
	
	#tbl_head th {
		border-top: 2px solid gray;
		text-align: center;
	}
	

	#div_btn_last {
		text-align: center;
		margin: 40px 60px 60px 60px;
	}
	
	#btn_next {
		background-color: #42362f;
		color: white;
	}
	
	.btn_last {
		width: 200px;
   		height: 50px;
   		margin:10px;
	}
	
	#btn_continue {
		background-color: #fff;
		border: solid 1px #42362f;
	}
	
	#div_btn_kakao {
		text-align: center;
		cursor: pointer;
	}
	
	*:focus {outline:none !important}
	
    
</style>

<script type="text/javascript">

	$(document).ready(function() {
		
	<%--	$(".spinner").spinner({
			spin: function(event, ui) {
				if(ui.value > 100) {
					$(this).spinner("value", 100);
					return false;
				}
				else if(ui.value < 0) {
					$(this).spinner("value", 0);
					return false;
				}
			}
		});// end of $(".spinner").spinner({});-----------------
	--%>
		
		//체크박스 - 카트 상품 전체선택
		$("input:checkbox[id=allcheck]").click(function(){
			
			var bool = $(this).is(":checked"); 
			$("input:checkbox[name=check]").prop("checked", bool); 
		});
		
		//체크박스 - 카트 상품 개별 선택+전체 선택--------------------------------------------------
		$("input:checkbox[name=check]").click(function(){	
	
			var flag=false;
			
			$("input:checkbox[name=check]").each(function(){
				 var bool = $(this).prop("checked"); 
				
			if(!bool) { 
				 $("input:checkbox[id=allcheck]").prop("checked", false);
				 flag = true;				 
				 return false; 
			 }		 	
			});	
			
			if(!flag){ 
				  $("input:checkbox[id=allcheck]").prop("checked",true);
			  }	
		});

		
		
		
	 }); //
	 
	 
	   function goEdit(basketnoID, oqtyID){
		 
		 var basketno = $("#"+basketnoID).val();
		 var oqty = $("#"+oqtyID).val();
	//	 console.log(basketno);
		 var regExp = /^[0-9]+$/g;
		 var bool = regExp.test(oqty);
		 
		 if(!bool){
			 alert("수정하시려면 0이상을 선택하세요.")
			 location.href="basket.dog";
			 return;
			 
		 } else if(oqty == '0'){
		 
			 
			 //	 goDel();
		 
		 
		 } else {
			 $.ajax({
					url:"<%= ctxPath%>/shop/basketEdit.dog",
					type:"POST",
					data:{"basketno":basketno, "oqty":oqty},
					dataType:"json",
					success:function(json){
						if(json.n == 1) {
							location.href= "<%= ctxPath%>/shop/basket.dog"; 
						}
					},
					error: function(request, status, error){
						alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
					}
				});
		 }
		 
	 }//goEdit-----
	 

	  function goDel(){
		 
		    var bool = confirm("정말로 선택하신 상품을 삭제하시겠습니까?");
		 
		    if(!bool) {
		    	alert("상품 삭제를 취소하셨습니다.");
		    }
		    
		    else {
			    var basketnoArr = new Array(); 
			    
			 	var len = $("input:checkbox[class=checkboxNo]").length;
			 	
			 	for(var i=0; i<len; i++) {
			 		var $target = $("input:checkbox[class=checkboxNo]").eq(i);
			 		var bool = $target.is(":checked");
			 		if(bool) {
			 			var basketno = $target.parent().parent().find(".basketno").val();
			 			basketnoArr.push(basketno);
			 		}
			 	}// end of for ---------------
			    
			 	if(basketnoArr.length == 0) {
			 		alert("삭제할 상품을 선택하세요");
			 		return;
			 	}
			 	else {
			 		var basketnoes = basketnoArr.join();
			 	//	alert(basketnoes);
			 		location.href="<%= ctxPath%>/shop/deleteBasket.dog?basketnoes="+basketnoes;
			 	}
		    }
	 }// goDel()---
	   
	 
	 function goSelectOrder(){
		 
		 var bool = confirm("정말로 선택하신 상품을 주문하시겠습니까?");
		 
		    if(!bool) {
		    	alert("상품 주문을 취소하셨습니다.");
		    }
		    
		    else {
		 
			 var basketnoArr = new Array(); 
			    
			 	var len = $("input:checkbox[class=checkboxNo]").length;
			 	
			 	for(var i=0; i<len; i++) {
			 		var $target = $("input:checkbox[class=checkboxNo]").eq(i);
			 		var bool = $target.is(":checked");
			 		if(bool) {
			 			var basketno = $target.parent().parent().find(".basketno").val();
			 			basketnoArr.push(basketno);
			 		}
			 	}// end of for ---------------
			    
			 	if(basketnoArr.length == 0) {
			 		alert("주문할 상품을 선택하세요");
			 		return;
			 	}
			 	else {
			 		var basketnoes = basketnoArr.join();
			//		alert(basketnoes);
			 		location.href="<%= ctxPath%>/shop/order.dog?basketnoes="+basketnoes;
			 	}
		 
		    }
	 }
	
	
	  function goAllOrder(){
		    
		 var basketValue = $("input[name=basketno]").length -1;
		 var basketnoArr = new Array(basketValue);
		 
		 for(var i=0; i<basketValue; i++){
			 basketnoArr[i] = $("input[name=basketno]")[i].value;
		//	 alert(basketnoArr[i]);
		 }
		 
		 var basketnoes = basketnoArr.join();
		 location.href="<%= ctxPath%>/shop/order.dog?basketnoes="+basketnoes;
		 
		 
	 }	
		  
		 
	
	
  
</script>

</head>
<body>
<div class="container">
	
	<p id="nav">Home > 장바구니 리스트</p>
	<div id="main_title"><h1 style="font-weight:bold;">장바구니</h1></div>
	
	<div id="cart">    
	      <div id="step_order_bar">
				<ol>
					<li class="on"><span style="background: #9d6849;">01</span>장바구니<img src="../images/basketOrder/step.png" class="stepImg"/> </li> 
					<li><span>02</span>주문서 작성/결제<img src="../images/basketOrder/step.png" class="stepImg"/> </li>
					<li style="text-align: left;"><span>03</span>주문완료</li>
				</ol>
		  </div>	
		  
		  <form name="basketGoOrderForm" method="POST" enctype="multipart/form-data">
		  <div>
		  <table class="table">
		    <thead id="tbl_head">
		      <tr>
		        <th><input type="checkbox" id="allcheck" value=""/></th>
		        <th colspan="3">상품명</th>				
				<th>수량</th>
				<th>총금액</th>
				<th>적립예정금액</th>
		      </tr>
		    </thead>
		    
		    <tbody id="tbl_body">
		    	<c:if test="${empty requestScope.basketList || requestScope.basketList == null }">
		    		<tr>
		    			<td colspan="7" style="padding-top: 40px;">장바구니가 비었습니다.</td>
		    		</tr>
		    	</c:if>
		    	
		    	<c:if test="${not empty requestScope.basketList && requestScope.basketList != null}">
		    		<fmt:parseNumber var="sumProduct" type="number" value="0" />
		    				    		
		    		<c:forEach var="basket" items="${basketList}" varStatus="status">
				    	<tr>
				        <td><input type="checkbox" name="check" class="checkboxNo" id="bnum${status.index}" /></td>
				        <td style="width:50px;"><img src="<%= request.getContextPath() %>/images/${basket.product_explanation}" width=80px; height=80px;/></td>
				        <td style="text-align:left;" colspan="2">${basket.product_name}</td>
				       
				        <td>
	<%--장바구니번호 --%>     	<input type="hidden" name="basketno" id="basketno${status.index}" class="basketno" value="${basket.basket_seq}"/>
				        
				        	<div class="btnChange"><input type="number" class="spinner" name="oqty" id="oqty${status.index}" value="${basket.quantity}" min="1" style="text-align:center; width:50px;"/></div>
							<div class="btnChange"><button type="button" class="btn btn-default" onclick="goEdit('basketno${status.index}', 'oqty${status.index}');">변경</button></div>
				        </td>
				        
				        <fmt:parseNumber var="sumProduct" type="number" value="${sumProduct + (basket.quantity * basket.product_price)}" />
				        <td><fmt:formatNumber value="${basket.product_price * basket.quantity}" pattern="###,###,###" />원</td>
				        <td><fmt:parseNumber integerOnly="true" value="${basket.quantity * basket.product_price * 0.01}" /></td>
				        
				 		<c:if test="${sumProduct > 25000}" ><c:set var="shippingFee" value="0"/></c:if>		   
						<c:if test="${sumProduct < 25000}" ><c:set var="shippingFee" value="2500"/></c:if>
				        </tr>
		        	</c:forEach>        
		       </c:if>
		    </tbody>
		       </table>   
		       	 <c:if test="${not empty requestScope.basketList && requestScope.basketList != null}">
		       	 	
							<div id="priceBox1">
							 	<span id="priceBoxTitle"> 주문 소계</span>
								상품가격  <span><fmt:formatNumber value="${sumProduct}" pattern="###,###,###"/></span>원                 
			               		<span> + 배송비 <span id="dlv_prc_cart"><fmt:formatNumber value="${shippingFee}" pattern="###,###,###"/></span>원</span>
			              	    <span>= <span class="totalPrice" style="color:orange;"><fmt:formatNumber value="${sumProduct+shippingFee}" pattern="###,###,###"/></span>원</span>	  
						   </div>        
			         
						   <div id="div_btn_check">
								<button type="button" class="btn btn-default" id="btn_order" onclick="goSelectOrder();">선택상품 주문하기</button>
								<button type="button" class="btn btn-default" id="btn_delete" onclick="goDel();">선택상품 삭제하기</button> 
								<div id="delMsg">주문 건 당 <span style="color:#9d6849;">25,000원</span> 이상 구매 시 무료배송 적용됩니다</div>
					 	  </div>
								
								
					  	  <div id="totalPriceBox">
							구매금액 총계               
				         	   <span class="totalPriceList" style="float:right;">상품가격  <span><fmt:formatNumber value="${sumProduct}" pattern="###,###,###"/></span>원                 
					     	   <span> + 배송비 <span id="dlv_prc_cart"><fmt:formatNumber value="${shippingFee}" pattern="###,###,###"/></span>원</span>
					     	   <span>= 총 구매 금액 :&nbsp;<span class="totalPrice" style="color:orange;"><fmt:formatNumber value="${sumProduct+shippingFee}" pattern="###,###,###"/></span>원</span></span>       
						  </div>
						
			
					 <div id="div_btn_last">
						<a href="<%= request.getContextPath() %>/purchase/purchase.dog"><button type="button" id="btn_continue" class="btn btn_last">쇼핑 계속하기</button></a> <%-- 구매하기 메뉴로 이동 --%>
						<button type="button" id="btn_next" class="btn btn_last" onclick="goAllOrder();">전체상품 주문</button>
					 </div>
					
					 <div id="div_btn_kakao" > <%-- 카카오페이 결제하기창 --%>
					 	<img src="../images/basketOrder/kakaopay.jpg" width="240px" height="70px" onclick="goAllOrder();"/>
					 </div>
			</c:if>
		
		 <div id="message">
			<div id="msgTitle">안내사항</div>
			<ul>
				<li>주문 건 당 <span style="color:#9d6849;">25,000원</span> 이상 구매 시 무료배송 적용됩니다.</li>
				<li>적립금 사용은 [주문서 작성/결제]에서 적용됩니다.</li>
			</ul>
		</div>
	 </div>
	 </form>
  </div>
  
</div>

<%-- 장바구니에 담긴 제품수량을 수정하는 form --%>
 <form name="updateOqtyFrm">
 	<input type="hidden" name="basketno" />
 	<input type="hidden" name="oqty" />
 </form>

<jsp:include page="../footer_dog.jsp"/>
