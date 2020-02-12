<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>

*/
/*------------------------- 상품 상세페이지 ------------------------------------------*/

/*------------- 상품 상세페이지의 body ------------*/
body { 
	background-color: #f2f2f2 !important;	
	font-family: 'Roboto', sans-serif;
	
	min-width:1480px;
	width:100%;
	margin:0 auto;
}

body > div.detailProduct_maincontainer { /* 상품 상세 페이지 */
	background-color: white;
	width : 93% !important;
	margin : 0 auto;
	padding-top : 40px;
}

#myDetailProductImg{ /*상품 이미지*/
	width:500px;
	height:338px; 
	align:center; 
	margin:0 auto; 
	vertical-align:middle;
}
/*------------ 상품 이미지 : 클릭하면 큰 이미지로 보이는 기능을 modal로 처리함 ------------------------*/

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
  max-width: 700px;
}

.myDetailmodal-content:hover{
	cursor: pointer;
}

/* The Close Button (modal 창을 닫는 버튼)*/
.myDetailclose {
  position: absolute;
  top: 15px;
  right: 35px;
  color: #f1f1f1;
  font-size: 40px;
  font-weight: bold;
  transition: 0.3s;
}

.myDetailclose:hover,
.myDetailclose:focus {
  color: #bbb;
  text-decoration: none;
  cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
  .myDetailmodal-content {
    width: 100%;
  }
}


/*상품 상세 페이지 : 각각 1. 상품 설명 부분 2. 상품 사진 부분 3. 리뷰게시판 자리로 묶여있음*/
body > div.detailProduct_maincontainer div.detailProduct_detailContainer { 
	padding : 30px;	
}

/* ------------------상품 상세 페이지에서 상품명, 상품 설명 부분------------------------------------------- */

body > div > div:nth-child(1) > div.col-md-5 > div.productHeader > div.productName.detail_title {
	
	font-variant-ligatures: none;
	word-break: break-all;
	margin: 0;
	padding: 0;
	font-size: 20px;
	color: #111;
	font-weight: bold !important;
	padding-bottom: 6px;	
}

body > div > div:nth-child(1) > div.col-md-5 > div.productHeader {
	margin-bottom: 15px;
	border-top : solid 1px black;
	border-bottom : solid 1px #e6e6e6;
}

body > div > div:nth-child(1) > div.col-md-5 > div.productHeader > div.productDetail00 {
	font-size: 13px;
    color: #999999;
}

body > div > div:nth-child(1) > div.col-md-5 > div.productHeader > div.productDetail01 {
	font-size: 13px;
    color: #999999;
    font-weight:normal;
}

body > div > div:nth-child(1) > div.col-md-5 > div.productHeader > div.productDetail02 {
	font-size: 16px;
    color: #333333;
    font-weight: bold;
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

body > div > div:nth-child(1) > div.col-md-5 > p:nth-child(3){ /*(최소구매수량 1개 이상)*/
	font-size:12px;
	color:gray; 
	padding-top:15px; 
	border-top:solid 1px #e6e6e6;
}

body > div > div:nth-child(1) > div.col-md-5 > p:nth-child(4) { /*수량을 선택해주세요!*/
	font-size:12px;
	color:red;
}

/*-----------총 상품금액 (수량) : 58,000원(1개) 부분 --------------*/
body > div > div:nth-child(1) > div.col-md-5 > div:nth-child(5).DetailtotalPrice{
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
#buyBtn { /* buy 버튼*/
 	  background-color: black;
	  border: none;
	  color: white;
	  width : 460px;
	  height : 42px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  border-radius: 2px;
	  
	  margin: 2px 2px;
	  margin-bottom: 10px;
	  margin-top: 20px;
}

div#detailBuy_buttons .button2 {
	  border: none;
	  width : 225px;
	  height : 40px;
	  text-align: center;
	  text-decoration: none;
	  display: inline-block;
	  font-size: 16px;
	  margin: 2px 2px;
	  border-radius: 2px;
	  
	-webkit-font-smoothing: subpixel-antialiased;
	font-variant-ligatures: none;
	text-align: center;
	outline: none;
	transition: all .3s ease-out .01s;
	font-size: 12px;
	letter-spacing: 3px;
	line-height: normal;
	font-weight: 400;
	color: #222;
	padding: 13px 0;
	background: #f4f4f4;
	text-decoration: none;	
}

/*---- 상세 사진이 들어간 div ----*/
div#detailImageContainer {
	display:inline-block; 
	height:25000px; 
	/*여기부터 상세 사진, 상세사진이 div 안으로 들어가지 않아 height:165000px ~= 전체 사진 높이 로 임의 설정했습니다.*/
}

/*------------------ 화면 최상단 스크롤 버튼----------------------------*/
#detailTopBtn {
  display: none; /* Hidden by default */
  position: fixed; /* Fixed/sticky position */
  bottom: 20px; /* Place the button at the bottom of the page */
  right: 30px; /* Place the button 30px from the right */
  z-index: 99; /* Make sure it does not overlap */
  border: none; /* Remove borders */
  outline: none; /* Remove outline */
  background-color: red; /* Set a background color */
  color: white; /* Text color */
  cursor: pointer; /* Add a mouse pointer on hover */
  padding: 15px; /* Some padding */
  border-radius: 10px; /* Rounded corners */
  font-size: 18px; /* Increase font size */
}

#detailTopBtn:hover {
  background-color: #555; /* Add a dark-grey background on hover */
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
} // end of window.onload(){}
/*--------상품 이미지를 클릭하면 커지는 모션을 위한 javascript function 끝-------------------*/

/*-----화면 최상단으로 이동하는 top 버튼을 작동시키기 위한 javascript function------------------*/
/* 이 top 버튼 관련 script는 모두  window.onload = function(){} 밖에 있을때만 정상적으로 동작하므로 주의 바람!*/
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
	//Get the button:
	mybutton = document.getElementById("detailTopBtn");

  if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function detailTopScroll() {
  document.body.scrollTop = 0; // For Safari
  document.documentElement.scrollTop = 0; // For Chrome, Firefox, IE and Opera
}
/*-----화면 최상단으로 이동하는 top 버튼을 작동시키기 위한 javascript function 끝------------------*/

</script>

</head>
<body style="background-color : #f2f2f2;"> <%-- style 태그 안에서 배경색이 먹히지 않아 직접 줌 --%>
	<header> <%--- 샘플 header --%>
		
	</header>
	<!-- 해더끝 -->
	
<div class="detailProduct_maincontainer">
	
	<div class="detailProduct_detailContainer">
		<div class="col-md-7" style="align:center; height:560px;"> <%-- 상품 이미지 --%>
			<div style="text-align:center">
				<img src="/SemiCab/img/product1.PNG" alt="Image" id="myDetailProductImg">
			</div>
			<!-- The Modal -->
			<div id="myDetailModal" class="myDetailModal">
			  <span class="myDetailclose">&times;</span>
			  <img class="myDetailmodal-content" id="myDetailImg01">
			</div>
		</div>
		
		<div class="col-md-5" align="left" style="padding:0px;">
				<div class="productHeader">
					<div class="productName detail_title" style="margin-top:15px;"> JOYMENT-COTTON LOGO J BALL CAP(WT) </div> 
					<div class="productDetail00" style="margin-bottom:15px;"> 26차 재입고 완료 되었습니다. </div>
				</div>
			
			<table summary="" id="detailTable">

				<tr>
					<td><span>상품요약정보</span></td>
					<td colspan="2"><span>26차 재입고 완료 되었습니다.</span></td>
				</tr>
				
				<tr>
					<td><span class="spanPrice">판매가</span></td>
					<td><span class="spanPrice">58,000원</span></td>
				</tr>
			</table>
		
			<p>(최소구매수량 1개 이상)</p>
			<p>수량을 선택해주세요!</p>
		
		<div class="DetailtotalPrice">
			<table style="width:475px;">
				<tr>
					<td><span class="detailedProductName">JOYMENT-COTTON LOGO J BALL CAP(WT)</span></td>
					<td style="width:100px;" align="center"><input type="number" name="quantity" id="quantity" min="1" max="100" value="1" step="1"/></td>
					<td align="left"><span class="quantity_price"> 58,000 원</span></td>
				</tr>
			</table>
		</div>
		</div> <%--- 상세페이지에서 총 상품금액 위 까지 --%>
			
		<div id="totalPrice">
			<strong>총 상품금액 (수량) : </strong><span class="total" style="font-weight:bold;"> <em style="font-size:18pt;">58,000원</em>(1개)</span>
		</div>

			<div id="detailBuy_buttons"> <%-- 구매 버튼 부분, 클릭하면 각각의 페이지로 넘어가도록 onclick에 적을 예정--%>
				<button type="button" class="button1" id="buyBtn" onclick="">BUY NOW</button>
				<button type="button" class="button2" id="cartBtn" onclick="">ADD CART</button>
				<button type="button" class="button2" id="wishBtn" onclick="">WISH LIST</button>
			</div>	
	</div><%---end of first container --%>
	
	<div class="detailProduct_detailContainer" id="detailImageContainer">
		
		<%-- 화면 최상단 스크롤 버튼 --%>
		<button onclick="detailTopScroll()" id="detailTopBtn" >TOP</button>

		<%---위의 #detailImageContainer 안에 이미지들이 들어가지 않는 문제로, css적용이 제대로 되지않아 직접 style을 줌 --%>
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image1.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>
		
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image2.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>
		
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image3.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>
		
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image4.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>
		
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image5.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>
		
		<div class="col-md-12" style="align:center">
			<img src="/SemiCab/img/image6.jpg" alt="Image"
				style="width:100%;height:100%; align:center">
		</div>		
		
	</div>
	<div class="detailProduct_detailContainer" >
		<h1>리뷰 게시판 자리</h1>
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
	
</body>