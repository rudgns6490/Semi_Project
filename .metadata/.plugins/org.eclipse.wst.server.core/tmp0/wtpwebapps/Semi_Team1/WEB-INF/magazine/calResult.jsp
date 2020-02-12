<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="../header_dog.jsp" />


<c:set var="name" value="${param.name}" />  
<c:set var="weight" value="${param.weight}" /> 
<c:set var="birth_year" value="${param.birth_year}" />
<c:set var="birth_month" value="${param.birth_month}" />
<c:set var="birth_day" value="${param.birth_day}" />
<c:set var="today_year" value="${param.today_year}" />
<c:set var="today_month" value="${param.today_month}" />
<c:set var="today_day" value="${param.today_day}" />
<c:set var="operation" value="${param.operation}"/>


<title>칼로리 계산 결과</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<style>

/* txt_title */
.txt_title {
	padding: 70px 0;
	text-align:center;
	margin-bottom: -80px;
}

.e_b {
    font-size: 40px;
    font-family: sans-serif;
    font-weight: bold;
    margin-bottom: 25px;
}

.k_s {
    font-size: 25px;
    font-family: sans-serif;
}
/* /txt_title */

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
	background-color: #f5f5f5;
	width: 100%;
	margin: 0 auto;
	padding: 0px;
}

.kcalArea {
    padding: 60px 15px 60px 15px;
    position: relative;
    background: #fff;
    margin: 40px 200px 0px 200px;
    overflow:hidden;
	height:auto;
 	text-align: center;
}

.line {
    width: 20px;
    height: 2px;
    margin: 40px auto;
    background: #000;
}

/* button */
#back_btn {
    width: 240px;
    height: 50px;
    font-size: 16px;
    color: #f5f5f5;
    text-align: center;
    line-height: 50px;
    background: #42362f;
    margin: 6% 0 0 42%; 
}

#bottom {
	background-color: #f5f5f5;
	width: 100%;
	height: 250px;
}
/* /button */

.dogName {
	color: #4CB074;
	font-weight: bold;
}

.dogKcal {
	color: #4CB074;
	font-weight: bold;
}

/* kcalArea */
.recommendationProduct {
	display: inline-block;
	width: 18%;
	margin: 2% 0.8%;
}

.rec {
	text-align: center;
	font-size: 11pt;
}

.Pn {
	font-weight: bold;
	margin-top: 5%;
	color: brown;
}

.Pi {
	width: 100%;
	height: 15vw;
}

.Pi:hover {
	opacity: 0.5;
}
/* /kcalArea */

</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		var today_day = parseInt("${today_day}");
		var birth_day = parseInt("${birth_day}");	
		var today_year = parseInt("${today_year}");
		var birth_year = parseInt("${birth_year}");		
		var today_month = parseInt("${today_month}");
		var birth_month = parseInt("${birth_month}");		
		var operation = "${operation}";
		var weight = parseInt("${weight}");
		
		
		if (today_day < birth_day){
			var birth = ((today_year-birth_year)*12) + (today_month-birth_month-1);	
		}
		else {	
			var birth = ((today_year-birth_year)*12) + (today_month-birth_month);
		}
		
		
		if (birth < 13) {
			
			if (birth < 4) {
				var kcalReasult = (((30*weight)+70) * 3);		
			}
			else if (birth > 3) {
				var kcalReasult = (((30*weight)+70) * 2);
			}
			
		}
		else if (birth > 12) {
			
			if (operation == '1') {
				var operation_Y = operation;
				var operation_Y = 1.6;
				
				var kcalReasult = (((30*weight)+70) * parseFloat(operation_Y));			
			}
			else if (operation == '0') {
				var operation_N = operation;
				var operation_N = 1.8; 
				
				var kcalReasult = (((30*weight)+70) * parseFloat(operation_N));
			}
			
		}		

		
		$(".dogKcal").text(kcalReasult+"kcal");
		
	});



	function goBack() {			
		javascript:history.back();		
	}

</script>


<div class="container">
	
	<div ><img src="/Semi_Team1/images/magazine/magazine_title_img.jpg" style="width: 100%;"></div>
	
	<div>
		<ul class="tab_menu">
		      <li class="over"><a href="/Semi_Team1/magazine/cal.dog">하루 칼로리 계산</a></li>
		      <li><a href="/Semi_Team1/magazine/nutrient.dog">영양성분</a></li> 
		      <li><a href="/Semi_Team1/magazine/ingredient.dog">원료사전</a></li>
		      <li><a href="/Semi_Team1/magazine/humanGrage.dog">휴먼 그레이드</a></li>
		      <li><a href="/Semi_Team1/magazine/studio.dog">이달의 우수 제조시설</a></li>
		      <li><a href="/Semi_Team1/magazine/withDog.dog">반려견 동반출근</a></li>
		</ul>
	</div>
	
	<div class="txt_title">
	    <div class="e_b">칼로리 계산 결과</div>
	    <div class="k_s">반려견 <span class="dogName">${param.name}</span>에게는 하루 <span class="dogKcal"></span>의 에너지가 필요해요.</div>
	</div>
	

     <div class="kcalArea">
    	<div class="e_b" style="text-align: center;">추천 상품</div>
    	<div class="line"></div>
   		
   		<div style="font-size: 17px; text-align: center; padding-bottom: 35px;"><img src="/Semi_Team1/images/header&footer/search.png" width="15px;"/>검색 결과 : 총 <span style="color: brown; font-size: 17px; font-weight: bold;">${fn:length(recList)}</span>개</div>
  	
    	<c:forEach var="recList" items="${recList}" varStatus="status" > 
    		<c:choose>
		    	<c:when test="${ (status.index)%5 != 0 }">  
		    		<div class="recommendationProduct">
			    		<a href='/Semi_Team1/purchase/purchaseContent.dog?prdcode=${recList.product_code}'><img class="Pi" src='/Semi_Team1/images/${recList.product_explanation}' /></a>
			    		<div class='rec Pn'>
				    		<c:choose>
						        <c:when test="${fn:length(recList.product_name) gt 15}">
						        	<c:out value="${fn:substring(recList.product_name, 0, 14)}"/>...
						        </c:when>
						        <c:otherwise>
						        	<c:out value="${recList.product_name}"/>
						        </c:otherwise>
							</c:choose>
			    		</div>
			    		<div class='rec Pp'><fmt:formatNumber value="${recList.product_price}" pattern="###,###" />원</div>
		    		</div>
		    	</c:when>
		    	
		    	<c:otherwise>
		    		<br/>
		    		<div class="recommendationProduct">
			    		<a href='/Semi_Team1/purchase/purchaseContent.dog?prdcode=${recList.product_code}'><img class="Pi" src='/Semi_Team1/images/${recList.product_explanation}' /></a>
			    		<div class='rec Pn'>
				    		<c:choose>
						        <c:when test="${fn:length(recList.product_name) gt 15}">
						        	<c:out value="${fn:substring(recList.product_name, 0, 14)}"/>...
						        </c:when>
						        <c:otherwise>
						        	<c:out value="${recList.product_name}"/>
						        </c:otherwise>
							</c:choose>
			    		</div>
			    		<div class='rec Pp'><fmt:formatNumber value="${recList.product_price}" pattern="###,###" />원</div>
		    		</div>
		    	</c:otherwise>
	    	</c:choose>
    	</c:forEach>
     </div>
      
     <div id="bottom">
     	<button type="button" id="back_btn" onclick="goBack();">다시 계산하기</button>
     </div> 
	
</div>

<jsp:include page="../footer_dog.jsp" />