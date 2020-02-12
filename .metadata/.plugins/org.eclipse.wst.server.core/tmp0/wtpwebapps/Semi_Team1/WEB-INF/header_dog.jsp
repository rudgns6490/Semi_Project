
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<% String ctxPath = request.getContextPath(); %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<%= ctxPath %>/js/bootstrap_340_yhj.css">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
 
  
  <style>
  	
  	#header , #footer {
  		font-family: 'Nanum Gothic', sans-serif;
  	}
  	
    #header ul {
    	margin:0;
        padding:0;
    }
    
    #footer ul {
    	margin:0;
        padding:0;
    }
 	
    #header a {
    	text-decoration: none;
        cursor: pointer;
    }
    
    #header1 {
    	height: 80px;
    }
    
    #loginBar {
    	list-style: none;
        float:right;
    }
    
    #loginBar li {
    	display: inline-block;
        margin: 20px 0 0 30px;
    }
    
    #loginBar li a {
    	color: #999999;
    }
    
    #header2 {
    	border-bottom: solid 2px black;
        background-color: white;
        z-index: 100;
        position: relative;
    }
    
    #navbar {
    	
        background-color: white;
        
    }
    
    #navbarUl li a {
    	color: black;
    }
    
    #navbarUl li a:hover {
    	color: #996633;
    }
    
    #navbarMenu li {
    	display: inline-block;
        
    }
    
    #searchProduct {
    	border: none;
        padding-left: 20px;
        padding-bottom: 2px;
    }
    
    #searchProduct:focus {
    	outline:none;
        color: #999999;
    }
    
    #dropContent {
    	display : none;
        background-color: white;
        position: absolute;
        border-top: solid 2px black;
        width: 100%;
        padding: 30px 0 !important;
        
    }
    
    .dropCntMenu {
    	display: inline-block;
        vertical-align: top;
    }
    
    .dropCntMenu ul {
    	list-style:none;
        padding: 35px 0 35px 0;
    }
    
    .dropCntMenu ul li {
    	margin: 8px 0 8px 0;
    }
    
    .dropCntMenu ul li a:hover{
    	color: #4d2600;
    	font-weight: bold;
    }
    
    .dropCntMenu a {
    	color: #999999;
    }
    
    #navbar:hover #dropContent {
    	display: block;
    }
    
    .notification .badge {
		position: absolute;
		top: -10px;
		right: -10px;
		padding: 3px 7px;
		border-radius: 50%;
		background-color: red;
		color: white;
	}
    
    
    /* footer css */
    
    #footer {
    	text-align: left;
        padding: 40px 0;
        border-top: solid 2px black;
        height: 260px;
        clear:both;
    }
    
    .footer-box {
    	display: inline-block;
        vertical-align: top;
       
    }
    
    .fb_title {
    	text-align:left;
    	font-size: 13pt;
        font-weight: bold;
        margin-bottom: 10px;
    }
    
    .fb_content {
    	text-align:left;
        font-size: 9pt;
    }
    
    .fb_content > div {
    	margin: 5px 0;
        color: #999999;
    }
    
    
    #footerDropContent {
    	position: absolute;
        display: none;
        background-color: white;
        list-style: none;
        width: 160px;
        border-top: solid 1px black;
        background-color: #f2f2f2;
    }
    
    #footerDropContent li {
        text-align: left;
        margin:2px 0 2px 20px;
    }
    
    #footerDropContent li a {
    	color: black;
    }
    
    #footerDropMenu:hover #footerDropContent{
    	display: block;
    }
    
    #footer a {
    	cursor: pointer;
    	font-size: 9pt;
        color: #999999;
        text-decoration: none;
    }
    
    #footerDropMenu {
    	border-bottom: solid 1px black;
    }
    
    #fdm_title {
    	font-size:10pt;
        padding-left: 7px;
    }
    
  </style>
  
  <script>
  
  	$(function(){ 
    	
  		changeBasketBadge();
  		
		var nav = $("#navbar").height();
		var header = $("#header").height();
		
		$(window).scroll( function(){ 
			
			if( pageYOffset > nav ){
				$("#header1").css("display","none");
				$("#header2").css("position", "fixed");
               	$("#header2").css("width","100%");
                $("#header2").css("margin","0");
				
			}
			else {
            	$("#header1").css("display","");
				$("#header2").css("position", "relative");
				$("#header2").css("width","");
			}
			
		} ); // end of scroll --------------------------------------------
		
		$("#searchIcon").click(function(){
			
			var searchWord = $("#searchProduct").val();
			
			location.href="<%= request.getContextPath() %>/main/searchMain.dog?searchWord="+searchWord;
			
		});
		
		// 검색창에 엔터 누를 때 검색 되게
		$("#searchProduct").keydown(function(event){
			
			if(event.keyCode == 13){
				$("#searchIcon").trigger("click");
			}
		});
		

    });
  	
  	function goLogout(){
  		
  		location.href= "<%= ctxPath%>/login/logout.dog";
  	}
  	
  	function changeBasketBadge(){
  		
  		$.ajax({
  			  	
        	url:"<%= request.getContextPath()%>/main/basketBadge.dog",
			type: "GET",
			dataType: "json",
               success:function(json){	
               	
               	$("#basketBadge").text(json.count);
               	
 		    },
    		error: function(request, status, error){
 					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
 			}
 		}); 
  	}
  	
  </script>
  
</head>
<body>

<div id="header">
	<div id="header1" >
    	<div class="col-xs-9 col-md-2"></div>
        <div class="col-xs-9 col-md-8">
        	<img width="230" height="65" src="/Semi_Team1/images/header&footer/mainLogo.png" style="margin-top:15px;cursor:pointer;" onclick="javascript:location.href='<%= request.getContextPath()%>/main.dog';">
  			<ul id ="loginBar">
  			
  				<c:if test="${ sessionScope.loginuser == null }">
	  				<li><a href="<%= ctxPath %>/login/login.dog">LOGIN</a></li>
	   				<li><a href="<%= ctxPath %>/register/mainJoinPage.dog">JOIN</a></li>
	  				<li><a href="<%= ctxPath %>/mypage/recentlyOrder.dog">ORDER</a></li>
  				</c:if>
  				<c:if test="${ sessionScope.loginuser != null }">
  					<li><span style="font-weight: bold;">${ sessionScope.loginuser.user_name }</span> 님 환영합니다<li>
  					<li><a href="javascript:goLogout();">LOGOUT</a></li>
  					<li><a href="<%= ctxPath %>/mypage/mypageMain.dog">MYPAGE</a></li>
  				
  				</c:if>
  				
    			<li><a href="<%= ctxPath %>/customer/customerMain.dog">CUSTOMER</a></li>
  			</ul>
        </div>
  		
    </div>  
    
	<div id="header2" class="row">
   		<div class="col-xs-9 col-md-2"></div>	
        <div class="col-xs-9 col-md-8" id="navbar">
        	<div  id="navbarMenu">
            	<ul id="navbarUl">
                	<li style="width:8%;font-weight:bold;font-size:13pt;text-align:center;padding:15px 0;"><img alt="" src="/Semi_Team1/images/header&footer/list.png"></li>
                    <li style="width:10%;font-weight:bold;font-size:13pt;"><a>브랜드</a></li>
                    <li style="width:11%;font-weight:bold;font-size:13pt;"><a href="<%= request.getContextPath() %>/purchase/purchase.dog">구매하기</a></li>
                    <li style="width:10%;font-weight:bold;font-size:13pt;"><a href="<%= request.getContextPath() %>/magazine/cal.dog">매거진</a></li>
                    <li style="width:10%;font-weight:bold;font-size:13pt;"><a href="<%= request.getContextPath() %>/event/event.dog">이벤트</a></li>
                    <li style="width:10%;font-weight:bold;font-size:13pt;text-align:center;"><a>투어신청</a></li>
                    <li style="width:5%;"></li>
                    <li style="width:16%; position:relative; border-bottom:solid 1px black;">
                    	<input id="searchProduct" style="width:80%;" maxlength="20" />
                    	<a id="searchIcon" style="width: 19%;"><img width="23" height="23" src="/Semi_Team1/images/header&footer/search.png" /></a>
                    </li>
                    <li style="width:7%; text-align: end;"><a href="<%= request.getContextPath() %>/main/myPage.dog"><img src="/Semi_Team1/images/header&footer/user_icon1.png"></a></li>
                    <li style="width:7%; text-align: end;"><a href="<%= ctxPath %>/shop/basket.dog" style="padding:0; position: relative;" class="notification"><img alt="장바구니" src="/Semi_Team1/images/header&footer/shopping-cart.png"><span id="basketBadge" class="badge"></span></a></li>
                </ul>
            </div>
            
            <div>
                <ul id="dropContent">
                	<li class="dropCntMenu" style="width:8%;"></li>
                    <li class="dropCntMenu" style="width:10%;">
                    	<ul>
                        	<li><a href="javascript:window.open('https://www.naturalbalance.co.kr/home_nb_mobile/')">네추럴 발란스</a></li>
                            <li><a href="javascript:window.open('https://www.pulmuoneamio.com:8443/index.do')">아미오</a></li>
                            <li><a href="javascript:window.open('http://www.bowwowkr.com/main')">바우와우</a></li>
                            <li><a href="javascript:window.open('https://www.iskhan.co.kr/kor/')">이즈칸</a></li>
                        </ul>
                    </li>
                    <li class="dropCntMenu" style="width:10%;">
                    	<ul>
                        	<li><a href="<%= request.getContextPath() %>/purchase/purchase.dog?sort1=1">브랜드별</a></li>
                            <li><a href="<%= request.getContextPath() %>/purchase/purchase.dog?sort1=6">연령별</a></li>
                            <li><a href="<%= request.getContextPath() %>/purchase/purchase.dog?sort1=0">샘플신청</a></li>
                            <li><a href="<%= request.getContextPath() %>/review/review.dog">상품후기</a></li>
                        </ul>
                    </li>
                    <li class="dropCntMenu" style="width:10%;">
                    	<ul>
                        	<li><a href="<%= request.getContextPath() %>/magazine/cal.dog">칼로리 계산기</a></li>
                            <li><a href="<%= request.getContextPath() %>/magazine/nutrient.dog">영양성분</a></li>
                            <li><a href="<%= request.getContextPath() %>/magazine/ingredient.dog">원료사전</a></li>
                            <li><a href="<%= request.getContextPath() %>/magazine/humanGrage.dog">휴먼 그레이드</a></li>
                            <li><a href="<%= request.getContextPath() %>/magazine/studio.dog">이달의 우수<br>제조시설</a></li>
                            <li><a href="<%= request.getContextPath() %>/magazine/withDog.dog">반려견 동반출근</a></li>
                        </ul>
                    </li>
                    
                    <li class="dropCntMenu" style="width:25%;"></li>
                    <li class="dropCntMenu" style="width:25%;">
                    	<a href=""><img src="/Semi_Team1/images/header&footer/header_additional_ad.png" style="width:100%;height:100%;" /></a>
                    </li>
                </ul>
            </div>
            
		</div>
   
	</div>
  
</div>