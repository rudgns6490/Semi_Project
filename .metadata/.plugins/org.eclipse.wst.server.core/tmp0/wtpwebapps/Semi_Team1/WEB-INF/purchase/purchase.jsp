<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String ctxPath = request.getContextPath(); %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header_dog.jsp"/>
<title>
	<c:if test="${ sort1 == '1' || sort1 == '6' || empty sort1 }">전체보기</c:if>
	<c:if test="${ sort1 == '2' }">네추럴 발란스</c:if>
	<c:if test="${ sort1 == '3' }">아미오</c:if>
	<c:if test="${ sort1 == '4' }">바우와우</c:if>
	<c:if test="${ sort1 == '5' }">이즈칸</c:if>
	<c:if test="${ sort1 == '7' }">퍼피</c:if>
	<c:if test="${ sort1 == '8' }">어덜트</c:if>
	<c:if test="${ sort1 == '9' }">시니어</c:if>
	<c:if test="${ sort1 == '10' }">전연령</c:if>
</title>

<style type="text/css">
@import url(fonts.googleapis.comearlyaccessnanumgothic.css);
	.Ha_a, .Ha_a:hover, .Ha_a:visited, .Ha_a:link {
		text-decoration: none; 
		color: #858585;
	}
	
	.purchaseMenu {

		 display: inline-block;
    	 
	}
	
	.cate2 {
		display: inline-block;
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
  		color: #b3b3b3;
  		font-size: 13px;
  		cursor: pointer;
	}
	
	.cate3 {
		border: solid 1px gray;
		width: 2%;
		text-align: center;
		height: 50px;
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
		font-size: 15px;
    	color: #777;
    	cursor: pointer;
	}
	
	.pageBar {
		clear: both;
		margin: 4% 0;
	}
	
	.Ha_img {
		width:100%;
		height: 20vw;
	}
	
	.Ha_content {
		display: inline-block;
		width: 23.2%;
		border: 1px solid #ebebeb;
		margin-right: 2%;
		float:left;
	}
		
	.prd_name {
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
 	    font-size: 15px;
        color: #1c1c1c; 
	}
	
	.prd_name_margin {
		margin-top: 5%;
	}
	
	.prd_price {
		 color: #000;
   		 font-size: 15px;
  	 	 font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
  	 	 margin-top: 10%;
  	 	 margin-bottom: 10%;
	}

	.Ha_a {
		text-decoration: none; 
		color: #858585;
	}
	
	.Ha_root {
		display: inline-block; 
		font-size: 12px; 
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
		cursor: pointer;
		color: #858585;
	}
	
	.Ha_content_container {
		margin-bottom: 3%;
		display: flex;
		overflow: hidden;
	}
	
	.prd_info {
		text-align: center;
	}
	
	.ha_sort {
		cursor: pointer;
	}	
	
	/* dropdown */
	.cate3_sub_container {
		display: inline-block;
		width: 25%;
		position: absolute;
	}
	
	.active {
		color: black;
		font-weight: bold;
	}
	
	.cate3_sub {
		display: inline-block;
		font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
    	font-size: 13px;
    	color: #787878;
    	width: 50%;
    	margin-top: 2%;
    	cursor: pointer;
	}
	
	/* dropdown end */
	
	.Bin_view {
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		
		var sort2 = "${ sort2 }";
		if(sort2 == '0'){
			$("#sort2_1").addClass("active");
		}
		else if (sort2 == '1'){
			$("#sort2_2").addClass("active");
		}
		else if (sort2 == '2'){
			$("#sort2_3").addClass("active");	
		}
		else if (sort2 == '3'){
			$("#sort2_4").addClass("active");
		}
		
		
		$(".cate3_sub_container").hide();
		
		$(".habin_hover").hover(function(event){
				$(".cate3_sub_container").show();
		} ,function(){
			$(".cate3_sub_container").hide();
		}); 
		
		$(".ha_sort").click(function(event){
			var url = "purchase.dog?sort1="+$(".ha_sort").index(this);
			javascript:location.href=url;
		});
		
		$(".ha_sort2").click(function(event){
			javascript:location.href="purchase.dog?sort1=${sort1}&sort2="+$(".ha_sort2").index(this);
		});
		
		$(".Bin_view").click(function(event){
			javascript:location.href="/Semi_Team1/review/review.dog";
		});
	});
</script>
<div style="width:80%; margin: 0 auto;">
	
	<div style="padding: 20px 0px;">
		<div style="text-align: right;">

			<c:if test="${ sessionScope.loginuser.user_id == 'admin' }">
				<div class="Ha_root" onclick="javascript:location.href='<%= request.getContextPath()%>/purchase/purchaseWrite.dog'">글쓰기 > </div>
			</c:if>			
			<div class="Ha_root" onclick="javascript:location.href='<%= request.getContextPath()%>/main.dog'">홈</div>
			<div class="Ha_root" onclick="javascript:location.href='<%= request.getContextPath()%>/purchase/purchase.dog'"> > 구매하기</div>				
		</div>
		<div style="font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif; font-size: 46px; text-align: center; font-weight: bold;">
			구매하기
		</div>
	</div>
	<div class="habin_hover">
		<div>
			<table style="margin: auto;">
				<tr>
					<td class="cate3 ">브랜드별</td>
					<td class="cate3 ">연령별</td>
					<td class="cate3 ha_sort">샘플신청</td>
					<td class="cate3 Bin_view">상품후기</td>
				</tr>
			</table>
		</div>
		<div style="margin-bottom: 9%;">
			<div class="cate3_sub_container ">
				<div class="cate3_sub ha_sort">-전체보기</div>
				<div class="cate3_sub ha_sort">-네추럴 발란스</div>
				<div class="cate3_sub ha_sort">-아미오</div>
				<div class="cate3_sub ha_sort">-바우와우</div>
				<div class="cate3_sub ha_sort">-이즈칸</div>
			</div>
			<div class="cate3_sub_container " style="margin-left: 20%;">
				<div class="cate3_sub ha_sort">-전체보기</div>
				<div class="cate3_sub ha_sort">-퍼피</div>
				<div class="cate3_sub ha_sort">-어덜트</div>
				<div class="cate3_sub ha_sort">-시니어</div>
				<div class="cate3_sub ha_sort">-전연령</div>
			</div>
		</div>
	</div>
	<div style="text-align: right; margin-bottom: 1%;">
		<div id="sort2_1" class="cate2 ha_sort2">신상품</div>
		<div id="sort2_2" class="cate2 ha_sort2">인기상품</div>
		<div id="sort2_3" class="cate2 ha_sort2">낮은가격</div>
		<div id="sort2_4" class="cate2 ha_sort2">높은가격</div>
	</div>
	<div style="text-align: left;">
		${contents}
	</div>
	<div class="pageBar" style="text-align: center;">
		${pageBar}
	</div>
</div>
					
<jsp:include page="../footer_dog.jsp"/>