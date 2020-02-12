<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%String ctxPath = request.getContextPath();%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     

    
<jsp:include page="../header.jsp"></jsp:include> 

	
<style>
	*,
	*:before,
	*:after {
	  -webkit-box-sizing: content-box; 
	     -moz-box-sizing: content-box;
	          box-sizing: content-box;
	}

	div#backbody {                        	    /* 제품목록 body */
		background-color: #f5f5f0;
		font-size: 13pt;
		min-width: 1480px;
		width: 100%;
		padding: 70px  ;
		margin-top: 90px;
	}

	#frame {	                           			/* 전체 div */
		width: 1450px;
		margin: 0 auto;	
		height: 1600px;
		padding: 50px 50px;
		background-color: #fff;
	}
	
	
	#frame2{                               			/* 장바구니 홈>장바구니  */
		border-bottom: solid 1px #e0e0eb;
		padding: 20px 0; 
	} 
	
	
	
	#sidebarmain {   	  /* 왼쪽사이드메뉴바           ---------------------- ↓ ----------*/      
	 	float: left;
	    width: 200px;
	    box-sizing: border-box;
	    padding-right: 50px; 
	    height: 900px;
	    clear: both;
	    margin-bottom: 10px;
	      
	}
	
	#sidebarmain > .sidebar-list {
		padding: 5px 0 20px;
	}
	
	
	
	#sidebarmain > .sidebar-list > li{
		padding: 0 0 15px;
	}
	
	#sidebarmain > .sidebar-list > li > a{
		display: inline-block;
	    position: relative;
	    font-size: 14px;
	    font-weight: 700;
	    letter-spacing: 1px;
	    line-height: normal;
	    margin: 0 0 10px;
	}
	
	#sidebarmain > .sidebar-list > li > a.active{
		color: #ed4c38;
	}
	
	ul#sidebarList{
		padding-inline-start:0px;
		
	}
	
	ul#sidebarList > li > a{
		display: block;
	    padding: 2px 0;
	    font-size: 11px;
	    color: #333;
	    line-height: 18px;
	    text-decoration: none;
	    letter-spacing: 0;
		
	}
	
	ul#sidebarList > li > a > span {     /* 왼쪽사이드메뉴바        -------  ↑  -----------*/  
		display: inline-block;
    	position: relative;
	}
	
	#mainContent{						/* 그룹2 */
		float: left;
	    width: 1120px;
 	    box-sizing: border-box;
 	    display: inline-block;
 	    
	}
	
	#garobar {						 /* 상단바(  홈 > ONLINE STORE) */ 
	                              			
		border-bottom: solid 1px #e0e0eb;
		padding-bottom: 20px;; 
	} 
	

	.home {   /* 홈 > 장바구니 */
		float: right;
		clear: both;
	}
	
	.home2 {   
		float: right;
		clear: both;
	}
 	
 	.garobar2 > span {					/* 상단바(ONLINE STORE) */
	 	color: #323232;
	    font-size: 20px;
	    line-height: 30px;
	    font-weight: 500;
	    font-weight: bold;
    }
    
    #garobar3 {
    display: block;
    }
    
    .registration_product  {        /* 상품진열수( 등록상품 X 개) */
    	
	 /* 	float: right;
		clear: both; */
	}
	
    .count > ol {						/* 상품진열수( 등록상품 X 개) */
    	
    	text-align: left; 
    	
    }   

    
    .listImage > .productImage {   		/*  제품사진리스트    -----↓----- */	
    	width: 365px;
    	height: 320px;   	
    	display: inline-block;
	    margin: 0;	    
	    color: #757575;
	    vertical-align: top;
	    text-align: left;
	    margin-bottom: 60px;
	   
    	
    }    
 	
    .capimg{							/*   제품사진리스트    -----↑-----*/		
    	width: 360px; 
    	height: 240px;
     	
    }
    
	.pagination a {					/* 하단 상품페이지번호                 ---------------------------↓-------- */	
        width: 33px;      
	    color: black;	    
	    padding: 8px 16px;
	    text-decoration: none;
	    transition: background-color .3s;	    
	}

	.pagination {	
		text-align: center;			
	}
	
	#pageBar{
		 display: block;
		text-align: center;	
	}
	#pageBar > a span {
		font-size: 40px;
		
	}
	

</style>

<script>
	
	$(document).ready(function () {
		
		console.log($(".product_class").val());
	
		if(${sort} == '1') {
			$("#option").val('${sort}');
			
		}
		
		
		$("#option").change(function () {
		//	var product_class = $(".product_class").val();
			var sort = $("#option").val();
		//	if ( product_class == "none") {
		//		location.href="/SemiCab/product.ej?sort="+sort;
		//	}
			
			location.href="/SemiCab/product.ej?sort="+sort+"&product_class=${product_class}";
	     			
		});
		
	
	});
	
</script>

	<div id="backbody" >	  
		<div id="frame">
			<form name="ListForm">
				<!-- 왼쪽사이드메뉴바(카테고리리스트) -->							
					   								
					<div id="sidebarmain">
						    <div style="font-weight: bold; margin-bottom:10px; font-size: 15pt;">
						    	<a style="color: red;" class="active" href="/SemiCab/product.ej"> ONLINE STORE </a> 
						    </div>						    

						<ul class="sidebarlist">	
					      <c:forEach var="map" items="${requestScope.categoryList2}">						
								<li>																	
									<ul>
										<li style=" margin-bottom: 10px;">
				      	 		 			<a href="/SemiCab/product.ej?product_class=${map.product_class}">${map.product_name}</a>&nbsp;		      	 
										</li>
									</ul>
								</li>								
					      </c:forEach>
					    </ul>  
					</div>
					
			
			<div id="mainContent">	<!-- mainContent -->	
					
				<!-- 상단바(ONLINE STORE  , 홈 > ONLINE STORE) -->
				<div id="garobar">
						<c:if test="${empty product_class}">
						<%-- <c:if test="${product_class eq null}"> --%>
							<span style="font-size: 16pt; font-weight: bold;">ONLINE STORE</span>			
							<span class="home"> <a class="active" href="/SemiCab/main.ej">홈 </a> 
									    	>   <a class="active" href="/SemiCab/product.ej">ONLINE STORE</a>	
											</span>
													    									   		
						</c:if>					
						<c:if test="${product_class eq 'BC'}">
							<span style="font-size: 16pt; font-weight: bold;">BALL CAP</span>
							<span class="home"> <a class="active" href="/SemiCab/main.ej">홈 </a> 
									    	>   <a class="active" href="/SemiCab/product.ej">ONLINE STORE</a>
										    >   <a class="active" href="/SemiCab/product.ej?product_class=BC">BALL CAP</a>
										    </span>
										    <input type="hidden" value="${product_class}" class="product_class" name="product_class"  />		
						</c:if>	
						<c:if test="${product_class eq 'BH'}">
							<span style="font-size: 16pt; font-weight: bold;">BUCKET HAT</span>
							<span class="home"> 
								<a class="active" href="/SemiCab/main.ej">홈 </a> 
									    	>   <a class="active" href="/SemiCab/product.ej">ONLINE STORE</a>
										    >   <a class="active" href="/SemiCab/product.ej?product_class=BH">BUCKET HAT</a>
											</span>
											<input type="hidden" value="${product_class}" class="product_class" name="product_class" />
						</c:if>	 
						<c:if test="${product_class eq 'COL'}">
							<span style="font-size: 16pt; font-weight: bold;">COLLABORATION</span>
							<span class="home"> <a class="active" href="/SemiCab/main.ej">홈 </a> 
									    	>   <a class="active" href="/SemiCab/product.ej">ONLINE STORE</a>
										    >   <a class="active" href="/SemiCab/product.ej?product_class=COL">COLLABORATION</a>									 
										    </span>
										    <input type="hidden" value="${product_class}" class="product_class" name="product_class" />
						</c:if>	 
						<c:if test="${product_class eq 'ETC'}">
							<span style="font-size: 16pt; font-weight: bold;">ETC</span>
							<span class="home"> <a class="active" href="/SemiCab/main.ej">홈 </a> 
									    	>   <a class="active" href="/SemiCab/product.ej">ONLINE STORE</a>
										    >   <a class="active" href="/SemiCab/product.ej?product_class=ETC">ETC</a>
											</span>
											<input type="hidden" value="${product_class}" name="product_class" />							
						</c:if>	 					
				<span> </span>	<!-- 가로선 -->															
				</div>										
				 <div >
				 	<br/>
				 	
				 	<div class ="count">
				 	
					 	<div>
						 	<!-- 상품진열수( 등록상품 X 개) -->
							<div >
								<span class="registration_product">
							  		<span id="classCount"> 등록상품 <strong> ${totalProduct_class_count} </strong>개 </span>					 
								</span>											
							
							<!--        상품정렬                   -->
							
								<select class="home2" id="option" name="sort" style="height: 30px">
									<option value="1">모든상품 </option>	
									<option value="2">신상품</option>							
									<option value="3">낮은가격순</option>
									<option value="4">높은가격순</option>																			
								</select>
												
							<br/>
									
						    </div>
						</div>	
						<!-- 제품사진리스트 -->
								<div><br/>
								 	<ul class="listImage">	
								 		<c:if test="${not empty requestScope.pvoList}">
									 		<c:forEach var="pvo" items="${requestScope.pvoList}" varStatus="pvocnt">
									 			<li class="productImage">    
												  <div class="capListImage">
												  
												  	  <a href="/SemiCab/detailProduct.ej?num=${pvo.product_num}">
												  	  	<img src="<%=ctxPath %>/img/${pvo.product_img}"  class="capimg"  alt="Image"></a>
												      <p style="font-weight: bold; font-size: 13pt;">${pvo.product_name} (${pvo.color})</p>					      							           	
											      		<c:if test="${pvo.product_cnt == '0'}">
											      			<p style="font-weight: bold; font-size: 13pt;">SOLD OUT</p>
											      		</c:if>
											      		<c:if test="${pvo.product_cnt != '0'}">
											      			<p style="font-weight: bold; font-size: 13pt;"><fmt:formatNumber value="${pvo.price}" pattern="###,###" />원</p>
											      		</c:if>
												  </div>  
												</li>
									 		</c:forEach>
								 		</c:if>
								 	</ul>			
								</div>
							</div>	
						</div>					
					 <div id="pageBar"><strong>${pageBar}</strong></div>			
				</div>
			</form>
	 	</div>
	</div>

<jsp:include page="../footer.jsp"></jsp:include>