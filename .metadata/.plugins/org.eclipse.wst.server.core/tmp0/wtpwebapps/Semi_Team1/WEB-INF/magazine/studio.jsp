<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../header_dog.jsp" />

<title>이달의 우수 제조시설</title>

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

#myBtn {
    padding: 20px 40px;
    border: 2px solid #fff;
    text-align: center;
    margin: 0 auto;
    display: inline-block;
    background-color: transparent;
    cursor: pointer;
    font-size: 18px;
}

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

.content_img {
	display: block; 
	margin: 0 auto;
} 

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

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
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li class="over"><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">이달의 우수 제조시설</div>
	    <div class="e_b">MANUFACTURING FACILITY</div>
	    <div class="line"></div>
	    <div class="b_b">이달의 우수 제조시설로 선정된 '정안 Happy Dance Studio'을 소개합니다</div>
	</div>
	
	<div class="content">
		<div><img class="content_img" src="/Semi_Team1/images/magazine/5-1.gif"></div>
		<div class="txt_title">
	    <div class="e_b">HAPPY DANCE STUDIO</div>
	    <div class="line"></div>
	    <div class="b_b">정안 Happy Dance Studio는 세계적인 제조 설비 회사에서 제작한<br/>
						  세계 최고의 생산 라인을 가지고 있는 것은 물론,<br/>
						  품질 유지를 위해 지속적인 제조 기술을 컨설팅 받고 있습니다.</div>
		</div>
		<div>
			<div><img class="content_img" src="/Semi_Team1/images/magazine/5-2.PNG"></div>
			<div><img class="content_img" src="/Semi_Team1/images/magazine/5-3.PNG"></div>
		</div>
	</div>
	
	<div class="red_box">
	    <div class="c_white k_light f18">최상의 맛과 건강을 위한 세계수준의 설비</div>
	    <div class="c_white k_bold f32">HAPPY DANCE STUDIO TOUR</div>
	    <div class="w_line"></div>
	    <button id="myBtn" style="display: block; margin: 0 auto;"><a href="http://www.harimpetfood.com/shop/seminar.html?seminar_type=tour_list" style="text-decoration: none; color: white;">스튜디오 투어 신청하기 ></a></button>
  	</div>
  	
  	<div class="content2">
  		<div><img class="content_img" src="/Semi_Team1/images/magazine/5-4.PNG"></div>
  		<div><img class="content_img" src="/Semi_Team1/images/magazine/5-5.PNG"></div>
  	</div>
  	
</div>

<jsp:include page="../footer_dog.jsp" />