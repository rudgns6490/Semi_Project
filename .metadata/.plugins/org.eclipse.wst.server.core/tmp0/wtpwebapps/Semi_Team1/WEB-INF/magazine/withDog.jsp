<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<jsp:include page="../header_dog.jsp" />

<title>반려견 동반</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 
<style>
/* carousel */
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  width: 70%;
  margin: auto;
}
.carousel-control.left {
background-image:none; color: gray;
}
.carousel-control.right {
background-image:none; color: gray;
}
/* /carousel */

/* txt_title */
.txt_title {
	padding: 70px 0;
	text-align:center;
}

.k_s {
    margin-bottom: 5px;
    font-size: 18px;
    font-family: sans-serif;
}

.e_b {
    font-size: 56px;
    font-family: sans-serif;
    font-weight: bold;
}

.b_b {
    font-family: sans-serif;
    text-align: center;
    font-size: 26px;
}

.line {
    width: 20px;
    height: 2px;
    margin: 40px auto;
    background: #000;
}
/* /txt_title */

/* redbox */
.red_box {
    width: 100%;
    text-align: center;
    padding: 110px 0;
    background: #da291c;
    margin-top: 110px;
}

.f32 {
    font-size: 35px;
    font-weight: bold;
}

.f18 {
    font-size: 18px;
}

.f19 {
    font-size: 25px;
    margin-bottom: 10px;
    margin-top: 10px;
}

.k_bold {
    font-family: sans-serif;
}

.c_white {
    color: #fff;
}

.inline {
	display: inline-block;
	margin-right: 15px;
}
/* /redbox */

.container {
	width: 100%;
	margin: 0 auto;
}

/* blackbox */
.black_box_wrap {
    width: 100%;
    height: 150px;
    background: #000;
}

.black_box_wrap .black_box {
    width: 1200px;
    margin: 0 auto;
    padding: 50px 0;
}

.black_box_wrap .black_box .box {
    width: 50%;
    float: left;
}

.f24 {
    font-size: 24px;
}

.c_white {
    color: #fff;
}

.black_box_wrap .black_box .box .more_btn_w {
    padding: 15px 30px;
    border: 1px solid #fff;
}

.f18 {
    font-size: 18px;
}

a, a:hover, a:active, a:focus {
    text-decoration: none;
    cursor: pointer;
    color: #fff;
}
/* /blackbox */

/* modal */
/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 50px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  padding: 10px;
  border: 1px solid #888;
  width: 880px;
  margin: 0 auto;
}

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

#myBtn {
    color: white;
    text-align: center;
    margin: 0 auto;
    display: inline-block;
    background-color: black;
    font-size: 18px;
    margin-top: 20px;
    padding: 15px 25px;
    border: 1px solid #fff;
    margin-left: 15px;
}

#myBtn:hover {
	text-decoration: none;
    cursor: pointer;
    color: #fff;
}
/* /modal */

/* tab */
.tab_menu {
	display: table;
  	margin-left:auto;
  	margin-right: auto;
  	padding: 0px;
}

.tab_menu li {	
	padding: 20px 50px 3px 50px;
 	list-style: none;
    float: left;
    border-bottom: 2px solid #dcdcdc;
    color: #000;
    font-size: 20px;
    font-weight: bold;
    text-align: center;
    cursor: pointer;
    line-height: 280%;
}

.tab_menu li a {
    display: block;
    color: inherit;
    font: inherit;
    text-decoration: none;
    margin: 0 auto;
}

.tab_menu li.over {
    border-bottom: 2px solid #9d6849;
    color: #9d6849;
}
/* /tab */

.container1 {
	width: 100%;
	margin: 0 auto;
}

</style>


<div class="container1">

	<div><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>

	<div>
		<ul class="tab_menu">
		      <li><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li class="over"><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">반려견 동반</div>
	    <div class="e_b">WITH DOGS</div>
	    <div class="line"></div>
	    <div class="b_b">반려견 동반출근 문화, 들어보셨나요?</div>
	</div>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">

	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	
	      <div class="item active">
	        <img src="/Semi_Team1/images/magazine/6-1.PNG" width="460" height="345">
	      </div>
	
	      <div class="item">
	        <img src="/Semi_Team1/images/magazine/6-2.PNG" width="460" height="345">
	      </div>
	    
	      <div class="item">
	        <img src="/Semi_Team1/images/magazine/6-3.PNG" width="460" height="345">
	      </div>
	  
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
    
  </div>

	
	<div class="red_box">
	    <div class="c_white k_bold f32" style="margin-bottom: 40px;">반려견 동반출근 BENEFIT</div>
	    
	    <div class="inline">
	    <div><img src="/Semi_Team1/images/magazine/red_wline_1.png"></div>
	    <div class="c_white k_light f19">불안감 감소</div>
	    <div class="c_white k_light f18">연구에 따르면 반려동물과 함께 일하는<br/>
										  직원이 업무 스트레스를 덜 받는다고 합니다.</div>
		</div>
		
		<div class="inline">								  
		<div><img src="/Semi_Team1/images/magazine/red_wline_2.png"></div>
	    <div class="c_white k_light f19">반려견 친화 분위기</div>
	    <div class="c_white k_light f18">반려견과 동반출근을 원하는 직원들은 사무실이 좀더<br/>
										  반려견에게 편안하도록.변화시키기 위해 노력합니다.</div>
	    </div>
	    
	    <div class="inline">
		<div><img src="/Semi_Team1/images/magazine/red_wline_3.png"></div>
	    <div class="c_white k_light f19">긍정적인 문화 형성</div>
	    <div class="c_white k_light f18">반려동물들은 처음 만난 사람들이<br/>
										  쉽게 친해지도록 도와줍니다.</div>
  		</div>
  	</div>
  	
  	
	<div class="black_box_wrap">
		<div class="black_box">
	      
	      <div class="box" style="margin-left: 30%;">
	        <div class="c_white k_light f24">반려견 동반출근 펫 에티켓
	        <button id="myBtn" class="more_btn_w k_light f18" style="margin: 0 auto;">클릭 ></button>
				<div id="myModal" class="modal" style="display: none;">
		  		<div class="modal-content">
			    <span class="close">&times;</span>    	
			    	<img src="/Semi_Team1/images/magazine/6m.png" style="width: 850px;" height="950px;"/>
		  		</div>
				</div>
			</div>			
	       </div>
	       	       
		</div>
	</div>
</div>


<script>

	//Get the modal
	var modal = document.getElementById("myModal");
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	  modal.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal.style.display = "none";
	  }
	}

</script>	
	
<jsp:include page="../footer_dog.jsp" />