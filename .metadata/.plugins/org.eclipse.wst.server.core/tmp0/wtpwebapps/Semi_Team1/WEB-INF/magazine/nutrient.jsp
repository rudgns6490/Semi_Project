<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<jsp:include page="../header_dog.jsp" />

<title>영양성분</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

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

.container {
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

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
/* /txt_title */

</style>


<div class="container">
	
	<div><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>
	
	<div>
		<ul class="tab_menu">
		      <li><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li class="over"><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="k_s">영양성분</div>
	    <div class="e_b">PET FOOD NUTRIENT</div>
	</div>
	 
	<div class="content">
		<img src="/Semi_Team1/images/magazine/2-1-1.PNG"  style="display: block; margin: 0 auto;"/>
		<img src="/Semi_Team1/images/magazine/2-2-2.PNG" style="display: block; margin: 0 auto; padding-left: 6.3px;"/>
	</div>
	<br/><br/><br/>
</div>

<jsp:include page="../footer_dog.jsp" />