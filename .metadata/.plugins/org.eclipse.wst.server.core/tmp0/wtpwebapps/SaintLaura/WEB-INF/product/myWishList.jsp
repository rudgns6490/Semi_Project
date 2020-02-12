<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% String ctxPath = request.getContextPath(); %>    

<jsp:include page="../header.jsp" />


<link rel="stylesheet" href="<%= request.getContextPath()%>/css/myWishList.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>

$(document).ready(function(){
	
	// YSL
	$("#totalYSLCount").hide();
	$("#countYSL").hide();
	
	// "더 로드하기..." 초기갑 호출 
	displayYSL("1");
	
	// "더 로드하기..." 이벤트 등록하기
	$("#btnMoreYSL").bind("click", function(){
		
		if($(this).text() == "처음으로"){
			$("#displayYSL").empty(); // 이미지 지우기
			displayYSL("1");		  // 처음부터
			$(this).text("더보기...");  // 버튼이름바꾸기
		}
		else {
			displayYSL($(this).val());	
		}
		
	});			
	
}); // end of $(document).ready(function(){

// 모든상품 " 더보기 ... " 버튼을 클릭할 때 보여줄 상품의 개수(단위)크기
var lenYSL = 3;
var i = 0;
//컴마 만들어주는 함수
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


// display 할 YSL 상품정보를 추가요청하기 (Ajax 로 처리함)
function displayYSL(start) {
		
	$.ajax({
		url:"<%= ctxPath %>/myWishJSON.ysl", 
		type:"GET", 
		data:{"email":"${(sessionScope.loginuser).email}"
			 ,"start":start
			 ,"len":lenYSL},
		dataType:"json",
		success:function(json){
			//alert("성공"); // json 데이터가 넘어오면 alert
			var html = "";
			
			
			if(json.length == 0) { // 데이터가 존재하지 않는 경우
				
				// YSL 상품결과를 출력하기
				$("#btnMoreYSL").hide();
			
				html += "<div class='wish-contents'>"
	   			      + "	<div style='width: 100%; text-align: center; font-size: 8pt;'><br><br><br><br><br><br><br><br>"
	   			      + "   <a href='/SaintLaura/productList.ysl'><h5>상품보러가기</h5></a><br><br><br><br><br><br></div>"
	   			      + "</div>";
	   			$("#displayYSL").append(html);
				
			}
			else { // 데이터가 존재하는 경우
				$.each(json, function(index, item){
					if((index+1)%3 != 0) {
						html += "<form name='itemFrm'  class='itemline' id='itemFrm'>" 
							  +	"<article class='item'>" 
							  + "<div class='image' >"	
							  + "<a href='/SaintLaura/productDetail.ysl?pnum="+item.pnum+"' style='text-decoration: none;'>"
							  + "<img class='listViewImage mainImage' src='/SaintLaura/images_Product/"+item.pimage1+"' style='width: 300px; height: 440px;'>"
							  + "<img class='listViewImage hoverImage' src='/SaintLaura/images_Product/"+item.pimage2+"' style='width: 300px; height: 440px;' >"
							  + "</div><br>"
							  
 							  + "<div id='infoBox'>"
							  + 	"<div class='info'>"
							  + 		"<span class='info'>"+(item.pname).substr(0,24)+"<br>"+(item.pname).substr(25,43)+"<br>"+(item.pname).substr(44,100)+"</span><br>"
							  +			"<span>컬러 : "+item.pcolor+"</span><br>"
							  + 		"<span class='info'>&#8361; &nbsp;</span>"
							  + 		"<span class='info'>"+numberWithCommas(item.price)+"</span><br>"
							  +         "<span class='value' >(모든 세금과 관세 포함)</span><br><br>"
							  + 	"</div>"
						      + "</div>"
						      + "</a>"
						      +  		"<label class='text-delect' onClick='goDel("+item.wishno+")' >삭제</label>"
						      if ( item.pqty == 0  ) {
						    	  html += "<span style='color: red;'>품절</span>"
						    		    + "<button type='button' class='smh_btn' id='smh_btn' style='color: white;' onClick='soldOut();' >쇼핑백에담기</button>"
								        + "</article><br><br>"
								        + "</form>";
								  	   
						      }
							  else {
								  html += "<button type='button' class='smh_btn' id='smh_btn' style='color: white;' onClick='goCart("+item.pnum+");' >쇼핑백에담기</button>"
							        	+ "</article><br><br>"
							        	+ "</form>";
							  }
							  i++;
					}
					else {
						html += "<form name='itemFrm' class='itemline'>"
							  + "<article class='item'>" 
							  + "<div class='image' >"	
							  + "<a href='/SaintLaura/productDetail.ysl?pnum="+item.pnum+"' style='text-decoration: none;'>"
							  + "<img class='listViewImage mainImage' src='/SaintLaura/images_Product/"+item.pimage1+"' style='width: 300px; height: 440px;'>"
							  + "<img class='listViewImage hoverImage' src='/SaintLaura/images_Product/"+item.pimage2+"' style='width: 300px; height: 440px;' >"
							  + "</div><br>"
							  
 							  + "<div id='infoBox'>"
							  + 	"<div class='info'>"
							  + 		"<span class='info'>"+(item.pname).substr(0,24)+"<br>"+(item.pname).substr(25,43)+"<br>"+(item.pname).substr(44,100)+"</span><br>"
							  +			"<span>컬러 : "+item.pcolor +"</span><br>"
							  + 		"<span class='info'>&#8361; &nbsp;</span>"
							  + 		"<span class='info'>"+numberWithCommas(item.price)+"</span><br>"
							  +         "<span class='value' >(모든 세금과 관세 포함)</span><br><br>"
							  + 	"</div>"
						      + "</div>"
						      + "</a>"
						      +  		"<label class='text-delect' onClick='goDel("+item.wishno+")' >삭제</label>"
						      if ( item.pqty == 0  ) {
						    	  html += "<span style='color: red;'>품절</span>"
						    		    + "<button type='button' class='smh_btn' id='smh_btn' style='color: white;' onClick='soldOut();' >쇼핑백에담기</button>"
								        + "</article><br><br>"
								        + "</form>";
								  	   
						      }
							  else {
								  html += "<button type='button' class='smh_btn' id='smh_btn' style='color: white;' onClick='goCart("+item.pnum+");' >쇼핑백에담기</button>"
							        	+ "</article><br><br>"
							        	+ "</form>";
							  }
							  html += "<br>";
							  i++;
					}
				});
				
				
				//YSL 상품결과를 출력하기
				$("#displayYSL").append(html);
				
				// 수량 숨기기
				$(".pqty").hide();
				
				// hover
				$(".hoverImage").hide();
				$(".item").hover(function () {
		
					$(this).find(".mainImage").css('display','none');
					$(this).find(".hoverImage").css('display','');
					
					}, function () {
					
					$(this).find(".mainImage").css('display','');
					$(this).find(".hoverImage").css('display','none');
				
				});
				
				// 더로드하기... 버튼의 value 속성에 값을 지정하기
				$("#btnMoreYSL").val(parseInt(start)+lenYSL);
				
				// countYSL 에 지금까지 출력된 상품의 개수를 누적해서 기록한다.
				$("#countYSL").text( parseInt($("#countYSL").text()) + json.length );
				
				if( $("#countYSL").text() == $("#totalYSLCount").text() ) {
					$("#displayYSL").hide();
				}
				
			}
		},
		error: function(request, status, error){
			alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
		}
		
	});		
	
}

	//=== 장바구니에서 특정 제품을 비우기 === //  
	function goDel(wishno) {
		
		var $target = $(event.target);
		var bool = confirm( " 삭제 하시겠습니까 ? " );
		
		if(bool) {
			
			$.ajax({
				url:"<%= ctxPath %>/myWishDel.ysl",
				type:"POST",
				data:{"wishno":wishno},
				dataType:"JSON",
				success:function(json){
					
					// 새로고침
					window.location.reload();
				
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
			
		}
		else {
			alert(" 제품 삭제를 취소하셨습니다. ");
		}
		
	}// end of function goDel(cartno)---------------------------

	
	function goDelAll() {
		
		var $target = $(event.target);
		var bool = confirm( " 위시리스트를 [모두]삭제 하시겠습니까 ? " );
		
		if(bool) {
		
			$.ajax({
				url:"<%= ctxPath%>/myWishDelAll.ysl",
				type:"POST",
				data:{"email":"${(sessionScope.loginuser).email}"},
				dataType:"JSON",
				success:function(json){
					
					// 새로고침
					window.location.reload();
				
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
			
		}
		else {
			alert(" 전체삭제하기를 취소하셨습니다. ");
		}
	}
	
	// 쇼핑백으로 추가 
	function goCart(pnum) {
		var oqty = 1;
		var $target = $(event.target);
		var bool = confirm( " 쇼핑백에 담으시겠습니까 ? " );
		
		if(bool) {
		
			$.ajax({
				url:"<%= ctxPath%>/myWishToCartAdd.ysl",
				type:"POST",
				data:{"email":"${(sessionScope.loginuser).email}"
					, "pnum":pnum
					, "oqty":oqty},
				dataType:"JSON",
				success:function(json){

					// 쇼핑백으로 이동
					javascript:location.href="<%= ctxPath%>/cartList.ysl"
				
				},
				error: function(request, status, error){
					alert("code: "+request.status+"\n"+"message: "+request.responseText+"\n"+"error: "+error);
				}
			});
			
		}
		else {
			alert(" 쇼핑백에 담기 를 취소하셨습니다. ");
		}

	}
	
	function soldOut() {
		alert(" 죄송합니다 선택한 제품은 품절 입니다.");
	}
	
</script>


<body>

	<div class="container">
		<div id="displayYSL" ></div>
		<br>
		<div id="moveTable">
			<button type="button" id="btnMoreYSL" value="" class="theload">더 로드하기..</button>
			
			<span id="totalYSLCount">${totalYSLCount}</span>
			<span id="countYSL">0</span><br><br><br>
			<form name="delAllFrm"><button type="button"  id="smh_btn2"  style="color: black; background-color: white;"  onClick="goDelAll()">위시리스트아이템삭제</button></form>
			<input id="spinner"  style="display: none" name="oqty" value="1">
		</div>
	</div>
	<br><br>
	
</body>
</html>