<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String ctxPath = request.getContextPath();
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    
<jsp:include page="../header.jsp"/>


<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>


/*------------------------- 상품 상세페이지 ------------------------------------------*/

/*------------- 상품 상세페이지의 body ------------*/
.maincontainer { 
	background-color: #f2f2f2 !important;	
	font-family: 'Roboto', sans-serif;
	
	min-width:1400px;
	width:100%;
	margin:0 auto;
	padding: 150px 0 50px; 
} 

div.detailProduct_maincontainer {   /* 상품 상세 페이지 */ 
	background-color: white;
	width : 1320px;
	margin : 0 auto;
	padding : 40px;
	
}

.Product_detailContainer{
	
	
	border: solid 0px yellow;
	width: 500px;
	float: right;
	
}
.col-md-7{
	border: solid 0px green;
	width:700px;
	height:438px;
	float: left;
}

.detailProduct_container{
	border: solid 0px blue;
	width: 1320px;
	height: 500px;
	margin-bottom: 40px;
	}


#myDetailProductImg{ /*썸네일상품 이미지*/
	
	border: solid 0px red;
	width:500px;
	height:338px; 
	float: right;
}


/* The Modal (background) */
.myDetailModal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) : modal안의 내용물 (상품 이미지) */
.myDetailmodal-content {
  margin: auto;
  display: block;
  width: 80%;
  max-width: 1000px;
}

.myDetailmodal-content:hover{
	cursor: pointer;
}

/* The Close Button (modal 창을 닫는 버튼)*/
.myDetailclose {
	  position: absolute;
	  right: 35px;
	  color: #bbb;
	  font-size: 40px;
	  font-weight: bold;
	  transition: 0.3s;
	}
.myDetailclose:hover, .myDetailclose:focus {
  color: #FAFAFA;
  text-decoration: none;
  cursor: pointer;
}


.detail_title {
	
	font-size: 20px;
    color: #111;
    font-weight: 700;
    padding-bottom: 6px;	
}


.productHeader {
	padding: 15px 5px 1px 9px;
    margin: 0 0 10px;
    font-size: 20px;
    color: #111;
    font-weight: 400;
    word-break: break-all;
    position: relative;
    border-top: 1px solid #111;
    border-bottom: 1px solid #e8e8e8;
}

.productDetail00 {
	font-size: 13px;
    color: #999999;
}

/*-------------------- 
<detailTable>
상품요약정보	26차 재입고 완료 되었습니다.
판매가	58,000원
 ------------------------------*/

#detailTable > tbody > tr > td {
	padding-bottom: 10px;
}

#detailTable > tbody > tr:nth-child(1) > td > span { /*상품요약정보	26차 재입고 완료 되었습니다.*/
	font-size:13px;
	color:#999999;
}

#detailTable > tbody > tr:nth-child(2) > td > span { /*판매가	58,000원*/
	font-size:16px;
	color:#333333;
	font-weight:bold;
}

#detailTable > tbody > tr > td:nth-child(1) {
	width: 150px;
}

/* ------------------상품 상세 페이지에서 (최소구매수량 1개 이상) / 수량을 선택해주세요! 부분  */

 div.col-md-5 > p:nth-child(3){ /*(최소구매수량 1개 이상)*/
	font-size:12px;
	color:gray; 
	padding-top:15px; 
	border-top:solid 1px #e6e6e6;
}

 div.col-md-5 > p:nth-child(4) { /*수량을 선택해주세요!*/
	font-size:12px;
	color:red;
}

/*-----------총 상품금액 (수량) : 58,000원(1개) 부분 --------------*/
 div.col-md-5 > div:nth-child(5).DetailtotalPrice{
 margin: 10px 0; 
 padding:10px 0; 
 border-top:solid 1px gray; 
 border-bottom: solid 1px #BCBCBC;
}

div.DetailtotalPrice span.detailedProductName{
 font-size:12px;
 color:#555555;
}

div#totalPrice strong {
	font-size: 12px;
	-webkit-font-smoothing: subpixel-antialiased;
	font-variant-ligatures: none;
	color: #353535;
}

div#totalPrice em {
	-webkit-font-smoothing: subpixel-antialiased;
	font-variant-ligatures: none;
	color: #000;
	font-style: normal;
	font-size: 21px;
}

div#totalPrice span {
	font-size: 12px;
	-webkit-font-smoothing: subpixel-antialiased;
	font-variant-ligatures: none;
	color: #000;
}

input#quantity {
	width: 30px; 
	height: 18px; 
	border: 1px solid #e6e6e6;  
}

span.quantity_price {
	font-weight :bold; 
	font-size:12pt;
}

/*---- 상품 상세페이지 ~ 구매하기 버튼 */


#detailBuy_buttons{
	border: solid 0px orange;

}

#buyBtn { /* buy 버튼*/
 	  background-color: black;
	  border: none;
	  color: white;
	  width : 240px;
	  height : 42px;
	  text-align: center;
	  display: inline-block;
	  font-size: 12px;
	  border-radius: 2px;
	  letter-spacing: 3px;
	  cursor: pointer;
	  
	  margin: 2px 2px;
	  margin-bottom: 10px;
	  margin-top: 20px;
}


div#detailBuy_buttons .button2 {
	border: none;
	width : 240px;
	height : 40px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 2px 2px;
	border-radius: 2px;
	background: #f4f4f4;
	font-size: 12px;
	letter-spacing: 3px;
	color: #222;
	cursor: pointer;
	text-decoration: none;
	outline: none;
	transition: all .3s ease-out .01s;
}

div#detailBuy_buttons .button2:hover {
	color: #fff;
	background: #222;
}

.col-md-12{
	width:1200px; 
	margin: 0 auto;

}

.col-md-12 img{
	width:100%;

}

#detailTopBtn {
	display: none;
	position:fixed;
	bottom:150px;
	right:80px;
	width: 40px;
	height: 40px;
	
	text-align:center;
	width: 35px;
    height: 35px;
    text-align: center;
    font-size: 20px;
    color: #d3d3d3;
    border: 0;
    cursor: pointer;
    border: 2px solid #d3d3d3;
    border-radius: 50%;
    background: #fff;
    transition: color .3s ease-out .01s,background-color .3s ease-out .01s;
}

#detailBotBtn {
	display: none;
	position:fixed;
	bottom:111px;
	right:80px;
	width: 40px;
	height: 40px;
	
	text-align:center;
    width: 35px;
    height: 35px;
    text-align: center;
    font-size: 20px;
    color: #d3d3d3;
    border: 0;
    cursor: pointer;
    border: 2px solid #d3d3d3;
    border-radius: 50%;
    background: #fff;
    transition: color .3s ease-out .01s,background-color .3s ease-out .01s;

}
#detailTopBtn:hover {
	color: #fff;
	background: #d3d3d3;
}

#detailBotBtn:hover {
	color: #fff;
	background: #d3d3d3;
}

.QuantityUp .up {
    position: absolute;
    left: 28px;
    top: 0;
}

.QuantityDown .down {
    position: absolute;
    left: 28px;
    top: 12px;
}

.quantity td > img {
    vertical-align: middle;
}


#soldout{ 
	text-align: center;
	padding: 30px;
	width: 440px;
	font-weight: bold;
}

</style>

<script>
window.onload = function(){
	/*--------상품 이미지를 클릭하면 커지는 모션을 위한 javascript function-------------------*/
	/* 이 modal 관련 script는 모두 window.onload = function(){} 안에 들어있을때만 정상적으로 동작하므로 주의 바람!*/
	// Get the modal
	
	
	var modal = document.getElementById("myDetailModal");
	
	// Get the image and insert it inside the modal - use its "alt" text as a caption
	var img = document.getElementById("myDetailProductImg");
	var modalImg = document.getElementById("myDetailImg01");
	
	img.onclick = function (){
	  modal.style.display = "block";
	  modalImg.src = this.src;
	
	}
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("myDetailclose")[0];
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() { 
	  modal.style.display = "none";
	}
	
	
	//엔터키 눌렀을때 반응하기
	$("#quantity").bind("keydown", function(event){			
		
		if(event.keyCode == 13){
			cntValue();
		}
	});
	
	
} // end of window.onload(){}
/*--------상품 이미지를 클릭하면 커지는 모션을 위한 javascript function 끝-------------------*/

/*-----화면 최상단으로 이동하는 top 버튼을 작동시키기 위한 javascript function------------------*/
/* 이 top 버튼 관련 script는 모두  window.onload = function(){} 밖에 있을때만 정상적으로 동작하므로 주의 바람!*/
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	//Get the button:
	mybuttonT = document.getElementById("detailTopBtn");
	mybuttonB = document.getElementById("detailBotBtn");


  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
	  mybuttonT.style.display = "block";
	  mybuttonB.style.display = "block";	  
  } else {
	  mybuttonT.style.display = "none";
	  mybuttonB.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function detailTopScroll() {
	document.body.scrollTop = 0; // For Safari
	document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}

function detailBotScroll() {
	var height = document.body.scrollHeight;
	
	document.body.scrollTop = height; // For Safari
	document.documentElement.scrollTop = height; // For Chrome, Firefox, IE and Opera
	
}

/*-----화면 최상단으로 이동하는 top 버튼을 작동시키기 위한 javascript function 끝------------------*/

	

function cntValue(){
	var cnt = $("#quantity").val();

	
	if(cnt < 1){
		alert("최소 주문수량은 1개 입니다.");
		$("#quantity").val(1);
		return;
	}
			
	var price = $("#quantity_price_val").val();
	
	var total = parseInt(price) * parseInt(cnt);
		
	var resVal = '<em style="font-size:18pt;">'+comma(total)+'원</em>('+cnt+'개)';
	
	$(".total").html(resVal);
	
	$(".prodCnt").val(cnt);
	
}

function comma(str) {
    str = String(str);
    return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
}


function goBag() {
	
	if(${sessionScope.loginuser == null}) {
		var frm = document.addCartAll;
		frm.method = "POST";
		frm.action = "/SemiCab/cart.ej";
		frm.submit();
	}
	else {
	
		$.ajax({
			url:"<%= request.getContextPath()%>/specJSON.ej",
		//	type:"GET",
			data:{"member_num":"${(sessionScope.loginuser).member_num}"
				  ,"prod_num":"${pvo.product_num}"},
			dataType:"JSON",
			success:function(json) {
					
					if (json.bool == true) {    
						
						if (confirm("동일한 제품이 존재합니다. 또 추가하시겠습니까?") == true){    //확인
							
							var frm = document.addCartPart;
							frm.method = "POST";
							frm.action = "/SemiCab/addCartCnt.ej";
							frm.submit();
				
						}else{   //취소
						    return;
						}	
					}// end of if -----------------------
					
					else {
						
						
						var frm = document.addCartAll;
						frm.method = "POST";
						frm.action = "/SemiCab/cartAddList.ej";
						frm.submit();
						
					}// end of else ---------------------
				
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
	
	}

	
}// end of function goBag()------------------


function goBuy() {
	
	var frm = document.addCartAll;
	frm.method = "POST";
	frm.action = "/SemiCab/buynow.ej";
	frm.submit();
	
	 ${(sessionScope.loginuser).member_num} 
	
}// end of function goLogOut()------------------


</script>

<div class="maincontainer">

<div class="detailProduct_maincontainer">
  <div class="detailProduct_container">
	<div class="detailProduct_detailContainer">
		<div class="col-md-7"> <%-- 상품 이미지 --%>
			<div>
				<img src="/SemiCab/img/${pvo.product_img}" alt="Image" id="myDetailProductImg">
			</div>
			<!-- The Modal -->
			<div id="myDetailModal" class="myDetailModal">
			  <span class="myDetailclose">&times;</span>
			  <img class="myDetailmodal-content" id="myDetailImg01">
			</div>
		</div>
		
	<div class="Product_detailContainer">
		  <div class="col-md-5">
				<div class="productHeader">
					<div class="productName detail_title"> ${pvo.product_name}(${pvo.color}) </div> 
					<div class="productDetail00" style="margin-bottom:15px;">
					 	<c:if test="${pvo.product_cnt > 0}">
					 		<span class="productCnt">${pvo.product_cnt}개 재고 입고!!</span>
					 	</c:if>
					 	<c:if test="${pvo.product_cnt == 0}">
					 		<span class="productCnt">이 상품은 재고 대기상품입니다.</span>
					 	</c:if> 
					</div>
				</div>
			
			<table summary="" id="detailTable">

				<tr>
					<td><span>상품요약정보</span></td>
					<td colspan="2">
						<c:if test="${pvo.product_cnt > 0}">
					 		<span>${pvo.product_cnt}개의 수량이 있습니다.</span>
					 	</c:if>
					 	<c:if test="${pvo.product_cnt == 0}">
					 		<span style="color: red;">재입고 대기상품입니다.</span>
					 	</c:if>
					</td> 	 
				</tr>
				
				<tr>
					<td><span class="spanPrice">판매가</span></td>
					<c:if test="${pvo.product_cnt > 0}">
					<td><span class="spanPrice"><fmt:formatNumber value="${pvo.price}" pattern="###,###"/>원</span></td>
					</c:if>
					<c:if test="${pvo.product_cnt == 0}">
					<td><span class="spanPrice">SOLD OUT</span></td>
					</c:if>
				</tr>
			</table>
		
			<p>(최소구매수량 1개 이상)</p>
			<p>수량을 선택해주세요!</p>
		
		<div class="DetailtotalPrice">
			<table style="width:475px;">
				<tr>
					<td><span class="detailedProductName">${pvo.product_name}(${pvo.color})</span></td>
					<td><input type="number" name="quantity" id="quantity" max="100" value="1" step="1" onClick="cntValue();"/>

					</td>
					<c:if test="${pvo.product_cnt > 0}">
					<td align="left"><span class="quantity_price"><fmt:formatNumber value="${pvo.price}" pattern="###,###"/>원</span><input id="quantity_price_val" type="hidden" value="${pvo.price}"/></td>
					</c:if>
					<c:if test="${pvo.product_cnt == 0}">
					<td align="left"><span class="quantity_price">SOLD OUT</span><input id="quantity_price_val" type="hidden" value="0"/></td>
					</c:if>
				</tr>
			</table>
		</div>
		</div> <%--- 상세페이지에서 총 상품금액 위 까지 --%>
			
		<div id="totalPrice">
			<strong>총 상품금액 (수량) : </strong>
			<c:if test="${pvo.product_cnt > 0}">
				<span class="total" style="font-weight:bold;">
				 <em style="font-size:18pt;">58,000원</em>(1개)</span>
			 </c:if>
			 <c:if test="${pvo.product_cnt == 0}">
				<span class="total" style="font-weight:bold;">
				 <em style="font-size:18pt;">0원</em>(1개)</span>
			 </c:if>
			
		</div>

			<div id="detailBuy_buttons"> <%-- 구매 버튼 부분, 클릭하면 각각의 페이지로 넘어가도록 onclick에 적을 예정--%>
				<c:if test="${pvo.product_cnt > 0}">
					 		<button type="button" class="button1" id="buyBtn" onclick="goBuy();">BUY NOW</button>
							<button type="button" class="button2" id="cartBtn" onclick="goBag();">ADD CART</button> <%-- addCartAll --%>
					 	</c:if>
			 	<c:if test="${pvo.product_cnt == 0}">
			 		<div id="soldout"> 상품을 준비중입니다.</div>
			 	</c:if>
			
				
			</div>	
			
		</div><%-- end of Product_detailContainer --%>
	  </div>
	</div><%---end of first container --%>
	<form name="addCartAll">
		<input type="hidden" name="prodNum" value="${pvo.product_num}"/>
		<input type="hidden" name="prodName" value="${pvo.product_name}"/>
		<input type="hidden" name="prodColor" value="${pvo.color}"/>
		<input type="hidden" name="prodImg" value="${pvo.product_img}"/>
		<input type="hidden" class="prodCnt" name="prodCnt" value="1"/>
		<input type="hidden" id="prodPrice" name="prodPrice" value="${pvo.price}"/>
	</form>
	
	<form name="addCartPart">
		<input type="hidden" name="prodNum" value="${pvo.product_num}"/>
		<input type="hidden" class="prodCnt" name="prodCnt" value="1"/>
	</form>
	
	<div class="detailProduct_detailContainer" id="detailImageContainer">
		
		<%-- 화면 최상단 스크롤 버튼 --%>
		<button onclick="detailTopScroll()" id="detailTopBtn" >∧</button>
		<button onclick="detailBotScroll()" id="detailBotBtn" >∨</button>

		<%---위의 #detailImageContainer 안에 이미지들이 들어가지 않는 문제로, css적용이 제대로 되지않아 직접 style을 줌 --%>
		
		<c:if test="${not empty imgList}">
			<c:forEach var="product_de_img" items="${imgList}">
				<div class="col-md-12" style="align:center">
				   <img src="/SemiCab/img/${product_de_img}"/>
				</div>
			</c:forEach>
		</c:if>
		
		
	</div>
	<div class="detailProduct_detailContainer" >

	</div>
<%-- 아래는 참고용으로 찾아놓은 후기 게시판 포맷으로, 나중에 참고하기 위해 주석처리합니다.
	
	<div class="detailProduct_detailContainer" >
		<div style="border: 1px solid silver;"></div><br>
		<h3>배송 정보</h3>
	</div>
	<br/>
	<br/> 
	<div class="detailProduct_detailContainer">
	<div style="border: 1px solid silver;"></div><br>
		<h3>후기 게시판</h3>
		<p>후기를 작성해주시면 글하나에 100원을 적립금으로 드립니다. 작성한 후기는 다른분들의 쇼핑에 많은 도움이 될 수 있어요.^^</p>
		<form class="form-inline" role="form">
			<div>
			<label for="id">아이디:</label><input type="text" class="form-control"
				id="id" placeholder="Enter id">
			</div>
			<br>
			<div >
				<label >평점:</label><input type="radio">★
			</div>
			<br>
			<div>
				<label>사진넣기: </label>
			</div>
			<br>
			<div>
				<label>내용 </label><textarea class="form-control" rows="4" cols="50"></textarea>
				<button class="btn btn-default">쓰기</button>
			</div>
		</form>
		<br>
		<div style="border: 1px solid silver;"></div><br>
		<div style="border: 1px solid silver;" align="center">
				<table class="table table-striped">
					<thead>
						<tr>
							<th>번호</th>
							<th>사진</th>
							<th>아이디</th>
							<th>내용</th>
							<th>평점</th>
							<th>날짜</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="6">게시판내용이 없습니다</td>
						</tr>
					</tbody>
				</table>
			</div>
	</div>--%>
</div>


</div>	

<jsp:include page="../footer.jsp"/>