<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../header_dog.jsp" />

<title>휴먼 그레이드</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

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

.w_line {
    width: 20px;
    height: 2px;
    margin: 25px auto;
    background: #fff;
}
/* /redbox */

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.more_btn {
    padding: 20px 40px;
    border: 2px solid #000;
    color: #333;
    text-align: center;
    margin: 0 auto;
    display: inline-block;
}

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

/* txt_box */
.bdbt {
    border-bottom: 1px solid #e6e6e6;
}

.txt_box {
    width: 1200px;
    margin: 0 auto;
    padding: 100px 0;
    text-align: center;
}

.mb30 {
    margin-bottom: 30px;
}

.f44 {
    font-size: 44px;
}

.mb50 {
    margin-bottom: 50px;
    font-weight: bold;
}

.lh34 {
    line-height: 34px;
}

.f22 {
    font-size: 22px;
}

.k_bold {
	font-weight: bold;
}

/* /txt_box */

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

</style>


<div class="container">
	
	<div><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>

	<div>
		<ul class="tab_menu">
		      <li><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li class="over"><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">휴먼 그레이드</div>
	    <div class="e_b">HUMAN GRADE</div>
	    <div class="line"></div>
	    <div class="b_b">우리 스스로가 먹을 수 있는 원료만 사용하기 캠페인</div>
	</div>
	
	<div><img src="/Semi_Team1/images/magazine/3-1.gif" style="display: block; margin: 0 auto;"></div>
	
	<div class="txt_box bdbt">
    	<div class="k_light f44">우리는 우리가 먹을 수 있는 펫푸드를 만들자는 신념으로,</div>
    	<div class="k_bold f44 mb50">매일 건강한 펫푸드를 만들기</div>
   		<div class="k_light f22 lh34">만약, 우리가 먹을 수 없는 펫푸드가 있다면, 그건은 반려동물의 건강에 안 좋을 것입니다.<br>
      								    대부분의 반려동물 사료에는 사람이 먹을 수 없는 육분, 박이 원료로 사용됩니다.<br>
      								    영양가 없는 빈껍데기로 만든 사료가 과연 건강할까요?<br>
									   <br>
									      심지어는 오직 유통기한을 늘리기 위해 유해한 방부제까지 첨가하죠.<br>
									      이뿐만이 아닙니다, 청결이라고는 찾아볼 수 없는 제조시설에서<br>
									      우리 아이가 먹는 사료가 만들어집니다.<br>
									      사람이 먹을 수 있는 건강한 재료와 청결한 제조시설에서 만든 펫푸드만이<br>반려동물의 건강을 책임질 수 있습니다.<br>
    	</div>
  	</div>
  	
  	<div class="txt_box">
    	<div class="k_light f44 mb30"><span class="k_bold f44">휴먼 그레이드</span>와 <span class="k_bold f44">사료 그레이드</span>의 <span class="k_bold f44">차이</span></div>
    	<div class="k_normal f22"><span class="k_bold f22">사료 그레이드 :</span> 식품을 가공하고 남은 찌꺼기로 만든 사료</div>
  	</div>

	<div><img src="/Semi_Team1/images/magazine/3-2.PNG" style="display: block; margin: 0 auto;"></div>
	
	
	<button id="myBtn" style="display: block; margin: 0 auto;">자세히 보기 ></button>
	<div id="myModal" class="modal">
		<!-- Modal content -->
  		<div class="modal-content">
	    <span class="close">&times;</span>    	
	    	<img src="/Semi_Team1/images/magazine/3-3.jpg" />
  		</div>
	</div>
	
	
	<div class="red_box">
	    <div class="c_white k_bold f32">사람이 먹는 원료로 만든 음식은</div>
	    <div class="c_white k_bold f32">반려동물에게 최고의 식단이다.</div>
	    <div class="w_line"></div>
	    <div class="c_white k_light f18">-앤N.마틴의 '개 고양이 사료의 진실' p.149 -</div>
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