<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
   
<jsp:include page="../header_dog.jsp"/> 
    
<title>검색어 [${searchWord }]</title>    

    
<div id="mainSearch_body">

	<div class="div1">Home > 상품 검색 결과 리스트</div>
	<div class="div2">검색</div>
	<div class="div3">
		<div style="outline: none;border:solid 2px black;width: 50%; margin:0 auto; background-color: white;">
			<input type="text" name="searchWord" id="searchWord" >
			<img id="mainSearchBtn" width="28" height="28" style="cursor: pointer;" src="/Semi_Team1/images/header&footer/search.png" >
		</div>
	</div>
	<div class="div4">
		<div style="width:60%;display:inline-block;color:gray;">총 <span style="color:red;font-weight: bold;">${ searchAllPage }</span> 개의 상품이 검색되었습니다.</div>
		<div style="width:39%;display:inline-block;text-align:right;">
			<ul>
				<li class="li_border_right"><a id="searchBy1">신상품순</a></li>
				<li class="li_border_right"><a id="searchBy2">인기상품순</a></li>
				<li class="li_border_right"><a id="searchBy3">낮은가격순</a></li>
				<li><a id="searchBy4">높은가격순</a></li>
			</ul>
		</div>
	</div>
	
	<div id="searchList">
		<c:if test="${ not empty searchList }">
			<c:forEach var="map" items="${ searchList }" varStatus="status">
				
					<c:if test="${ status.count%4 == 0 }">
						<div class="prodList">
							<div class="imageName">
								<a href="<%= request.getContextPath()%>/purchase/purchaseContent.dog?prdcode=${ map.product_code }">
									<img src="<%= request.getContextPath()%>/images/${ map.product_explanation }">
								</a>
							</div>
							<div class="prodName">${ map.product_name }</div>
							<div class="price"><fmt:formatNumber value="${ map.product_price }" pattern="###,###,###"/>원</div>
						</div><br>
					</c:if>
					
					<c:if test="${ status.count%4 != 0 }">
						<div class="prodList">
							<div class="imageName">
								<a href="<%= request.getContextPath()%>/purchase/purchaseContent.dog?prdcode=${ map.product_code }">
									<img src="<%= request.getContextPath()%>/images/${ map.product_explanation }">
								</a>
							</div>
							<div class="prodName">${ map.product_name }</div>
							<div class="price"><fmt:formatNumber value="${ map.product_price }" pattern="###,###,###"/>원</div>
						</div>
					</c:if>
					
			</c:forEach>
		
		</c:if>
	</div>
	
	<div class="div5"> ${ pageBar }</div>

</div>


<jsp:include page="../footer_dog.jsp"/> 

<style>
	
	#mainSearch_body {
		width: 70%;
		margin:0 auto;
		padding: 50px 0;
	}
	
	#searchList {
		text-align: center;
		clear: both;
		border-bottom: solid 2px black;
	}
	
	.prodList {
		display: inline-block;
	    width: 24%;
	    /* border: solid 1px black; */
	    padding: 20px 0;
	}
	
	.imageName{
		
	}
	
	.imageName img {
		width: 80%;
	    height: 200px;
	    margin-top: 20px;
	}
	
	.prodName {
		font-family: 'Nanum Gothic', sans-serif;
	    width: 80%;
	    margin: 10px auto;
	    height: 60px;
	}
	
	.price {
		font-weight: bold;
	    font-size: 14pt;
	    margin: 10px 0;
	}
	
	#searchWord {
		outline: none;
		border:none;
		width: 83%;
		font-weight:bold;
		height: 34px;
	}
	
	.div1{
		color: gray;
	    float: right;
	    font-size: 9pt;
	}
	
	.div2{
		clear: both;
		font-family: 'Nanum Gothic', sans-serif;
		font-weight: bold;
		font-size: 28pt;
		text-align: center;
		padding: 20px 0;
	}
	
	.div3{
		text-align: center;
		padding: 30px 0;
		border: solid 1px #f2f2f2;
		background-color: #f2f2f2;
	}
	
	.div4{
		border-bottom: solid 2px black;
		padding: 30px 0 10px 0;
		font-family: 'Nanum Gothic', sans-serif;
	}
	
	.div4 ul {
		
		list-style-type: none;
	}
	
	.div4 ul li {
		display: inline-block;
		padding: 0 10px;
		cursor: pointer;
	}
	
	
	.div4 ul li a {
		text-decoration: none;
		color: #a6a6a6;
	}
	
	.div5 {
		text-align: center;
		padding: 20px 0;
	}
	
	.searchBy_active {
		font-weight: bold;
		color: black !important;
	}
	
</style>

<script type="text/javascript">

	$(document).ready(function(){
		
		// 신상품순, 인기상품순, 낮은가격순, 높은가격순
		var searchBy = "${ searchBy }";
		$("#searchBy"+searchBy).addClass("searchBy_active");
		
		
		
		
		// 검색어 받아오기
		var initSearchWord = "${ searchWord }";
		$("#searchWord").val(initSearchWord);
		
		// 검색창에 엔터 누를 때 검색 되게
		$("#searchWord").keydown(function(event){
			
			if(event.keyCode == 13){
				$("#mainSearchBtn").trigger("click");
			}
		});
		
		// 검색 버튼 누를 시에
		$("#mainSearchBtn").click(function(){
			
			var searchWord = $("#searchWord").val();
			location.href="<%= request.getContextPath() %>/main/searchMain.dog?currentShowPageNo=1&searchBy=1&searchWord="+searchWord;
			
		});
		
		
		$("#searchBy1").click(function(){
			var searchWord = $("#searchWord").val();
			location.href="searchMain.dog?searchBy=1&searchWord="+searchWord;
		});
		$("#searchBy2").click(function(){
			var searchWord = $("#searchWord").val();
			location.href="searchMain.dog?searchBy=2&searchWord="+searchWord;
		});	
		$("#searchBy3").click(function(){
			var searchWord = $("#searchWord").val();
			location.href="searchMain.dog?searchBy=3&searchWord="+searchWord;
		});
		$("#searchBy4").click(function(){
			var searchWord = $("#searchWord").val();
			location.href="searchMain.dog?searchBy=4&searchWord="+searchWord;
		});
		
		
	});

</script>


   